import argparse
import pandas as pd
import math
from typing import Dict, List
from enum import Enum
from collections import defaultdict

# --- Import the data structures from your custom data parser ---
from src.parser.jobprp_data import JOBPRPInstance

# --- Enums for Type Safety and Readability ---
class EquivalenceClass(str, Enum):
    UU1C = "U,U,1C"
    E01C = "E,0,1C"
    ZE1C = "0,E,1C"
    EE1C = "E,E,1C"
    EE2C = "E,E,2C"
    ZZ0C = "0,0,0C"
    ZZ1C = "0,0,1C"

class AisleConfig(str, Enum):
    i = "i"
    ii = "ii"
    iii = "iii"
    iv = "iv"
    v = "v"
    vi = "vi"

class CrossoverConfig(str, Enum):
    i = "i"
    ii = "ii"
    iii = "iii"
    iv = "iv"
    v = "v"

# --- Constants and Logic Tables for the R&R DP Algorithm ---
CLASSES = list(EquivalenceClass)

TABLE_1_LOGIC = {
    EquivalenceClass.UU1C: {AisleConfig.i: EquivalenceClass.EE1C, AisleConfig.ii: EquivalenceClass.UU1C, AisleConfig.iii: EquivalenceClass.UU1C, AisleConfig.iv: EquivalenceClass.UU1C, AisleConfig.v: EquivalenceClass.UU1C, AisleConfig.vi: EquivalenceClass.UU1C},
    EquivalenceClass.E01C: {AisleConfig.i: EquivalenceClass.UU1C, AisleConfig.ii: EquivalenceClass.E01C, AisleConfig.iii: EquivalenceClass.EE2C, AisleConfig.iv: EquivalenceClass.EE2C, AisleConfig.v: EquivalenceClass.EE1C, AisleConfig.vi: EquivalenceClass.E01C},
    EquivalenceClass.ZE1C: {AisleConfig.i: EquivalenceClass.UU1C, AisleConfig.ii: EquivalenceClass.EE2C, AisleConfig.iii: EquivalenceClass.ZE1C, AisleConfig.iv: EquivalenceClass.EE2C, AisleConfig.v: EquivalenceClass.EE1C, AisleConfig.vi: EquivalenceClass.ZE1C},
    EquivalenceClass.EE1C: {AisleConfig.i: EquivalenceClass.UU1C, AisleConfig.ii: EquivalenceClass.EE1C, AisleConfig.iii: EquivalenceClass.EE1C, AisleConfig.iv: EquivalenceClass.EE1C, AisleConfig.v: EquivalenceClass.EE1C, AisleConfig.vi: EquivalenceClass.EE1C},
    EquivalenceClass.EE2C: {AisleConfig.i: EquivalenceClass.UU1C, AisleConfig.ii: EquivalenceClass.EE2C, AisleConfig.iii: EquivalenceClass.EE2C, AisleConfig.iv: EquivalenceClass.EE2C, AisleConfig.v: EquivalenceClass.EE1C, AisleConfig.vi: EquivalenceClass.EE2C},
    EquivalenceClass.ZZ0C: {AisleConfig.i: EquivalenceClass.UU1C, AisleConfig.ii: EquivalenceClass.E01C, AisleConfig.iii: EquivalenceClass.ZE1C, AisleConfig.iv: EquivalenceClass.EE2C, AisleConfig.v: EquivalenceClass.EE1C, AisleConfig.vi: EquivalenceClass.ZZ0C},
    EquivalenceClass.ZZ1C: {AisleConfig.vi: EquivalenceClass.ZZ1C}
}

TABLE_2_LOGIC = {
    EquivalenceClass.UU1C: {CrossoverConfig.i: EquivalenceClass.UU1C},
    EquivalenceClass.E01C: {CrossoverConfig.ii: EquivalenceClass.E01C, CrossoverConfig.iv: EquivalenceClass.EE2C, CrossoverConfig.v: EquivalenceClass.ZZ1C},
    EquivalenceClass.ZE1C: {CrossoverConfig.iii: EquivalenceClass.ZE1C, CrossoverConfig.iv: EquivalenceClass.EE2C, CrossoverConfig.v: EquivalenceClass.ZZ1C},
    EquivalenceClass.EE1C: {CrossoverConfig.ii: EquivalenceClass.E01C, CrossoverConfig.iii: EquivalenceClass.ZE1C, CrossoverConfig.iv: EquivalenceClass.EE1C, CrossoverConfig.v: EquivalenceClass.ZZ1C},
    EquivalenceClass.EE2C: {CrossoverConfig.iv: EquivalenceClass.EE2C},
    EquivalenceClass.ZZ0C: {CrossoverConfig.v: EquivalenceClass.ZZ0C},
    EquivalenceClass.ZZ1C: {CrossoverConfig.v: EquivalenceClass.ZZ1C}
}

