import itertools
import logging
import math
import os
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

from src.utils.profiling import BAPProfiler #!

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
                 profiler: BAPProfiler): #! <-- This argument was missing)
        self.id = next(BranchNode.next_node_id)
        self.jobprp_instance = jobprp_instance
        self.branching_rules = branching_rules
        self.log_directory = log_directory
        self.subproblem_builder = SubproblemBuilder(jobprp_instance, state_space_graph)
        self.profiler = profiler #! <-- ADD THIS LINE
        logging.debug(f"[BranchNode {self.id}] Initialized with orders: {list(self.jobprp_instance.orders.keys())}")
        self.column_index: Dict[int, TBatchColumn] = {}
        self.column_index_to_variable: bidict[int, gp.Var] = bidict()
        self.next_column_index = itertools.count(start=0)
        self._rmp = gp.Model(f'JOBPRP_RMP_{self.id}')
        self.order_partitioning_constraints: Dict[TOrderID, gp.Constr] = {}
        self._init_model(initial_columns)

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
            logging.debug(f"[BranchNode {self.id}] Adding constraint for order {order_id}.")
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

        logging.debug(f"[Node {self.id}] Added column {var_name} with cost {tour_cost:.2f}.")

    def solve(self):
        """
        Solves the LP relaxation of the Restricted Master Problem (RMP).

        This method implements the column generation loop. It repeatedly solves the
        current RMP, extracts the dual values, and calls the pricing subproblem
        to find new columns with negative reduced cost. The loop terminates when
        no such columns can be found, indicating that the LP relaxation for this
        node has been solved to optimality.
        """

        logging.info(f"Starting column generation for Node {self.id}.")
        col_gen_itr = itertools.count(start=1)

        # Create a specific logger for Gurobi's output
        gurobi_logger = logging.getLogger('Gurobi_RMP')

        while True:
            iteration = next(col_gen_itr)
            self._rmp.update()
            lp_filename = os.path.join(self.log_directory, f"RMP_node{self.id}_iter{iteration}.lp")
            self._rmp.write(lp_filename)

            logging.info("-" * 25 + f" Solving RMP (Iter {iteration}) " + "-" * 25)
            #! --- [PROFILING] Time the RMP solve ---
            with self.profiler.time("master"):
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

    def _solve_profitable_sprp_subproblem(self, order_duals: Dict[TOrderID, float], iteration: int) -> List[TBatchColumn]:
        """
        Builds and solves the pricing subproblem to find profitable columns.

        Args:
            order_duals: The dual values from the RMP's constraints.
            iteration: The current column generation iteration number.

        Returns:
            A list of new, profitable columns to be added to the RMP.
        """

        logging.debug(f"[CG] Solving subproblem for node {self.id} at iteration {iteration}")
        #! --- [PROFILING] Time build vs. solve ---
        with self.profiler.time("pricing_build"):
            subproblem = self.subproblem_builder.build(
                order_duals=order_duals, branching_rules=self.branching_rules, node_id=self.id, iteration=iteration,log_directory=self.log_directory)
        with self.profiler.time("pricing_solve"):    
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