"""Component (ablation) analysis of the hybrid pricing heuristic.

Every run uses the hybrid (Adaptive) algorithm with the exact pricing fallback,
so all variants remain exact; they differ only in the heuristic components:

  full       density ranking + aisle filter + random seed selection (the paper's method)
  no_D       without density ranking
  no_A       without aisle filter
  no_R       without random seed selection (deterministic seeds from the same pool)
  no_DA      without density ranking and without aisle filter

Settings are those of the main experiments: time limit 3600 s, one thread, stopping gap
0 for BAHCECI_ONCAN and 1% for HENN and MUTER_ONCAN.

Usage (from the repository root):
  python experiments/ablation.py --workers 10
  python experiments/ablation.py --workers 10 --plan seeds        # full method with extra seeds
  python experiments/ablation.py --workers 10 --plan sensitivity  # parameter sensitivity (R2-6, R1-2)

The sensitivity plan changes one heuristic parameter at a time around its default (aisle limit
1/3, density factor 1.5/3, seed pool 10%/50%) and reruns the default as the baseline of the same
batch. Its results go to results/ablation/sensitivity_runs.csv and traces_sensitivity_runs/.

Results are appended to results/ablation/ablation_runs.csv (one row per run); finished
runs are skipped, so the command can be restarted after an interruption. The bound
trajectory of every run is written to results/ablation/traces/.
"""

import argparse
import csv
import gzip
import json
import multiprocessing
import os
import sys
import time
import traceback

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, ROOT)

DATA_DIR = os.path.join(ROOT, "data")
MISC_DIR = os.path.join(ROOT, "MISC")
OUT_DIR = os.path.join(ROOT, "results", "ablation")
INSTANCE_FILE = os.path.join(os.path.dirname(os.path.abspath(__file__)), "ablation_instances.csv")

TIME_LIMIT = 3600.0
GAP_TOLERANCE = {"BAHCECI_ONCAN": 0.0, "HENN": 0.01, "MUTER_ONCAN": 0.01}
DATA_FOLDERS = {"BAHCECI_ONCAN": "BahceciOencan", "HENN": "HennWaescher", "MUTER_ONCAN": "Muter"}

VARIANTS = {
    "full": dict(),
    "no_D": dict(density_ranking=False),
    "no_A": dict(aisle_filter=False),
    "no_R": dict(random_seed_selection=False),
    "no_DA": dict(density_ranking=False, aisle_filter=False),
}
EXTRA_SEEDS = [1042, 2042]

SENSITIVITY = {
    "full": dict(),
    "al1": dict(aisle_limit=1),
    "al3": dict(aisle_limit=3),
    "df15": dict(density_factor=1.5),
    "df3": dict(density_factor=3.0),
    "sp10": dict(seed_pool_pct=0.10),
    "sp50": dict(seed_pool_pct=0.50),
}

FIELDS = ["family", "benchmark", "instance", "variant", "seed", "gap_tolerance", "status",
          "time", "time_to_best", "ub", "lb", "gap_pct", "cg_iter", "heur_calls", "exact_calls",
          "heur_hit_pct", "nodes", "heur_time", "exact_time", "wall_clock"]


def load_instances():
    with open(INSTANCE_FILE, newline="") as f:
        return list(csv.DictReader(f))


def resolve(family, name):
    folder = os.path.join(DATA_DIR, DATA_FOLDERS[family])
    for root, _, files in os.walk(folder):
        if name + ".txt" in files:
            return os.path.join(root, name + ".txt")
    raise FileNotFoundError(f"{name}.txt not found in {folder}")


def warm_up_worker():
    """Acquire the Gurobi licence once per worker process, so that the licence check
    (about 2 s with a WLS licence) is not counted in the running time of the first run."""
    import gurobipy as gp
    model = gp.Model()
    model.dispose()


