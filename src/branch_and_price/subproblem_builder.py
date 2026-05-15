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
    Constructs the Gurobi model for the Profitable Single Picker Routing Problem (PSPRP).
    """

    def __init__(self, jobprp_instance: JOBPRPInstance, state_space_graph: StateSpaceGraph):
        self.instance = jobprp_instance
        self.graph = state_space_graph

    def build(self,
              order_duals: Dict[TOrderID, float],
              branching_rules: List[BranchingRule],
              node_id: int,
              iteration: int,
              log_directory: str) -> Subproblem:

        model_name = f'subproblem_node{node_id}_iter{iteration}'
        model = gp.Model(model_name)

        model.setParam('Threads', 1)
        model.setParam('Seed', 42)
        model.setAttr(gp.GRB.Attr.ModelSense, gp.GRB.MINIMIZE)
        model.Params.LogToConsole = 0
        model.Params.MIPGap = 0.0

        arc_vars, sku_vars, order_vars = self._build_variables(model, order_duals)
        self._build_constraints(model, arc_vars, sku_vars, order_vars, branching_rules)

        model.update()

        lp_filename = os.path.join(log_directory, f"{model_name}.lp")
        model.write(lp_filename)

        arc_to_var_bidict = bidict({
            (arc['start_node'], arc['end_node']): var
            for arc, var in zip(self.graph.arcs, arc_vars.values())
        })

        return Subproblem(
            model=model,
            order_to_variable=bidict(order_vars),
            arc_to_variable=arc_to_var_bidict,
            order_duals=order_duals
        )

    def _build_variables(self, model: gp.Model, order_duals: Dict[TOrderID, float]):
        # x_e: Binary variable for each arc in the state-space graph.
        arc_costs = [arc['cost'] for arc in self.graph.arcs]
        arc_vars = model.addVars(len(self.graph.arcs), vtype=gp.GRB.BINARY, obj=arc_costs, name="x")

        # y_s: Binary variable indicating if an SKU is collected.
        sku_ids = self.instance.articles.keys()
        sku_vars = model.addVars(sku_ids, vtype=gp.GRB.BINARY, name="y")

        # z_o: Binary variable indicating if an order is included in the batch.
        order_ids = self.instance.orders.keys()
        order_objs = [-order_duals.get(oid, 0.0) for oid in order_ids]
        order_vars = model.addVars(order_ids, vtype=gp.GRB.BINARY, obj=order_objs, name="z")

        return arc_vars, sku_vars, order_vars

    def _build_constraints(self, model: gp.Model, arc_vars, sku_vars, order_vars, branching_rules):
        self._build_flow_conservation_constraints(model, arc_vars)
        self._build_sku_linking_constraints(model, arc_vars, sku_vars)
        self._build_order_linking_constraints(model, sku_vars, order_vars)
        self._build_capacity_constraint(model, order_vars)
        self._build_branching_constraints(model, order_vars, branching_rules)
        self._build_depot_linking_constraint(model, arc_vars)

    def _build_flow_conservation_constraints(self, model: gp.Model, arc_vars):
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
        for sku_id, arcs in self.graph.sku_to_arc_mappings.items():
            if sku_id == -1:  # Skip dummy depot SKU
                continue

            arc_indices = [i for i, a in enumerate(self.graph.arcs) if a in arcs]
            if arc_indices:
                model.addConstr(
                    gp.quicksum(arc_vars[i] for i in arc_indices) >= sku_vars[sku_id],
                    name=f"link_sku_{sku_id}"
                )

    def _build_order_linking_constraints(self, model: gp.Model, sku_vars, order_vars):
        for order in self.instance.orders.values():
            for line in order.order_lines:
                sku_id = line.article.id
                model.addConstr(
                    sku_vars[sku_id] >= order_vars[order.id],
                    name=f"link_order_{order.id}_sku_{sku_id}"
                )

    def _build_capacity_constraint(self, model: gp.Model, order_vars):
        model.addConstr(
            gp.quicksum(order.total_weight * order_vars[order.id] for order in self.instance.orders.values())
            <= self.instance.picker_capacity,
            name="capacity"
        )

    def _build_branching_constraints(self, model: gp.Model, order_vars, branching_rules):
        for i, rule in enumerate(branching_rules):
            if rule.orders_together:
                model.addConstr(order_vars[rule.order1] == order_vars[rule.order2], name=f"branch_together_{i}")
            else:
                model.addConstr(order_vars[rule.order1] + order_vars[rule.order2] <= 1, name=f"branch_apart_{i}")

    def _build_depot_linking_constraint(self, model: gp.Model, arc_vars):
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
