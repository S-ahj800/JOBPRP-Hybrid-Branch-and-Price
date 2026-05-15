"""General utilities for numerical operations and Gurobi status checking."""

from typing import Tuple, List
from math import isclose

import numpy as np
import gurobipy as gp

def is_non_zero(value: float, abs_tol: float = 1e-5) -> bool:
    return not isclose(value, 0.0, abs_tol=abs_tol)

def is_integer(value: float, abs_tol: float = 1e-5) -> bool:
    return isclose(value, 0.0, abs_tol=abs_tol) or isclose(value, 1.0, abs_tol=abs_tol)

def has_solution(model_status: int) -> bool:
    return model_status in {gp.GRB.Status.OPTIMAL, gp.GRB.Status.SUBOPTIMAL}