def run_one(task):
    family, benchmark, name, variant, seed, settings, trace_dir = task
    from src.parser.jobprp_data import JOBPRPInstance
    from src.branch_and_price.jobprp_branch_and_price import JOBPRPBranchAndPrice
    from src.branch_and_price.heuristic_config import HeuristicConfig

    row = dict(family=family, benchmark=benchmark, instance=name, variant=variant, seed=seed,
               gap_tolerance=GAP_TOLERANCE[family])
    started = time.time()
    try:
        instance = JOBPRPInstance.from_file(resolve(family, name))
        solver = JOBPRPBranchAndPrice(
            jobprp_instance=instance, time_limit=TIME_LIMIT, enable_heuristic=True,
            gap_tolerance=GAP_TOLERANCE[family],
            heuristic_config=HeuristicConfig(base_seed=seed, **settings),
            record_trace=True)
        solver.solve()
        m = solver.final_metrics
        trace = solver.global_stats.get("trace", [])
        total = float(m["Total CG Iterations"])
        row.update(status="ok", time=m["Total Time"], time_to_best=m["Time to Best"], ub=m["UB"],
                   lb=m["LB"], gap_pct=m["Gap %"], cg_iter=m["Total CG Iterations"],
                   heur_calls=m["Heur Calls"], exact_calls=m["Exact Calls"],
                   heur_hit_pct=f"{100 * m['Heur Calls'] / total:.2f}" if total else "0",
                   nodes=sum(1 for t in trace if t[0] == "node"),
                   heur_time=f"{solver.global_stats.get('Heur_Time', 0.0):.2f}",
                   exact_time=f"{solver.global_stats.get('Exact_Time', 0.0):.2f}")
        os.makedirs(os.path.join(OUT_DIR, trace_dir), exist_ok=True)
        with gzip.open(os.path.join(OUT_DIR, trace_dir, f"{name}__{variant}__{seed}.json.gz"), "wt") as f:
            json.dump(trace, f)
    except Exception as e:
        row.update(status=f"error: {e}")
        traceback.print_exc()
    row["wall_clock"] = f"{time.time() - started:.1f}"
    return row


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--workers", type=int, default=10)
    parser.add_argument("--plan", choices=["variants", "seeds", "all", "sensitivity"], default="all",
                        help="variants: the five variants with seed 42; seeds: 'full' with the extra "
                             "seeds; all: both (default); sensitivity: one-at-a-time parameter study")
    parser.add_argument("--families", nargs="+", choices=list(GAP_TOLERANCE),
                        help="restrict to these benchmark families")
    parser.add_argument("--dry-run", action="store_true", help="list the runs and exit")
    parser.add_argument("--limit", type=int, help="run only the first N pending runs (smoke test)")
    parser.add_argument("--output", help="file name in results/ablation/ (default: ablation_runs.csv, "
                                         "or sensitivity_runs.csv for --plan sensitivity)")
    args = parser.parse_args()

    instances = load_instances()
    if args.families:
        instances = [r for r in instances if r["family"] in args.families]
    for r in instances:
        resolve(r["family"], r["instance"])  # fail early if a file is missing

    output = args.output or ("sensitivity_runs.csv" if args.plan == "sensitivity" else "ablation_runs.csv")
    trace_dir = "traces" if output == "ablation_runs.csv" else "traces_" + os.path.splitext(output)[0]

    tasks = []
    if args.plan in ("variants", "all"):
        tasks += [(r["family"], r["benchmark"], r["instance"], v, 42, VARIANTS[v], trace_dir)
                  for r in instances for v in VARIANTS]
    if args.plan in ("seeds", "all"):
        tasks += [(r["family"], r["benchmark"], r["instance"], "full", s, VARIANTS["full"], trace_dir)
                  for r in instances for s in EXTRA_SEEDS]
    if args.plan == "sensitivity":
        tasks += [(r["family"], r["benchmark"], r["instance"], v, 42, SENSITIVITY[v], trace_dir)
                  for r in instances for v in SENSITIVITY]

    os.makedirs(OUT_DIR, exist_ok=True)
    out_path = os.path.join(OUT_DIR, output)
    done = set()
    if os.path.exists(out_path):
        with open(out_path, newline="") as f:
            done = {(r["instance"], r["variant"], int(r["seed"])) for r in csv.DictReader(f) if r["status"] == "ok"}
    tasks = [t for t in tasks if (t[2], t[3], t[4]) not in done]
    # long runs first so that the short BAHCECI runs fill the remaining capacity
    tasks.sort(key=lambda t: t[0] == "BAHCECI_ONCAN")

    if args.limit:
        tasks = sorted(tasks, key=lambda t: t[0] != "BAHCECI_ONCAN")[:args.limit]
    print(f"{len(done)} runs already finished, {len(tasks)} to go, {args.workers} workers")
    if args.dry_run:
        for t in tasks[:20]:
            print("  ", t[:5])
        return
    if not tasks:
        return

    write_header = not os.path.exists(out_path)
    with open(out_path, "a", newline="") as f, multiprocessing.Pool(args.workers, initializer=warm_up_worker) as pool:
        writer = csv.DictWriter(f, fieldnames=FIELDS)
        if write_header:
            writer.writeheader()
        for i, row in enumerate(pool.imap_unordered(run_one, tasks, chunksize=1), 1):
            writer.writerow(row)
            f.flush()
            print(f"[{i}/{len(tasks)}] {row['instance']} {row['variant']} seed={row['seed']} "
                  f"{row['status']} time={row.get('time')} gap={row.get('gap_pct')}", flush=True)


if __name__ == "__main__":
    main()
