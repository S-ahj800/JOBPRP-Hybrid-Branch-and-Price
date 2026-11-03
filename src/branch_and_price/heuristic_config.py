from dataclasses import dataclass


@dataclass(frozen=True)
class HeuristicConfig:
    """Switches of the pricing heuristic.

    The defaults reproduce the hybrid strategy described in the paper. The
    switches are used for the component (ablation) analysis only; every
    setting keeps the exact pricing fallback, so the algorithm stays exact.

    density_ranking:       rank candidate groups by profit density (dual / weight).
                           If False, candidates are taken in a fixed pseudo-random
                           order, both for the seed pool and for batch expansion.
    aisle_filter:          accept a candidate only if it adds at most 2 new aisles
                           or its density exceeds twice the average. If False, any
                           capacity- and branching-feasible candidate is accepted.
    random_seed_selection: draw the seed of each attempt at random from the top 25%
                           of the candidates. If False, the seeds are taken from the
                           same pool deterministically in turn.
    base_seed:             base value of the per-call random seed.
    aisle_limit:           maximum number of new aisles a candidate may add and still be
                           accepted by the aisle filter.
    density_factor:        a candidate that adds more aisles is still accepted if its profit
                           density exceeds density_factor times the average density.
    seed_pool_pct:         fraction of the ranked candidates from which seeds are drawn.
    """
    density_ranking: bool = True
    aisle_filter: bool = True
    random_seed_selection: bool = True
    base_seed: int = 42
    aisle_limit: int = 2
    density_factor: float = 2.0
    seed_pool_pct: float = 0.25


DEFAULT_HEURISTIC_CONFIG = HeuristicConfig()
