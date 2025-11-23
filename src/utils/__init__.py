"""Utility functions for numerical comparisons and model status checks."""

from typing import Tuple, List
from math import isclose

import numpy as np
import gurobipy as gp

def is_non_zero(value: float, abs_tol: float = 1e-5) -> bool:
    """Checks if a float value is significantly different from zero."""

    return not isclose(value, 0.0, abs_tol=abs_tol)

def is_integer(value: float, abs_tol: float = 1e-5) -> bool:
    """Checks if a float value is close to an integer (0 or 1)."""

    return isclose(value, 0.0, abs_tol=abs_tol) or isclose(value, 1.0, abs_tol=abs_tol)

def has_solution(model_status: int) -> bool:
    """Checks if a Gurobi model status indicates a valid solution was found."""

    return model_status in {gp.GRB.Status.OPTIMAL, gp.GRB.Status.SUBOPTIMAL}