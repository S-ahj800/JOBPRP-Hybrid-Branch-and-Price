import itertools
from collections import defaultdict
from dataclasses import dataclass, field
from typing import List, Dict, Set, Tuple

from src.parser.jobprp_data import JOBPRPInstance, TArticleID, TAisleID, TCellID
from src.utils.RatliffRosenthalSolver import EquivalenceClass, AisleConfig, CrossoverConfig, TABLE_1_LOGIC, TABLE_2_LOGIC,BASE_CASE_MAPPING

TState = str
TStage = str
TNode = Tuple[TStage, TState]

RR_STATES = sorted([e.value for e in EquivalenceClass])


@dataclass(frozen=True)
class StateSpaceGraph:
    """Represents the complete state-space graph for picker routing."""
    nodes: Set[TNode]
    arcs: List[Dict]
    sku_to_arc_mappings: Dict[TArticleID, List[Dict]] = field(default_factory=dict)
    cross_aisle_arcs: Dict[TArticleID, List[Dict]] = field(default_factory=dict)


class StateSpaceBuilder:
    """
    Constructs the state-space graph required for the pricing subproblem.
    """

    def __init__(self, instance: JOBPRPInstance):
        self.instance = instance
        self._layout = instance.layout
        self._sku_locs_by_aisle: Dict[TAisleID, Dict[TCellID, TArticleID]] = self._map_skus_to_aisles()

        depot_aisle = self._layout.depot_aisle
        if self._layout.depot_location == 'bottom':
            virtual_cell = self._layout.num_cells_per_aisle
            self._sku_locs_by_aisle[depot_aisle][virtual_cell] = -1  # Dummy article ID
        elif self._layout.depot_location == 'top':
            virtual_cell = -1
            self._sku_locs_by_aisle[depot_aisle][virtual_cell] = -1

    def build(self) -> StateSpaceGraph:
        nodes = self._generate_nodes()
        aisle_traversal_arcs = self._generate_aisle_traversal_arcs()
        cross_aisle_arcs = self._generate_cross_aisle_arcs()

        all_arcs = cross_aisle_arcs + aisle_traversal_arcs
        sku_mappings = self._generate_sku_to_arc_mappings(aisle_traversal_arcs)

        return StateSpaceGraph(nodes=nodes, arcs=all_arcs, sku_to_arc_mappings=sku_mappings)

    def _map_skus_to_aisles(self) -> Dict[TAisleID, Dict[TCellID, TArticleID]]:
        mapping = defaultdict(dict)
        for loc in self.instance.sku_locations:
            mapping[loc.aisle][loc.cell] = loc.article_id
        return mapping

    def _generate_nodes(self) -> Set[TNode]:
        nodes: Set[TNode] = set()
        num_aisles = self._layout.num_aisles
        nodes.add(('origin', 'origin')) # Single global origin

        for j in range(num_aisles):
            for state_enum in EquivalenceClass:
                nodes.add((f'{j}-', state_enum.value))
                nodes.add((f'{j}+', state_enum.value))
        nodes.add(('destination', 'destination')) # Single global destination
        return nodes

    def _generate_cross_aisle_arcs(self) -> List[Dict]:
        """Generates arcs for travel between aisles (stages j+ to (j+1)-)."""
        arcs = []
        num_aisles = self._layout.num_aisles
        cost_map = {
            CrossoverConfig.i: 2 * self._layout.distance_aisle_to_aisle,
            CrossoverConfig.ii: 2 * self._layout.distance_aisle_to_aisle,
            CrossoverConfig.iii: 2 * self._layout.distance_aisle_to_aisle,
            CrossoverConfig.iv: 4 * self._layout.distance_aisle_to_aisle,
            CrossoverConfig.v: 0
        }

        for j in range(num_aisles - 1):
            s_plus, s_minus = f'{j}+', f'{j+1}-'
            for start_class, transitions in TABLE_2_LOGIC.items():
                for config, end_class in transitions.items():
                    cost = cost_map.get(config, 0)
                    arcs.append(self._create_arc(s_plus, start_class.value, s_minus, end_class.value, 'cross', cost=cost))

        last_aisle_stage = f'{num_aisles - 1}+'
        final_states = {EquivalenceClass.E01C, EquivalenceClass.ZE1C, EquivalenceClass.EE1C, EquivalenceClass.ZZ1C}

        for state in final_states:
            cost = self._layout.distance_top_or_bottom_to_depot
            arcs.append(self._create_arc(last_aisle_stage, state.value, 'destination', 'destination', 'final', cost=cost))

        return arcs

    def _generate_aisle_traversal_arcs(self) -> List[Dict]:
        arcs = []
        for j in range(self._layout.num_aisles):
            if j == 0:
                s_minus, s_plus = 'origin', '0+'
                start_states = ['origin']
            else:
                s_minus, s_plus = f'{j}-', f'{j}+'
                start_states = RR_STATES

            aisle_cells = sorted(list(self._sku_locs_by_aisle.get(j, {}).keys()))

            for start_state in start_states:
                start_class = EquivalenceClass._value2member_map_.get(start_state) if j > 0 else None
                transitions = TABLE_1_LOGIC.get(start_class, {}) if j > 0 else BASE_CASE_MAPPING  # Use base for j=0

                for config, end_class in transitions.items():
                    if config in [AisleConfig.i, AisleConfig.v, AisleConfig.vi]:
                        arc = self._create_arc(s_minus, start_state, s_plus, end_class.value, config.value, aisle=j)
                        arcs.append(arc)
                    elif config in [AisleConfig.ii, AisleConfig.iii] and aisle_cells:
                        for cell_i in aisle_cells:
                            details = {'i': cell_i}
                            arc = self._create_arc(s_minus, start_state, s_plus, end_class.value, config.value, aisle=j, details=details)
                            arcs.append(arc)
                    elif config == AisleConfig.iv and len(aisle_cells) >= 2:
                        for h, i in itertools.combinations(aisle_cells, 2):  # Assume h < i
                            if h > i: h, i = i, h  # Ensure h < i
                            details = {'h': h, 'i': i}
                            arc = self._create_arc(s_minus, start_state, s_plus, end_class.value, config.value, aisle=j, details=details)
                            arcs.append(arc)
        return arcs

    def _generate_sku_to_arc_mappings(self, arcs: List[Dict]) -> Dict[TArticleID, List[Dict]]:
        sku_map = defaultdict(list)
        for arc in arcs:
            arc_type, aisle = arc.get('type'), arc.get('aisle')
            if aisle is None or arc_type == AisleConfig.vi.value:
                continue

            aisle_skus = self._sku_locs_by_aisle.get(aisle)
            if not aisle_skus:
                continue

            details = arc.get('details', {})
            covered_cells = set()

            if arc_type in [AisleConfig.i.value, AisleConfig.v.value]:
                covered_cells = set(aisle_skus.keys())
            elif arc_type == AisleConfig.ii.value and 'i' in details:
                covered_cells = {c for c in aisle_skus if c <= details['i']}
            elif arc_type == AisleConfig.iii.value and 'i' in details:
                covered_cells = {c for c in aisle_skus if c >= details['i']}
            elif arc_type == AisleConfig.iv.value and 'h' in details and 'i' in details:
                h, i = details['h'], details['i']
                covered_cells = {c for c in aisle_skus if c <= h or c >= i}

            for cell in covered_cells:
                if cell in aisle_skus:
                    sku_map[aisle_skus[cell]].append(arc)
        return sku_map

    def _create_arc(self, s_stage, s_state, e_stage, e_state, type, cost=None, aisle=None, details=None) -> Dict:
        arc = {'start_node': (s_stage, s_state), 'end_node': (e_stage, e_state), 'type': type, 'aisle': aisle, 'details': details or {}}
        arc['cost'] = cost if cost is not None else self._calculate_arc_cost(arc)
        return arc

    def _calculate_arc_cost(self, arc: Dict) -> float:
        arc_type, details = arc['type'], arc['details']
        H = (self._layout.num_cells_per_aisle - 1) * self._layout.distance_cell_to_cell
        v = self._layout.distance_cell_to_cell
        total_aisle_length = H + self._layout.distance_top_to_cell + self._layout.distance_bottom_to_cell

        if arc_type == AisleConfig.i.value: return total_aisle_length
        if arc_type == AisleConfig.v.value: return 2 * total_aisle_length
        if arc_type == AisleConfig.vi.value: return 0.0

        if arc_type == AisleConfig.ii.value: # top(i)
            dist_from_top = details['i'] * v + self._layout.distance_top_to_cell
            return 2 * dist_from_top

        if arc_type == AisleConfig.iii.value: # bottom(i)
            dist_from_top_to_i = details['i'] * v + self._layout.distance_top_to_cell
            dist_from_bottom = total_aisle_length - dist_from_top_to_i
            return 2 * dist_from_bottom

        if arc_type == AisleConfig.iv.value: # gap(h,i)
            skipped_dist = (details['i'] - details['h']) * v
            return (2 * total_aisle_length) - (2 * skipped_dist)

        return 0.0