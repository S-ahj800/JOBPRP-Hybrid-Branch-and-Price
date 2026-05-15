from dataclasses import dataclass

@dataclass(frozen=True)
class BranchingRule:
    """
    Enforces Ryan-Foster branching decisions.
    orders_together: True if orders must be in the same batch, False if they must be separated.
    """
    order1: int
    order2: int
    orders_together: bool