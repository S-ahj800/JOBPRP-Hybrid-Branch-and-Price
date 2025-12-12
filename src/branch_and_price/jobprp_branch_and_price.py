import logging
import time
from typing import List, Optional, Tuple

from src.parser.jobprp_data import JOBPRPInstance, TOrderID
from src.branch_and_price.branch_node import BranchNode
from src.branch_and_price.branching_rule import BranchingRule
from src.utils.state_space_builder import StateSpaceBuilder
from src.branch_and_price.initial_solution_finder import InitialSolutionFinder
from src.utils.logging_utils import write_metrics_to_csv

class JOBPRPBranchAndPrice:
    """
    Manages the Branch and Price solution process for the JOBPRP.

    Attributes:
        instance: The loaded JOBPRP instance data.
        log_directory: Path to the directory for saving log and .lp files.
        state_space_graph: The pre-built graph for picker routing, shared by all nodes.
        best_solution_node: Stores the node that found the best integer solution.
        global_upper_bound: The objective value of the best known integer solution.
        time_limit: The maximum allowed runtime in seconds (default: 3600).
    """

    def __init__(self, jobprp_instance: JOBPRPInstance, log_directory: str, time_limit: float = 3600.0, enable_heuristic: bool = True):
        """
        Initializes the solver.

        Args:
            jobprp_instance: The full JOBPRP instance data.
            log_directory: Path to the directory for saving logs and .lp files.
            time_limit: Maximum runtime in seconds (default: 3600s = 1 hour).
        """

        self.instance = jobprp_instance
        self.log_directory = log_directory
        self.time_limit = time_limit
        self.enable_heuristic = enable_heuristic

        self.global_stats = {
            'Total_CG_Iter': 0,
            'Heur_Calls': 0,
            'Exact_Calls': 0
        }

        self.start_time = time.time()

        logging.info("Building state-space graph ...")
        self.state_space_graph = StateSpaceBuilder(self.instance).build()
        self.best_solution_node: Optional[BranchNode] = None
        self.global_upper_bound: float = float('inf')

    def solve(self):
        """
        Executes the main Branch and Price algorithm loop.
        """

        logging.info(f"[B&P] Starting. Time Limit: {self.time_limit}s. Heuristic: {self.enable_heuristic}")
        start_time = time.time()

        root_node = self._create_root_node()
        queue: List[BranchNode] = [root_node]

        while queue:
            elapsed_time = time.time() - start_time
            if elapsed_time > self.time_limit:
                logging.warning(f"[B&P] Time limit of {self.time_limit}s reached! Terminating search.")
                break

            queue.sort(key=lambda node: (round(node.objective_value(), 4), -node.id), reverse=True)
            current_node = queue.pop()

            logging.info(f"Processing Node {current_node.id} (LB: {current_node.objective_value():.2f}, GUB: {self.global_upper_bound:.2f})")

            current_node.solve()

            # 1. Prune by bound. If the node's LB is worse than the best known solution.
            if current_node.objective_value() >= self.global_upper_bound - 1e-6:
                logging.info(f"Pruning Node {current_node.id} by bound.")
                continue

            # 2. Prune by infeasibility: If the RMP could not be solved
            if not current_node.is_feasible():
                continue

            # 3. Check for integer solution (potential new upper bound).
            if current_node.has_integer_solution():
                logging.info(f"[B&P] Found integer solution at Node {current_node.id}.")
                if current_node.objective_value() < self.global_upper_bound:
                    self.global_upper_bound = current_node.objective_value()
                    self.best_solution_node = current_node
                    logging.info(f"[B&P] New Global Upper Bound: {self.global_upper_bound:.2f}")
                # Fathom by integrality
                continue

            # 4. If fractional and still promising, branch.
            child_nodes = self._branch(current_node)
            if child_nodes:
                queue.extend(child_nodes)

        self._report_final_metrics(queue)

    def _create_root_node(self) -> BranchNode:
        """Creates the root node of the B&P tree."""

        logging.debug("Creating root node...")
        finder = InitialSolutionFinder(self.instance)
        initial_columns = finder.find()

        return BranchNode(
            jobprp_instance=self.instance,
            state_space_graph=self.state_space_graph,
            branching_rules=[],
            initial_columns=initial_columns,
            log_directory=self.log_directory,
            enable_heuristic=self.enable_heuristic,
            global_stats=self.global_stats
        )

    def _branch(self, node: BranchNode) -> Optional[Tuple[BranchNode, BranchNode]]:
        """
        Performs Ryan-Foster branching on a node with a fractional solution.
        """

        orders_to_branch = node.find_orders_to_branch_on()
        if not orders_to_branch:
            return None

        o1, o2 = orders_to_branch
        logging.info(f"Branching on Node {node.id} on orders ({o1}, {o2}).")

        # Create two new branching rules: one for 'apart', one for 'together'
        rule_apart = BranchingRule(order1=o1, order2=o2, orders_together=False)
        rule_together = BranchingRule(order1=o1, order2=o2, orders_together=True)

        parent_columns = node.get_batch_columns()

        # Create child nodes
        child_apart = BranchNode(
            jobprp_instance=self.instance, state_space_graph=self.state_space_graph,
            branching_rules=node.branching_rules + [rule_apart], initial_columns=parent_columns,
            log_directory=self.log_directory, enable_heuristic=self.enable_heuristic, global_stats=self.global_stats
        )

        child_together = BranchNode(
            jobprp_instance=self.instance, state_space_graph=self.state_space_graph,
            branching_rules=node.branching_rules + [rule_together], initial_columns=parent_columns,
            log_directory=self.log_directory, enable_heuristic=self.enable_heuristic, global_stats=self.global_stats
        )

        return (child_apart, child_together)

    def _report_final_metrics(self, open_queue):
        ub = self.global_upper_bound
        if not open_queue: lb = ub
        else:
            lb = min(n.objective_value() for n in open_queue)
            if lb > ub: lb = ub

        is_opt = 1 if (ub < 1e10 and abs(ub - lb) < 1e-4) else 0
        if is_opt: lb = ub

        total_time = time.time() - self.start_time
        gap_pct = ((ub - lb) / lb * 100) if (not is_opt and lb > 1e-6) else 0.0

        total_iter = self.global_stats['Total_CG_Iter']
        heur_calls = self.global_stats['Heur_Calls']
        exact_calls = self.global_stats['Exact_Calls']
        heur_pct = (heur_calls / total_iter * 100) if total_iter > 0 else 0.0

        metrics = {
            "Instance": self.instance.name,
            "#Opt": is_opt,
            "Time": f"{total_time:.2f}",
            "UB": f"{ub:.2f}" if ub < 1e10 else "Inf",
            "LB": f"{lb:.2f}",
            "Gap %": f"{gap_pct:.2f}",
            "Heur Calls": heur_calls,
            "Heur %": f"{heur_pct:.1f}",
            "Exact Calls": exact_calls,
            "Total CG Iterations": total_iter,
            "Total Time": f"{total_time:.2f}"
        }

        self.final_metrics = metrics   # <-- ADD THIS

        logging.info("="*60)
        logging.info(f"FINAL RESULTS FOR {self.instance.name}")
        logging.info("-" * 60)
        for k, v in metrics.items():
            logging.info(f"{k:<20}: {v}")
        logging.info("="*60)