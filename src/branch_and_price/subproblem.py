import logging
import io
from typing import Dict, List, Optional
from contextlib import redirect_stdout

from bidict import bidict
import gurobipy as gp

from src.utils import is_non_zero, has_solution
from src.branch_and_price.types import TBatchColumn
from src.utils.logging_utils import StreamToLogger

class Subproblem:
    """
    Manages the Gurobi model optimization for the pricing subproblem.
    """
    def __init__(self, model: gp.Model, order_to_variable: bidict, arc_to_variable: bidict, order_duals: Dict):
        self._model = model
        self.order_to_variable = order_to_variable
        self.arc_to_variable = arc_to_variable
        self._objective_value: Optional[float] = None
        self.order_duals = order_duals

    def solve(self):
        logging.debug("[Subproblem] Solving subproblem...")
        gurobi_logger = logging.getLogger('Gurobi_Subproblem')

        with redirect_stdout(io.StringIO()):
            self._model.setParam(gp.GRB.Param.PoolSearchMode, 2)
            self._model.setParam(gp.GRB.Param.PoolSolutions, 50)
            self._model.setParam(gp.GRB.Param.PoolGap, 0.1)

        try:
            with redirect_stdout(StreamToLogger(gurobi_logger, logging.DEBUG)):
                self._model.optimize()

            if has_solution(self._model.status):
                self._objective_value = self._model.ObjVal
                logging.debug(f"Subproblem solved. Reduced Cost: {self._objective_value:.4f}. Solutions in pool: {self._model.SolCount}")
            else:
                self._objective_value = None
                logging.warning(f"Subproblem solved with non-optimal status: {self._model.Status}")

        except gp.GurobiError as e:
            logging.error(f"Gurobi error during subproblem optimization: {e}")
            raise

    def get_profitable_columns(self, graph_arcs: List[Dict] = None) -> List[TBatchColumn]:
        """
        Extracts unique columns with negative reduced cost from the solution pool.
        """

        logging.debug("[Subproblem] Extracting profitable columns...")

        if self._objective_value is None or self._objective_value >= -1e-6:
            logging.debug("[Subproblem] No profitable columns found (objective is non-negative or subproblem is infeasible).")
            return []

        profitable_columns: List[TBatchColumn] = []
        seen_batches = set()
        num_solutions = self._model.SolCount

        logging.debug(f"[Subproblem] Found {num_solutions} solutions in the solution pool.")

        for i in range(num_solutions):
            self._model.setParam(gp.GRB.Param.SolutionNumber, i)
            try:
                selected_orders = [oid for oid, var in self.order_to_variable.items() if is_non_zero(var.Xn)]
                if selected_orders:
                    batch_key = frozenset(selected_orders)
                    if batch_key in seen_batches:
                        continue

                    seen_batches.add(batch_key)
                    duals_for_this_solution = sum(self.order_duals.get(oid, 0.0) for oid in selected_orders)
                    tour_cost = self._model.PoolObjVal + duals_for_this_solution
                    profitable_columns.append((selected_orders, tour_cost))

            except gp.GurobiError as e:
                logging.debug(f"[Subproblem] Could not process solution {i} due to Gurobi error: {e}")

        logging.debug(f"[Subproblem] Found {len(profitable_columns)} profitable columns.")
        return profitable_columns