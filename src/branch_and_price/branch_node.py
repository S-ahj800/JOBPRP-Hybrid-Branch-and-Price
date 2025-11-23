import itertools
import logging
import math
import os
import random
from collections import defaultdict
from typing import List, Dict, Tuple, Optional, Set
from contextlib import redirect_stdout
import io

import gurobipy as gp
from bidict import bidict

from src.branch_and_price.branching_rule import BranchingRule
from src.parser.jobprp_data import JOBPRPInstance, TOrderID
from src.branch_and_price.subproblem_builder import SubproblemBuilder
from src.utils.state_space_builder import StateSpaceGraph
from src.utils import has_solution, is_integer, is_non_zero
from src.branch_and_price.types import TBatchColumn
from src.utils.logging_utils import StreamToLogger

from src.utils.R_R_DP_Solver import R_and_R_Solver, EquivalenceClass

class BranchNode:
    """
    Represents a single node in the Branch and Price tree.

    Each node manages a Restricted Master Problem (RMP), which is the set
    partitioning formulation of the JOBPRP solved over a subset of all possible
    columns (batches). It controls the column generation loop and provides
    methods to check for integrality and find branching candidates.

    Attributes:
        id (int): A unique identifier for the node.
        objective_value (float): The objective value of the RMP's LP relaxation.
    """
    next_node_id = itertools.count(start=0)

    def __init__(self,
                 jobprp_instance: JOBPRPInstance,
                 state_space_graph: StateSpaceGraph,
                 branching_rules: List[BranchingRule],
                 log_directory: str,
                 initial_columns: List[TBatchColumn]
                 ):
        self.id = next(BranchNode.next_node_id)
        self.jobprp_instance = jobprp_instance
        self.branching_rules = branching_rules
        self.log_directory = log_directory
        self.subproblem_builder = SubproblemBuilder(jobprp_instance, state_space_graph)
        logging.debug(f"[BranchNode {self.id}] Initialized with orders: {list(self.jobprp_instance.orders.keys())}")
        self.column_index: Dict[int, TBatchColumn] = {}
        self.column_index_to_variable: bidict[int, gp.Var] = bidict()
        self.next_column_index = itertools.count(start=0)
        self._rmp = gp.Model(f'JOBPRP_RMP_{self.id}')
        self.order_partitioning_constraints: Dict[TOrderID, gp.Constr] = {}
        self.order_cache = self._build_order_cache()
        self.heuristic_success_count = 0
        self._init_model(initial_columns)

    def _build_order_cache(self) -> Dict[int, Dict]:
            """
            Pre-computes weight and aisle affinity data for all orders.
            This avoids repeated lookups during the heuristic pricing loop.
            """
            cache = {}

            # Pre-map article IDs to their locations for faster lookup
            sku_to_locs = defaultdict(list)
            for loc in self.jobprp_instance.sku_locations:
                sku_to_locs[loc.article_id].append(loc)

            for oid, order in self.jobprp_instance.orders.items():
                involved_aisles = set()
                for line in order.order_lines:
                    # Add all aisles where this SKU is located
                    locs = sku_to_locs.get(line.article.id, [])
                    for loc in locs:
                        involved_aisles.add(loc.aisle)

                cache[oid] = {
                    'weight': order.total_weight,
                    'aisles': involved_aisles
                }
            return cache

    def _calculate_batch_tour_cost(self, batch_ids: List[int]) -> float:
        """
        Calculates the exact tour cost for a specific batch using the R&R DP Solver.
        Reuses the logic from InitialSolutionFinder but for arbitrary batches.
        """
        required_skus = set()
        batch_orders = {}

        # Identify data for the sub-instance
        for oid in batch_ids:
            order = self.jobprp_instance.orders[oid]
            batch_orders[oid] = order
            for line in order.order_lines:
                required_skus.add(line.article.id)

        # Create temporary instance
        temp_instance = JOBPRPInstance(
            name=f"temp_heuristic_{self.id}",
            picker_capacity=self.jobprp_instance.picker_capacity,
            layout=self.jobprp_instance.layout,
            articles={aid: art for aid, art in self.jobprp_instance.articles.items() if aid in required_skus},
            sku_locations=[loc for loc in self.jobprp_instance.sku_locations if loc.article_id in required_skus],
            orders=batch_orders
        )

        # Solve pure routing problem
        solver = R_and_R_Solver(temp_instance)
        dp_table = solver.solve()

        # Extract final cost
        final_stage_key = f"{self.jobprp_instance.layout.num_aisles - 1}+"
        final_stage_data = dp_table.get(final_stage_key, {})

        valid_terminal_states = [
            EquivalenceClass.E01C, EquivalenceClass.ZE1C,
            EquivalenceClass.EE1C, EquivalenceClass.ZZ1C
        ]

        costs = []
        for state in valid_terminal_states:
            val = final_stage_data.get(state.value, {}).get('cost', float('inf'))
            costs.append(val)

        min_cost = min(costs) if costs else float('inf')
        return min_cost

    def _init_model(self, initial_columns: List[TBatchColumn]):
        """Initializes the Gurobi model, constraints, and initial columns."""

        with redirect_stdout(io.StringIO()):
            self._rmp.setParam(gp.GRB.Param.LogToConsole, 0)
            self._rmp.setParam(gp.GRB.Param.DualReductions, 0)
            self._rmp.setAttr(gp.GRB.Attr.ModelSense, gp.GRB.MINIMIZE)

        self._build_constraints()
        self._rmp.update()
        self._add_feasible_initial_columns(initial_columns)

    def _build_constraints(self):
        """Builds the set partitioning constraints for the master problem."""

        num_orders = len(self.jobprp_instance.orders)
        logging.debug(f"[Node {self.id}] Building {num_orders} order partitioning constraints.")

        for order_id in self.jobprp_instance.orders:
            # logging.debug(f"[BranchNode {self.id}] Adding constraint for order {order_id}.")
            self.order_partitioning_constraints[order_id] = self._rmp.addConstr(
                gp.quicksum([]) == 1.0, name=f"order_{order_id}"
            )

    def _add_feasible_initial_columns(self, initial_columns: List[TBatchColumn]):
        """Filters columns based on branching rules and adds them to the RMP."""

        logging.debug(f"[Node {self.id}] Received {len(initial_columns)} initial columns.")
        filtered_columns = self._filter_columns_based_on_branching_rule(self.branching_rules, initial_columns)

        for batch_column in filtered_columns:
            self._add_column_to_rmp(batch_column)

        logging.info(f"[Node {self.id}] RMP initialized with {len(filtered_columns)} columns.")

    @staticmethod
    def _filter_columns_based_on_branching_rule(
        branching_rules: List[BranchingRule], columns: List[TBatchColumn]
    ) -> List[TBatchColumn]:
        """Removes columns that violate the node's branching rules."""

        if not branching_rules:
            return columns
        valid_columns = []
        for batch, cost in columns:
            is_valid = True
            batch_set = set(batch)
            for rule in branching_rules:
                o1_in_batch = rule.order1 in batch_set
                o2_in_batch = rule.order2 in batch_set
                if rule.orders_together and (o1_in_batch != o2_in_batch):
                    is_valid = False
                    break
                if not rule.orders_together and (o1_in_batch and o2_in_batch):
                    is_valid = False
                    break
            if is_valid:
                valid_columns.append((batch, cost))
        return valid_columns

    def _add_column_to_rmp(self, batch_column: TBatchColumn):
        """Adds a single batch column (a new λ variable) to the RMP model."""

        batch_of_orders, tour_cost = batch_column
        internal_column_idx = next(self.next_column_index)
        self.column_index[internal_column_idx] = batch_column
        var_name = f"batch_{'_'.join(str(o) for o in sorted(batch_of_orders))}"
        gurobi_col = gp.Column()
        for order_id in batch_of_orders:
            constr_name = f'order_{order_id}'
            constraint = self._rmp.getConstrByName(constr_name)
            if constraint is None:
                logging.error(f"[BranchNode {self.id}] FATAL: Could not find constraint '{constr_name}' for order {order_id}.")
                raise ValueError(f"Constraint '{constr_name}' not found in the RMP model.")
            gurobi_col.addTerms(1.0, constraint)
        rmp_var = self._rmp.addVar(
            lb=0.0, obj=tour_cost, vtype=gp.GRB.CONTINUOUS,
            name=var_name, column=gurobi_col
        )
        self._rmp.update()
        self.column_index_to_variable[internal_column_idx] = rmp_var

        # logging.debug(f"[Node {self.id}] Added column {var_name} with cost {tour_cost:.2f}.")

    def solve(self):
        """
        Solves the LP relaxation of the Restricted Master Problem (RMP).
        """

        logging.info(f"Starting column generation for Node {self.id}.")
        col_gen_itr = itertools.count(start=1)
        gurobi_logger = logging.getLogger('Gurobi_RMP')

        while True:
            iteration = next(col_gen_itr)
            self._rmp.update()
            # Optional: Write LP for debugging
            # lp_filename = os.path.join(self.log_directory, f"RMP_node{self.id}_iter{iteration}.lp")
            # self._rmp.write(lp_filename)

            # logging.info("-" * 25 + f" Solving RMP (Iter {iteration}) " + "-" * 25)

            with redirect_stdout(StreamToLogger(gurobi_logger, logging.DEBUG)):
                self._rmp.optimize()

            # Log Essential Gurobi Results
            if has_solution(self._rmp.status):
                logging.debug(f"[Node {self.id}, CG Iter {iteration}] RMP solved (Obj: {self._rmp.ObjVal:.2f}).")
            else:
                logging.warning(f"[Node {self.id}, CG Iter {iteration}] RMP became infeasible or unbounded (Status: {self._rmp.status}).")
                break

            try:
                order_duals = {oid: c.Pi for oid, c in self.order_partitioning_constraints.items()}

            except AttributeError:
                logging.warning(f"[Node {self.id}] Could not retrieve dual values. Stopping CG.")
                break

            profitable_columns = self._solve_profitable_sprp_subproblem(order_duals, iteration)

            if not profitable_columns:
                logging.info(f"[CG] Pricing problem found no profitable columns. CG converged on node {self.id}.")
                break

            for col in profitable_columns:
                self._add_column_to_rmp(col)

            logging.info(f"[Node {self.id}, CG Iter {iteration}] Added {len(profitable_columns)} new columns. RMP Obj: {self.objective_value():.2f}.")

        logging.info(f"Column generation finished for Node {self.id}. Final RMP Objective: {self.objective_value():.2f}")
        logging.info(f"  -> Heuristic Pricing used in {self.heuristic_success_count} iterations.")

    def _solve_profitable_sprp_subproblem(self, order_duals: Dict[TOrderID, float], iteration: int) -> List[TBatchColumn]:
        """
        Builds and solves the pricing subproblem to find profitable columns.

        Args:
            order_duals: The dual values from the RMP's constraints.
            iteration: The current column generation iteration number.

        Returns:
            A list of new, profitable columns to be added to the RMP.
        """

        heuristic_columns = []

        # 1. Filter and Sort Orders by (Dual / Weight)
        # We only consider orders with positive duals as candidates to improve the objective
        order_groups = {oid: [oid] for oid in self.jobprp_instance.orders}

        for rule in self.branching_rules:
            if rule.orders_together:
                g1 = order_groups[rule.order1]
                g2 = order_groups[rule.order2]
                if g1 is not g2: # If not already same list object
                    new_group = g1 + g2
                    for oid in new_group:
                        order_groups[oid] = new_group # Point all to new list

        # Get unique groups (leaders)
        unique_groups = []
        seen_leaders = set()
        for oid in self.jobprp_instance.orders:
            leader = order_groups[oid][0] # Use first element as ID
            if leader not in seen_leaders:
                unique_groups.append(order_groups[oid])
                seen_leaders.add(leader)

        # 2. Score Groups
        # Score = Sum(Duals) / Sum(Weights)
        group_candidates = []
        for group in unique_groups:
            g_dual = sum(order_duals.get(oid, 0) for oid in group)
            g_weight = sum(self.order_cache[oid]['weight'] for oid in group)

            # Only consider groups with positive total dual (potential to be profitable)
            if g_dual > 1e-5:
                score = g_dual / g_weight
                group_candidates.append({'group': group, 'weight': g_weight, 'score': score, 'dual': g_dual})

        # Sort candidates
        sorted_candidates = sorted(group_candidates, key=lambda x: x['score'], reverse=True)

        # 3. Heuristic Loop
        num_attempts = 70

        for _ in range(num_attempts):
            current_batch = []
            current_weight = 0.0
            current_aisles = set()

            # A. Seed Selection
            if not sorted_candidates: break
            limit = max(1, len(sorted_candidates) // 3) # Top 33%
            seed = random.choice(sorted_candidates[:limit])

            # Add seed group
            if seed['weight'] <= self.jobprp_instance.picker_capacity:
                current_batch.extend(seed['group'])
                current_weight += seed['weight']
                for oid in seed['group']:
                    current_aisles.update(self.order_cache[oid]['aisles'])

            # B. Smart Construction
            for cand in sorted_candidates:
                # Skip if any order in group is already in batch (check first order is enough)
                if cand['group'][0] in current_batch:
                    continue

                # Check Capacity
                if current_weight + cand['weight'] > self.jobprp_instance.picker_capacity:
                    continue

                # Check 'Separate' Branching Rules
                violated = False
                for rule in self.branching_rules:
                    if not rule.orders_together:
                        # Optimization: Check if rule applies to current batch vs candidate group
                        o1_in_batch = rule.order1 in current_batch
                        o2_in_batch = rule.order2 in current_batch
                        o1_in_cand = rule.order1 in cand['group']
                        o2_in_cand = rule.order2 in cand['group']

                        if (o1_in_batch and o2_in_cand) or (o2_in_batch and o1_in_cand):
                            violated = True
                            break
                if violated:
                    continue

                # Aisle Affinity (Relaxed)
                cand_aisles = set()
                for oid in cand['group']:
                    cand_aisles.update(self.order_cache[oid]['aisles'])

                new_aisles_count = len(cand_aisles - current_aisles)

                accept = False
                # RELAXED LOGIC: Accept up to 2 new aisles, or more if score is very high
                if new_aisles_count <= 2:
                    accept = True
                elif cand['score'] > 2.0: # Example threshold for "Very high value"
                    accept = True

                if accept:
                    current_batch.extend(cand['group'])
                    current_weight += cand['weight']
                    current_aisles.update(cand_aisles)

            # C. Evaluate
            if len(current_batch) > 0:
                # Only run DP if we built something potentially useful
                tour_cost = self._calculate_batch_tour_cost(current_batch)
                if tour_cost != float('inf'):
                    batch_profit = sum(order_duals[oid] for oid in current_batch)
                    reduced_cost = tour_cost - batch_profit

                    if reduced_cost < -1e-5:
                        # Validate again to be safe
                        is_valid = self._filter_columns_based_on_branching_rule(
                            self.branching_rules, [(current_batch, tour_cost)]
                        )
                        if is_valid:
                            heuristic_columns.append((current_batch, tour_cost))
                            self.heuristic_success_count += 1
                            if len(heuristic_columns) >= 5:
                                break

        if heuristic_columns:
            logging.info(f"[CG] Heuristic found {len(heuristic_columns)} profitable columns.")
            return heuristic_columns

        # --- PHASE 2: EXACT FALLBACK (Gurobi) ---
        # ... (Keep your existing Gurobi code here) ...
        logging.info(f"[CG] Heuristic failed. Solving exact subproblem for node {self.id} at iteration {iteration}")
        subproblem = self.subproblem_builder.build(
            order_duals=order_duals, branching_rules=self.branching_rules, node_id=self.id, iteration=iteration,log_directory=self.log_directory)
        subproblem.solve()
        return subproblem.get_profitable_columns(self.subproblem_builder.graph.arcs)

    def is_feasible(self) -> bool:
        """Checks if the RMP has a valid, optimal solution."""

        status = self._rmp.getAttr(gp.GRB.Attr.Status)
        return status in {gp.GRB.Status.OPTIMAL, gp.GRB.Status.SUBOPTIMAL}

    def has_integer_solution(self) -> bool:
        """Checks if the RMP solution is integral within a small tolerance."""

        return all(is_integer(var.x) for var in self._rmp.getVars())

    def find_orders_to_branch_on(self) -> Optional[Tuple[TOrderID, TOrderID]]:
        """
        Finds the best pair of orders to branch on using the Ryan-Foster rule.

        This method calculates the extent to which each pair of orders appears
        together in the fractional solution and selects the pair whose value
        is closest to 0.5, indicating the highest degree of fractional ambiguity.

        Returns:
            A tuple of two order IDs to branch on, or None if no fractional pair exists.
        """

        order_pair_values = defaultdict(float)
        for var in self._rmp.getVars():
            if is_non_zero(var.x):
                column_idx = self.column_index_to_variable.inverse[var]
                batch, _ = self.column_index[column_idx]
                for o1, o2 in itertools.combinations(sorted(batch), 2):
                    order_pair_values[(o1, o2)] += var.x
        most_fractional_pair = None
        min_dist_from_half = float('inf')
        for pair, value in order_pair_values.items():
            if not is_integer(value):
                dist = abs(value - 0.5)
                if dist < min_dist_from_half:
                    min_dist_from_half = dist
                    most_fractional_pair = pair
        return most_fractional_pair

    def get_batch_columns(self) -> List[TBatchColumn]:
        """Returns all columns currently in the master problem."""

        return list(self.column_index.values())

    def report_solution(self):
        logging.info(f"** Fractional solution to RMP on node {self.id}! **")
        logging.info(f"Objective value: {self.objective_value():.2f}")
        for var in self._rmp.getVars():
            if is_non_zero(var.x):
                logging.info(f'  {var.VarName}: {var.X:.4f}')
        logging.info('')

    def report_integer_solution(self):
        """Logs a formatted summary of a final, integer solution."""

        logging.info(f"** Integral solution found at node {self.id}! **")
        logging.info(f"Total Tour Cost: {self.objective_value():.2f}")
        final_batches = []
        for var in self._rmp.getVars():
            if is_non_zero(var.x):
                column_idx = self.column_index_to_variable.inverse[var]
                batch, cost = self.column_index[column_idx]
                final_batches.append({'batch': sorted(batch), 'cost': cost})
        logging.info("Final Batches:")
        for i, batch_info in enumerate(final_batches):
            logging.info(f"  Batch {i+1}: Orders {batch_info['batch']} (Cost: {batch_info['cost']:.2f})")
        logging.info('')

    def objective_value(self) -> float:
        """Returns the objective value of the RMP, or infinity if not optimal."""

        return self._rmp.ObjVal if has_solution(self._rmp.status) else float('inf')