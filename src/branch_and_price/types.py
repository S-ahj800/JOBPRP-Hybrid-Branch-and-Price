"""Defines custom type aliases used throughout the Branch and Price module."""

from typing import List, Tuple
from src.parser.jobprp_data import TOrderID

# A batch is defined as a list of order IDs.
TBatch = List[TOrderID]

# A column in the master problem is a tuple containing:
# 1. A batch of orders (List[TOrderID]).
# 2. The cost of the optimal picker tour for that batch (float).
TBatchColumn = Tuple[TBatch, float]