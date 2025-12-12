import logging
import os
from collections import defaultdict
from typing import Dict, List

import gurobipy as gp
from bidict import bidict

from src.branch_and_price.branching_rule import BranchingRule
from src.branch_and_price.subproblem import Subproblem
from src.parser.jobprp_data import JOBPRPInstance, TOrderID
from src.utils.state_space_builder import StateSpaceGraph


class SubproblemBuilder:
    """
    Constructs the Gurobi model for the pricing subproblem.

    The subproblem is the Profitable Single Picker Routing Problem (PSPRP), which
    seeks a batch of orders and a corresponding tour that has the minimum
    possible reduced cost.
    """

    def __init__(self,
                 jobprp_instance: JOBPRPInstance,
                 state_space_graph: StateSpaceGraph):
        """
        Initializes the builder with static instance data and the state-space graph.

        Args:
            jobprp_instance: The full JOBPRP instance data.
            state_space_graph: The pre-built state-space graph for routing.
        """
        self.instance = jobprp_instance
        self.graph = state_space_graph

    def build(self,
              order_duals: Dict[TOrderID, float],
              branching_rules: List[BranchingRule],
              node_id: int,
              iteration: int,
              log_directory: str) -> Subproblem:
        """
        Builds and returns a complete Gurobi model for the subproblem.

        Args:
            order_duals: Dual values from the master problem's order constraints.
            branching_rules: A list of rules to enforce for this B&P node.
            node_id: The ID of the parent B&P node, for logging.
            iteration: The current column generation iteration, for logging.
            log_directory: The path to save the generated .lp file.

        Returns:
            An initialized `Subproblem` object containing the Gurobi model.
        """

        # 1. Initialize Model
        model_name = f'subproblem_node{node_id}_iter{iteration}'
        model = gp.Model(model_name)

        # [DETERMINISM FIX] Lock threads and seed
        model.setParam('Threads', 1)
        model.setParam('Seed', 42)
        
        model.setAttr(gp.GRB.Attr.ModelSense, gp.GRB.MINIMIZE)
        model.Params.LogToConsole = 0
        model.Params.MIPGap = 0.0

        # 2. Build Variables and Constraints
        arc_vars, sku_vars, order_vars = self._build_variables(model, order_duals)
        self._build_constraints(model, arc_vars, sku_vars, order_vars, branching_rules)

        # 3. Update model and return the Subproblem object
        model.update()

        lp_filename = os.path.join(log_directory, f"{model_name}.lp")
        model.write(lp_filename)

        # Convert to bidict here for compatibility with the Subproblem class
        arc_to_var_bidict = bidict({(arc['start_node'], arc['end_node']): var for arc, var in zip(self.graph.arcs, arc_vars.values())})

        return Subproblem(
            model=model,
            order_to_variable=bidict(order_vars),
            arc_to_variable=arc_to_var_bidict,
            order_duals=order_duals
        )

    def _build_variables(self, model: gp.Model, order_duals: Dict[TOrderID, float]):
        """Creates all decision variables (x_e, y_s, z_o) for the subproblem."""

        # x_e: Binary variable for each arc in the state-space graph.
        # Objective coefficient is the tour cost of the arc.
        arc_costs = [arc['cost'] for arc in self.graph.arcs]
        arc_vars = model.addVars(len(self.graph.arcs), vtype=gp.GRB.BINARY, obj=arc_costs, name="x")

        # y_s: Binary variable indicating if an SKU is collected.
        sku_ids = self.instance.articles.keys()
        sku_vars = model.addVars(sku_ids, vtype=gp.GRB.BINARY, name="y")

        # z_o: Binary variable indicating if an order is included in the batch.
        # Objective coefficient is the negative dual value from the master problem.
        order_ids = self.instance.orders.keys()
        order_objs = [-order_duals.get(oid, 0.0) for oid in order_ids]
        order_vars = model.addVars(order_ids, vtype=gp.GRB.BINARY, obj=order_objs, name="z")

        return arc_vars, sku_vars, order_vars

    def _build_constraints(self, model: gp.Model, arc_vars, sku_vars, order_vars, branching_rules):
        """Adds all constraints to the subproblem model."""

        self._build_flow_conservation_constraints(model, arc_vars)
        self._build_sku_linking_constraints(model, arc_vars, sku_vars)
        self._build_order_linking_constraints(model, sku_vars, order_vars)
        self._build_capacity_constraint(model, order_vars)
        self._build_branching_constraints(model, order_vars, branching_rules)
        self._build_depot_linking_constraint(model, arc_vars)

    def _build_flow_conservation_constraints(self, model: gp.Model, arc_vars):
        """Ensures that the selected arcs form a single path from origin to destination."""

        flow_balance = defaultdict(gp.LinExpr)
        for i, arc in enumerate(self.graph.arcs):
            flow_balance[arc['start_node']] += arc_vars[i]
            flow_balance[arc['end_node']] -= arc_vars[i]

        origin_node = ('origin', 'origin')
        destination_node = ('destination', 'destination')

        for node, balance_expr in flow_balance.items():
            if node == origin_node:
                model.addConstr(balance_expr == 1, name="flow_origin")
            elif node == destination_node:
                model.addConstr(balance_expr == -1, name="flow_destination")
            else:
                model.addConstr(balance_expr == 0, name=f"flow_{node[0]}_{node[1]}")

    def _build_sku_linking_constraints(self, model: gp.Model, arc_vars, sku_vars):
        """If an SKU is collected (y_s=1), an arc that covers it must be chosen."""

        for sku_id, arcs in self.graph.sku_to_arc_mappings.items():
            if sku_id == -1:  # Skip dummy depot SKU
                continue
            # Find the indices of the arcs that can pick up this SKU
            arc_indices = [i for i, a in enumerate(self.graph.arcs) if a in arcs]
            if arc_indices:
                model.addConstr(
                    gp.quicksum(arc_vars[i] for i in arc_indices) >= sku_vars[sku_id],
                    name=f"link_sku_{sku_id}"
                )

    def _build_order_linking_constraints(self, model: gp.Model, sku_vars, order_vars):
        """If an order is chosen (z_o=1), all its required SKUs must be collected."""
        for order in self.instance.orders.values():
            for line in order.order_lines:
                sku_id = line.article.id
                model.addConstr(
                    sku_vars[sku_id] >= order_vars[order.id],
                    name=f"link_order_{order.id}_sku_{sku_id}"
                )

    def _build_capacity_constraint(self, model: gp.Model, order_vars):
        """Ensures the total weight of selected orders does not exceed picker capacity."""

        model.addConstr(
            gp.quicksum(order.total_weight * order_vars[order.id] for order in self.instance.orders.values())
            <= self.instance.picker_capacity,
            name="capacity"
        )

    def _build_branching_constraints(self, model: gp.Model, order_vars, branching_rules):
        """Enforces branching decisions from the parent node."""

        for i, rule in enumerate(branching_rules):
            if rule.orders_together:
                model.addConstr(order_vars[rule.order1] == order_vars[rule.order2], name=f"branch_together_{i}")
            else:
                model.addConstr(order_vars[rule.order1] + order_vars[rule.order2] <= 1, name=f"branch_apart_{i}")

    def _build_depot_linking_constraint(self, model: gp.Model, arc_vars):
        """Ensures the path includes a visit to the depot location."""

        depot_sku_id = -1
        if depot_sku_id in self.graph.sku_to_arc_mappings:
            depot_arcs = self.graph.sku_to_arc_mappings[depot_sku_id]
            arc_indices = [i for i, a in enumerate(self.graph.arcs) if a in depot_arcs]
            if arc_indices:
                # This constraint forces the selected path to use an arc that covers the depot
                model.addConstr(
                    gp.quicksum(arc_vars[i] for i in arc_indices) >= 1,
                    name="link_depot"
                )
