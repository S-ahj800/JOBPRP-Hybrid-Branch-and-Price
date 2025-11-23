from dataclasses import dataclass

@dataclass(frozen=True)
class BranchingRule:
    """
    Represents a branching decision based on the Ryan-Foster scheme for set partitioning.

    This rule enforces that a pair of orders must either appear together in a
    batch or must be in separate batches in a descendant node's solution.

    Attributes:
        order1: The ID of the first order in the pair.
        order2: The ID of the second order in the pair.
        orders_together: If True, the orders must be in the same batch.
                         If False, they must be in different batches.
    """
    order1: int
    order2: int
    orders_together: bool