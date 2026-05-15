import logging
from typing import List, Optional
import math

from src.parser.jobprp_data import JOBPRPInstance, Order
from src.branch_and_price.types import TBatchColumn
from src.utils.RatliffRosenthalSolver import RatliffRosenthalSolver, EquivalenceClass

class InitialSolutionFinder:
    """
    Generates an initial set of columns (singleton batches) using the DP solver.
    Each initial column represents a batch containing exactly one order..
    """

    def __init__(self, jobprp_instance: JOBPRPInstance):
        """Initializes the finder with the instance data."""
        self.full_instance = jobprp_instance
        self.layout = self.full_instance.layout

    def find(self) -> List[TBatchColumn]:
        logging.debug("Generating initial columns (one per order).")
        initial_columns: List[TBatchColumn] = []

        for order in self.full_instance.orders.values():
            logging.debug(f"Finding initial tour for Order {order.id}.")
            tour_cost = self._solve_sprp_for_order(order)

            if tour_cost is not None:
                logging.debug(f"  -> Found initial tour for Order {order.id} with cost {tour_cost:.2f}.")
                initial_columns.append(([order.id], tour_cost))
            else:
                logging.warning(f"  -> No valid tour found for Order {order.id}. This order will not have an initial column.")

        logging.debug(f"Generated {len(initial_columns)} initial singleton columns.")
        return initial_columns

    def _solve_sprp_for_order(self, order: Order) -> Optional[float]:
        required_skus = {line.article.id for line in order.order_lines}

        temp_instance = JOBPRPInstance(
            name=f"temp_instance_for_order_{order.id}",
            picker_capacity=self.full_instance.picker_capacity,
            layout=self.full_instance.layout,
            articles={aid: art for aid, art in self.full_instance.articles.items() if aid in required_skus},
            sku_locations=[loc for loc in self.full_instance.sku_locations if loc.article_id in required_skus],
            orders={order.id: order}
        )

        solver = RatliffRosenthalSolver(temp_instance)
        dp_table = solver.solve()

        # Extract final cost from the last stage of the DP table
        final_stage_key = f"{self.layout.num_aisles - 1}+"
        final_stage_data = dp_table.get(final_stage_key, {})

        valid_terminal_states = [
            EquivalenceClass.E01C, EquivalenceClass.ZE1C,
            EquivalenceClass.EE1C, EquivalenceClass.ZZ1C
        ]
        final_costs = [final_stage_data.get(state.value, {}).get('cost', float('inf')) for state in valid_terminal_states]

        min_cost = min(final_costs) if final_costs else float('inf')

        return min_cost if math.isfinite(min_cost) else None