BASE_CASE_MAPPING = {
    AisleConfig.i: EquivalenceClass.UU1C,
    AisleConfig.ii: EquivalenceClass.E01C,
    AisleConfig.iii: EquivalenceClass.ZE1C,
    AisleConfig.iv: EquivalenceClass.EE2C,
    AisleConfig.v: EquivalenceClass.EE1C,
    AisleConfig.vi: EquivalenceClass.ZZ0C
}

class RatliffRosenthalSolver:
    """
    An implementation of the Ratliff & Rosenthal Dynamic Programming algorithm
    for solving the Single Picker Routing Problem (SPRP) in a rectangular warehouse.

    This solver is used by the InitialSolutionFinder to calculate the cost of
    singleton-order batches.
    """

    def __init__(self, instance):
        """
        Initializes the solver for a specific instance.

        Args:
            instance: A JOBPRPInstance, typically a temporary one for a single order.
        """

        self.layout = instance.layout
        self.num_aisles = self.layout.num_aisles
        self.processed_skus = self._process_skus_and_depot(instance)
        self.aisle_costs = self._calculate_aisle_costs()
        self.crossover_costs = self._calculate_crossover_costs()
        self.dp_table = {}


    def _process_skus_and_depot(self, instance) -> Dict[int, List[float]]:
        """
        Processes SKU locations and the depot into a simplified per-aisle picklist.

        Returns:
            A dictionary mapping aisle numbers to a sorted list of pick positions
            (represented as distances from the top of the aisle).
        """

        picklist = {}
        for sku in instance.sku_locations:
            aisle_num = sku.aisle
            distance_from_top = self.layout.distance_top_to_cell + (sku.cell * self.layout.distance_cell_to_cell)
            picklist.setdefault(aisle_num, []).append(distance_from_top)

        # The total length is the distance to the last cell's center plus the distance from there to the bottom edge.
        aisle_length = (self.layout.distance_top_to_cell +
                        ((self.layout.num_cells_per_aisle - 1) * self.layout.distance_cell_to_cell) +
                        self.layout.distance_bottom_to_cell)

        depot_aisle = self.layout.depot_aisle
        depot_distance = 0 if self.layout.depot_location == 'top' else aisle_length
        picklist.setdefault(depot_aisle, []).append(depot_distance)

        for aisle in picklist:
            picklist[aisle] = sorted(list(set(picklist[aisle])))

        return picklist


    def _calculate_aisle_costs(self) -> Dict[int, Dict[str, float]]:
        """Pre-calculates the cost for each of the 6 possible aisle traversal configurations."""

        costs = {j: {} for j in range(self.num_aisles)}
        aisle_length = (self.layout.distance_top_to_cell +
                        ((self.layout.num_cells_per_aisle - 1) * self.layout.distance_cell_to_cell) +
                        self.layout.distance_bottom_to_cell)

        for j in range(self.num_aisles):
            positions = self.processed_skus.get(j, [])

            if not positions:
                costs[j] = {'i': aisle_length, 'ii': 0, 'iii': 0, 'iv': 0, 'v': 2 * aisle_length, 'vi': 0}
                continue

            min_pos_dist, max_pos_dist = positions[0], positions[-1]
            # max_gap = max((positions[i+1] - positions[i] for i in range(len(positions) - 1)), default=0)
            gaps_between_items = [
                positions[i+1] - positions[i] for i in range(len(positions) - 1)
            ]
            all_possible_gaps = [min_pos_dist] + gaps_between_items + [aisle_length - max_pos_dist]
            max_gap = max(all_possible_gaps)

            costs[j] = {
                'i': aisle_length,
                'ii': 2 * max_pos_dist,
                'iii': 2 * (aisle_length - min_pos_dist),
                'iv': (2 * aisle_length) - (2 * max_gap),
                'v': 2 * aisle_length,
                'vi': 0
            }
        return costs

    def _calculate_crossover_costs(self) -> Dict[int, Dict[CrossoverConfig, float]]:
        """Pre-calculates the cost for each of the 5 possible cross-aisle traversal configurations."""

        costs = {j: {} for j in range(self.num_aisles - 1)}
        dist = self.layout.distance_aisle_to_aisle
        for j in range(self.num_aisles - 1):
             costs[j] = {
                 CrossoverConfig.i: 2 * dist,
                 CrossoverConfig.ii: 2 * dist,
                 CrossoverConfig.iii: 2 * dist,
                 CrossoverConfig.iv: 4 * dist,
                 CrossoverConfig.v: 0
             }
        return costs

    def solve(self) -> dict:
        """
        Executes the main DP algorithm to populate the DP table.

        This follows the stage-by-stage calculation:
        1. Base Case: Initialize costs for the first aisle.
        2. Recursion: Iterate through the remaining aisles, calculating costs
           for cross-aisle travel and then for aisle traversal.

        Returns:
            The completed DP table containing the costs and predecessors for each state.
        """

        for j in range(self.num_aisles):
            self.dp_table[f"{j}-"] = {c: {'cost': math.inf} for c in CLASSES}
            self.dp_table[f"{j}+"] = {c: {'cost': math.inf} for c in CLASSES}

        # --- BASE CASE: First Aisle ---
        stage_key = "0+"
        for config, end_class in BASE_CASE_MAPPING.items():
            # Configuration 'vi' (skip) is not allowed if the aisle has items.
            if config == AisleConfig.vi and self.processed_skus.get(0):
                continue

            cost = self.aisle_costs[0][config]
            self.dp_table[stage_key][end_class] = {
                'cost': cost,
                'pred_class': '-',      # No predecessor
                'pred_config': config
            }

        # --- RECURSION: Loop through remaining crossovers and aisles ---
        for j in range(self.num_aisles - 1):
            self._process_crossover(j)
            self._process_aisle(j + 1)

        return self.dp_table

    def _process_aisle(self, j: int) -> None:
        """The recursive step for calculating costs of traversing aisle `j`."""

        pred_stage_data = self.dp_table[f"{j}-"]
        stage_key = f"{j}+"
        for target_class in CLASSES:
            min_cost, best_pred = math.inf, None
            for pred_class, pred_info in pred_stage_data.items():
                if pred_info['cost'] == math.inf or pred_class not in TABLE_1_LOGIC:
                    continue
                for config, end_class in TABLE_1_LOGIC[pred_class].items():
                    if end_class == target_class:
                        if config == AisleConfig.vi and self.processed_skus.get(j):
                            continue
                        current_cost = pred_info['cost'] + self.aisle_costs[j][config]
                        if current_cost < min_cost:
                            min_cost, best_pred = current_cost, {'pred_class': pred_class, 'pred_config': config}
            if min_cost != math.inf:
                self.dp_table[stage_key][target_class] = {'cost': min_cost, **best_pred}

    def _process_crossover(self, j: int) -> None:
        """The recursive step for calculating costs of crossing from aisle `j` to `j+1`."""

        pred_stage_data = self.dp_table[f"{j}+"]
        stage_key = f"{j+1}-"
        for target_class in CLASSES:
            min_cost, best_pred = math.inf, None
            for pred_class, pred_info in pred_stage_data.items():
                if pred_info['cost'] == math.inf or pred_class not in TABLE_2_LOGIC:
                    continue
                for config, end_class in TABLE_2_LOGIC[pred_class].items():
                    if end_class == target_class:
                        current_cost = pred_info['cost'] + self.crossover_costs[j][config]
                        if current_cost < min_cost:
                            min_cost, best_pred = current_cost, {'pred_class': pred_class, 'pred_config': config}
            if min_cost != math.inf:
                self.dp_table[stage_key][target_class] = {'cost': min_cost, **best_pred}

    def display_results_table(self) -> pd.DataFrame:
        """Formats the DP table into a human-readable pandas DataFrame."""

        stages = [f"{j}{s}" for j in range(self.num_aisles) for s in ["-", "+"]]
        df = pd.DataFrame(index=[c.value for c in CLASSES], columns=stages)
        df.index.name = "Equivalence Class"

        for stage_key in stages:
            if stage_key not in self.dp_table:
                continue
            for cls_enum in CLASSES:
                info = self.dp_table[stage_key].get(cls_enum, {'cost': math.inf})
                if info['cost'] != math.inf:
                    pred_val = info.get('pred_class')
                    pred_idx = '-' if pred_val == '-' else (CLASSES.index(pred_val) + 1)
                    config_val = info.get('pred_config', '-').value
                    df.loc[cls_enum.value, stage_key] = f"{round(info['cost'])}, {pred_idx}, {config_val}"

        header_tuples = []
        for stage in stages:
            aisle_num_str = stage.strip('-+')
            stage_type = f"L{aisle_num_str}{'-' if '-' in stage else '+'}"
            header_tuples.append((f'Aisle {int(aisle_num_str) + 1}', stage_type))

        df.columns = pd.MultiIndex.from_tuples(header_tuples)
        return df.fillna('')


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Solve the R&R Order Picking Problem for a given instance file.")

    # Add a required argument for the file path
    parser.add_argument("filepath", help="Path to the instance file (e.g., 'data/instance.txt')")
    args = parser.parse_args()
    file_to_solve = args.filepath

    try:
        instance = JOBPRPInstance.from_file(file_to_solve)
        solver = R_and_R_Solver(instance)
        solver.solve()
        results_dataframe = solver.display_results_table()
        print(results_dataframe.to_string())
    except FileNotFoundError:
        print(f"Error: Instance file not found at '{file_to_solve}'")
        print("Please ensure 'jobprp_data.py' and your instance file are in the correct directory.")
    except Exception as e:
        print(f"An error occurred: {e}")
