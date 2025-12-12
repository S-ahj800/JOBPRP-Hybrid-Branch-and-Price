import itertools
import logging
import math
import random
from collections import defaultdict
from typing import List, Dict, Tuple, Optional
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
                 initial_columns: List[TBatchColumn],
                 enable_heuristic: bool = True,
                 global_stats: Dict = None):

        self.id = next(BranchNode.next_node_id)
        self.jobprp_instance = jobprp_instance
        self.branching_rules = branching_rules
        self.log_directory = log_directory

        # --- CONFIGURATION ---
        self.enable_heuristic = enable_heuristic
        self.global_stats = global_stats if global_stats is not None else defaultdict(int)

        self.subproblem_builder = SubproblemBuilder(jobprp_instance, state_space_graph)

        # DEBUG: Low-level initialization info
        logging.debug(f"[BranchNode {self.id}] Initialized with {len(initial_columns)} initial columns.")

        self.column_index: Dict[int, TBatchColumn] = {}
        self.column_index_to_variable: bidict[int, gp.Var] = bidict()
        self.next_column_index = itertools.count(start=0)

        self._rmp = gp.Model(f'JOBPRP_RMP_{self.id}')

        # [PERFORMANCE SETTINGS]
        self._rmp.setParam('Seed', 42)

        self.order_partitioning_constraints: Dict[TOrderID, gp.Constr] = {}

        self.order_cache = self._build_order_cache()

        self._init_model(initial_columns)

    def _build_order_cache(self) -> Dict[int, Dict]:
            """
            Pre-computes weight and aisle affinity data for all orders.
            This avoids repeated lookups during the heuristic pricing loop.
            """
            if not self.enable_heuristic:
                return {}

            cache = {}

            # Pre-map article IDs to their locations for faster lookup
            sku_to_locs = defaultdict(list)
            for loc in self.jobprp_instance.sku_locations:
                sku_to_locs[loc.article_id].append(loc)

            for oid, order in self.jobprp_instance.orders.items():
                involved_aisles = set()
                for line in order.order_lines:
                    # Add all aisles where this SKU is located
                    for loc in sku_to_locs.get(line.article.id, []):
                        involved_aisles.add(loc.aisle)

                cache[oid] = {'weight': order.total_weight,'aisles': involved_aisles}
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
            batch_orders[oid] = self.jobprp_instance.orders[oid]
            for line in batch_orders[oid].order_lines:
                required_skus.add(line.article.id)

        # Create temporary instance
        temp_instance = JOBPRPInstance(
            name=f"temp_{self.id}",
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
        final_key = f"{self.jobprp_instance.layout.num_aisles - 1}+"
        data = dp_table.get(final_key, {})

        valid_states = [
            EquivalenceClass.E01C, EquivalenceClass.ZE1C,
            EquivalenceClass.EE1C, EquivalenceClass.ZZ1C
        ]

        costs = [data.get(s.value, {}).get('cost', float('inf')) for s in valid_states]
        return min(costs) if costs else float('inf')

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

        for oid in self.jobprp_instance.orders:
            self.order_partitioning_constraints[oid] = self._rmp.addConstr(
                gp.quicksum([]) == 1.0, name=f"order_{oid}"
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
                o1_in = rule.order1 in batch_set
                o2_in = rule.order2 in batch_set

                if rule.orders_together:
                    # Both must be in or both must be out
                    if o1_in != o2_in:
                        is_valid = False; break
                else:
                    # Cannot both be in
                    if o1_in and o2_in:
                        is_valid = False; break
            if is_valid: valid_columns.append((batch, cost))
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
                continue
            gurobi_col.addTerms(1.0, constraint)

        rmp_var = self._rmp.addVar(
            lb=0.0, obj=tour_cost, vtype=gp.GRB.CONTINUOUS,
            name=var_name, column=gurobi_col
        )
        self._rmp.update()
        self.column_index_to_variable[internal_column_idx] = rmp_var

    def solve(self):
        """
        Solves the LP relaxation of the Restricted Master Problem (RMP).
        """

        logging.debug(f"Starting column generation for Node {self.id}.")
        col_gen_itr = itertools.count(start=1)
        gurobi_logger = logging.getLogger('Gurobi_RMP')

        while True:
            iteration = next(col_gen_itr)
            self._rmp.update()

            with redirect_stdout(StreamToLogger(gurobi_logger, logging.DEBUG)):
                self._rmp.optimize()

            # Log Essential Gurobi Results
            if not has_solution(self._rmp.status):
                logging.debug(f"[Node {self.id}] RMP infeasible or unbounded.")
                break

            try:
                order_duals = {oid: c.Pi for oid, c in self.order_partitioning_constraints.items()}

            except AttributeError:
                break

            profitable_columns = self._solve_profitable_sprp_subproblem(order_duals, iteration)

            if not profitable_columns:
                logging.debug(f"[Node {self.id}] CG converged.")
                break

            for col in profitable_columns:
                self._add_column_to_rmp(col)

            logging.debug(f"[Node {self.id}, Iter {iteration}] Added {len(profitable_columns)} columns. LP Obj: {self.objective_value():.2f}")

    def _solve_profitable_sprp_subproblem(self, order_duals: Dict[TOrderID, float], iteration: int) -> List[TBatchColumn]:
        """
        Builds and solves the pricing subproblem to find profitable columns.

        Args:
            order_duals: The dual values from the RMP's constraints.
            iteration: The current column generation iteration number.

        Returns:
            A list of new, profitable columns to be added to the RMP.
        """

        self.global_stats['Total_CG_Iter'] += 1

        # --- PHASE 1: HEURISTIC ---
        if self.enable_heuristic:
            heuristic_cols = self._run_heuristic(order_duals, iteration)
            if heuristic_cols:
                self.global_stats['Heur_Calls'] += 1
                return heuristic_cols

        # --- PHASE 2: EXACT FALLBACK ---
        self.global_stats['Exact_Calls'] += 1
        logging.debug(f"[Node {self.id}] Heuristic failed/disabled. Calling Gurobi.")

        subproblem = self.subproblem_builder.build(
            order_duals, self.branching_rules, self.id, iteration, self.log_directory
        )
        subproblem._model.setParam('Seed', 42)
        subproblem.solve()

        exact_cols = subproblem.get_profitable_columns()
        # Stable sort for consistency
        exact_cols.sort(key=lambda c: (round(c[1], 4), len(c[0]), tuple(sorted(c[0]))))
        return exact_cols

    def _run_heuristic(self, order_duals, iteration):
        """Phase 1: Smart Greedy Heuristic."""

        # Use deterministic seeding logic
        local_seed = 42 + (self.id * 100000) + iteration
        rng = random.Random(local_seed)

        num_orders = len(self.jobprp_instance.orders)

        # --- DYNAMIC PARAMETER TUNING ---
        config = {
            'num_attempts': int(num_orders * 5),
            'max_columns': max(5, int(num_orders // 5)),
            'aisle_limit': 2,
            'seed_limit_pct': 0.25
        }

        # 1. Filter and Sort Orders by (Dual / Weight)
        # We only consider orders with positive duals as candidates to improve the objective
        groups = self._get_unique_groups()
        candidates = []
        for grp in groups:
            duals = sum(order_duals.get(o, 0) for o in grp)
            w = sum(self.order_cache[o]['weight'] for o in grp)
            if duals > 1e-5:
                candidates.append({'grp': grp, 'w': w, 'score': duals/w})

        sorted_cand = sorted(candidates, key=lambda x: (x['score'], x['grp'][0]), reverse=True)
        if not sorted_cand:
            return []

        avg_score = sum(c['score'] for c in sorted_cand) / len(sorted_cand)
        limit = max(1, int(len(sorted_cand) * config['seed_limit_pct']))

        found = []
        for _ in range(config['num_attempts']):
            seed = rng.choice(sorted_cand[:limit])
            curr_b = list(seed['grp'])
            curr_w = seed['w']
            curr_aisles = set()

            for o in curr_b:
                curr_aisles.update(self.order_cache[o]['aisles'])

            for cand in sorted_cand:
                if cand['grp'][0] in curr_b:
                    continue
                if curr_w + cand['w'] > self.jobprp_instance.picker_capacity:
                    continue
                if not self._check_branching_compatible(curr_b, cand['grp']):
                    continue

                c_aisles = set()
                for o in cand['grp']:
                    c_aisles.update(self.order_cache[o]['aisles'])

                accept = False
                if len(c_aisles - curr_aisles) <= config['aisle_limit']:
                    accept = True

                elif cand['score'] > (avg_score * 2):
                    accept = True

                if accept:
                    curr_b.extend(cand['grp'])
                    curr_w += cand['w']
                    curr_aisles.update(c_aisles)

            if curr_b:
                cost = self._calculate_batch_tour_cost(curr_b)
                if cost != float('inf'):
                    rc = cost - sum(order_duals[o] for o in curr_b)
                    if rc < -1e-5:
                        if self._filter_columns_based_on_branching_rule(self.branching_rules, [(curr_b, cost)]):
                            found.append((curr_b, cost))
                            if len(found) >= config['max_columns']:
                                break

        found.sort(key=lambda c: (round(c[1], 4), len(c[0]), tuple(sorted(c[0]))))

        if found:
            logging.debug(f"[CG] Heuristic found {len(found)} columns.")
        return found

    def _get_unique_groups(self):
        """
        Groups orders based on 'Together' branching rules.
        Transitively merges orders that must be in the same batch.
        """
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

        return unique_groups

    def _check_branching_compatible(self, batch, candidate_group):
        """Checks 'Different Batch' rules."""
        for rule in self.branching_rules:
            if not rule.orders_together:
                o1_in = rule.order1 in batch; o2_in = rule.order2 in batch
                c1_in = rule.order1 in candidate_group
                c2_in = rule.order2 in candidate_group
                if (o1_in and c2_in) or (o2_in and c1_in):
                    return False
        return True

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

        vals = defaultdict(float)
        for var in self._rmp.getVars():
            if is_non_zero(var.x):
                c_idx = self.column_index_to_variable.inverse[var]
                batch, _ = self.column_index[c_idx]
                for o1, o2 in itertools.combinations(sorted(batch), 2):
                    vals[(o1, o2)] += var.x
        best = None; min_dist = float('inf')
        for pair, val in sorted(vals.items()):
            if not is_integer(val):
                dist = abs(val - 0.5)
                if dist < min_dist - 1e-6:
                    min_dist = dist; best = pair
        return best

    def get_batch_columns(self) -> List[TBatchColumn]:
        """Returns all columns currently in the master problem."""

        return list(self.column_index.values())

    def report_integer_solution(self):
        """Logs a formatted summary of a final, integer solution."""

        logging.info(f"** Integral solution found at node {self.id}! **")
        logging.info(f"Total Tour Cost: {self.objective_value():.2f}")

    def objective_value(self) -> float:
        """Returns the objective value of the RMP, or infinity if not optimal."""

        return self._rmp.ObjVal if has_solution(self._rmp.status) else float('inf')