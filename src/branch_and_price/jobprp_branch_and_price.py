import logging
from typing import List, Optional, Tuple

from src.parser.jobprp_data import JOBPRPInstance, TOrderID
from src.branch_and_price.branch_node import BranchNode
from src.branch_and_price.branching_rule import BranchingRule
from src.utils.state_space_builder import StateSpaceBuilder
from src.branch_and_price.initial_solution_finder import InitialSolutionFinder

from src.config import PROFILING_ENABLED
from src.utils.profiling import BAPProfiler

class JOBPRPBranchAndPrice:
    """
    Manages the Branch and Price solution process for the JOBPRP.

    This class initializes the algorithm, builds the static state-space graph,
    and manages the branch-and-bound tree search. It uses a best-bound search
    strategy, always processing the node with the most promising lower bound.

    Attributes:
        instance: The loaded JOBPRP instance data.
        log_directory: Path to the directory for saving log and .lp files.
        state_space_graph: The pre-built graph for picker routing, shared by all nodes.
        best_solution_node: Stores the node that found the best integer solution.
        global_upper_bound: The objective value of the best known integer solution.
    """

    def __init__(self, jobprp_instance: JOBPRPInstance, log_directory: str):
        """
        Initializes the solver.

        Args:
            jobprp_instance: The full JOBPRP instance data.
            log_directory: Path to the directory for saving logs and .lp files.
        """

        self.instance = jobprp_instance
        self.log_directory = log_directory

        # The state-space graph is static and is created only once.
        logging.info("Building state-space graph for picker routing...")
        self.state_space_graph = StateSpaceBuilder(self.instance).build()
        logging.info("State-space graph built successfully.")

        self.best_solution_node: Optional[BranchNode] = None
        self.global_upper_bound: float = float('inf')

        #! --- [PROFILING] Define a placeholder for the profiler ---
        self.profiler: BAPProfiler = None # type: ignore

    def solve(self):
        """
        Executes the main Branch and Price algorithm loop.

        This method implements a best-bound search. It maintains a priority queue
        of open nodes, always selecting the one with the lowest objective value
        (lower bound) to process next. The search terminates when the queue is empty.
        """
        #! --- [PROFILING] Initialize the profiler for this run ---
        self.profiler = BAPProfiler(enabled=PROFILING_ENABLED, time_limit=3600.0)
        logging.info(f"Starting Branch and Price. Profiling is {'ENABLED' if self.profiler.enabled else 'DISABLED'}.")

        logging.debug("[B&P] Starting Branch and Price Algorithm.")
        root_node = self._create_root_node()

        queue: List[BranchNode] = [root_node]

        while queue:
            #! --- [PROFILING] Check for 3600-second time limit ---
            if self.profiler.check_time_limit():
                logging.warning(f"Time limit of {self.profiler.time_limit}s reached. Terminating algorithm early.")
                self.profiler.best_solution_at_stop = self.global_upper_bound
                break # <-- Cleanly exit the loop

            # Best-Bound Search: Sort the queue to pick the node with the lowest objective value.
            queue.sort(key=lambda node: node.objective_value(), reverse=True)
            current_node = queue.pop()

            #! --- [PROFILING] Count the node being processed ---
            self.profiler.increment_node_processed()

            logging.info(f"Processing Node {current_node.id} (LB: {current_node.objective_value():.2f}, GUB: {self.global_upper_bound})")

            current_node.solve()
            # 1. Prune by bound. If the node's LB is worse than the best known solution.
            if current_node.objective_value() >= self.global_upper_bound:
                logging.info(f"Pruning Node {current_node.id} by bound (LB {current_node.objective_value():.2f} >= GUB {self.global_upper_bound:.2f}).")
                continue

            # 2. Prune by infeasibility: If the RMP could not be solved
            if not current_node.is_feasible():
                logging.info(f"[B&P] Pruning Node {current_node.id} (infeasible RMP).")
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

            #! --- [PROFILING] Time the branching logic ---
            with self.profiler.time("branching"):
                child_nodes = self._branch(current_node) # _branch will also use self.profiler

            # 4. If fractional and still promising, branch.
            child_nodes = self._branch(current_node)
            if child_nodes:
                #! --- [PROFILING] Count newly created nodes ---
                self.profiler.increment_nodes_created(2)

                child1, child2 = child_nodes
                queue.append(child1)
                queue.append(child2)

        # --- Final Report ---
        logging.info("=" * 60)
        if self.best_solution_node:
            logging.info("Branch and Price finished. Best integer solution found:")
            self.best_solution_node.report_integer_solution()
        else:
            logging.info("Branch and Price finished. No feasible integer solution found.")

        #! --- [PROFILING] Log the final performance report ---
        logging.info(self.profiler.get_report())

    def _create_root_node(self) -> BranchNode:
        """Creates the root node of the B&P tree."""

        logging.info("Creating root node...")
        finder = InitialSolutionFinder(self.instance)
        initial_columns = finder.find()

        logging.info(f"Generated {len(initial_columns)} initial columns (singleton batches).")

        root_node = BranchNode(
            jobprp_instance=self.instance,
            state_space_graph=self.state_space_graph,
            branching_rules=[],
            initial_columns=initial_columns,
            log_directory=self.log_directory,
            profiler=self.profiler #! <-- Pass the profiler
        )
        logging.info(f"Root node (ID: {root_node.id}) created successfully.")
        return root_node

    def _branch(self, node: BranchNode) -> Optional[Tuple[BranchNode, BranchNode]]:
        """
        Performs Ryan-Foster branching on a node with a fractional solution.

        Args:
            node: The `BranchNode` with a fractional RMP solution.

        Returns:
            A tuple containing the two new child nodes, or None if no branching
            candidate could be found.
        """

        orders_to_branch = node.find_orders_to_branch_on()
        if not orders_to_branch:
            logging.warning(f"Node {node.id} is fractional but no branching candidate found. Pruning.")
            return None

        o1, o2 = orders_to_branch
        logging.info(f"Branching on Node {node.id} on orders ({o1}, {o2}).")

        # Create two new branching rules: one for 'apart', one for 'together'
        rule_apart = BranchingRule(order1=o1, order2=o2, orders_together=False)
        rule_together = BranchingRule(order1=o1, order2=o2, orders_together=True)

        parent_rules = node.branching_rules
        parent_columns = node.get_batch_columns()

        # Create child nodes, inheriting rules and columns from the parent
        child_apart = BranchNode(
            jobprp_instance=self.instance, state_space_graph=self.state_space_graph,
            branching_rules=parent_rules + [rule_apart], initial_columns=parent_columns,
            log_directory=self.log_directory,
            profiler=self.profiler #! <-- Pass the profiler
        )

        child_together = BranchNode(
            jobprp_instance=self.instance, state_space_graph=self.state_space_graph,
            branching_rules=parent_rules + [rule_together], initial_columns=parent_columns,
            log_directory=self.log_directory,
            profiler=self.profiler #! <-- Pass the profiler
        )

        logging.info(f"  -> Created child node {child_apart.id} (orders ({o1}, {o2}) must be separate)")
        logging.info(f"  -> Created child node {child_together.id} (orders ({o1}, {o2}) must be together)")

        return (child_apart, child_together)
