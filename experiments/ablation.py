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
  python experiments/ablation.py --workers 10 --plan seeds     # full method with extra seeds

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

FIELDS = ["family", "benchmark", "instance", "variant", "seed", "gap_tolerance", "status",
          "time", "time_to_best", "ub", "lb", "gap_pct", "cg_iter", "heur_calls", "exact_calls",
          "heur_hit_pct", "nodes", "wall_clock"]


def load_instances():
    with open(INSTANCE_FILE, newline="") as f:
        return list(csv.DictReader(f))


def resolve(family, name):
    folder = os.path.join(DATA_DIR, DATA_FOLDERS[family])
    for root, _, files in os.walk(folder):
        if name + ".txt" in files:
            return os.path.join(root, name + ".txt")
    raise FileNotFoundError(f"{name}.txt not found in {folder}")


def run_one(task):
    family, benchmark, name, variant, seed = task
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
            heuristic_config=HeuristicConfig(base_seed=seed, **VARIANTS[variant]),
            record_trace=True)
        solver.solve()
        m = solver.final_metrics
        trace = solver.global_stats.get("trace", [])
        total = float(m["Total CG Iterations"])
        row.update(status="ok", time=m["Total Time"], time_to_best=m["Time to Best"], ub=m["UB"],
                   lb=m["LB"], gap_pct=m["Gap %"], cg_iter=m["Total CG Iterations"],
                   heur_calls=m["Heur Calls"], exact_calls=m["Exact Calls"],
                   heur_hit_pct=f"{100 * m['Heur Calls'] / total:.2f}" if total else "0",
                   nodes=sum(1 for t in trace if t[0] == "node"))
        os.makedirs(os.path.join(OUT_DIR, "traces"), exist_ok=True)
        with gzip.open(os.path.join(OUT_DIR, "traces", f"{name}__{variant}__{seed}.json.gz"), "wt") as f:
            json.dump(trace, f)
    except Exception as e:
        row.update(status=f"error: {e}")
        traceback.print_exc()
    row["wall_clock"] = f"{time.time() - started:.1f}"
    return row


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--workers", type=int, default=10)
    parser.add_argument("--plan", choices=["variants", "seeds", "all"], default="all",
                        help="variants: the five variants with seed 42; seeds: 'full' with the extra "
                             "seeds; all: both (default)")
    parser.add_argument("--families", nargs="+", choices=list(GAP_TOLERANCE),
                        help="restrict to these benchmark families")
    parser.add_argument("--dry-run", action="store_true", help="list the runs and exit")
    parser.add_argument("--limit", type=int, help="run only the first N pending runs (smoke test)")
    parser.add_argument("--output", default="ablation_runs.csv", help="file name in results/ablation/")
    args = parser.parse_args()

    instances = load_instances()
    if args.families:
        instances = [r for r in instances if r["family"] in args.families]
    for r in instances:
        resolve(r["family"], r["instance"])  # fail early if a file is missing

    tasks = []
    if args.plan in ("variants", "all"):
        tasks += [(r["family"], r["benchmark"], r["instance"], v, 42) for r in instances for v in VARIANTS]
    if args.plan in ("seeds", "all"):
        tasks += [(r["family"], r["benchmark"], r["instance"], "full", s) for r in instances for s in EXTRA_SEEDS]

    os.makedirs(OUT_DIR, exist_ok=True)
    out_path = os.path.join(OUT_DIR, args.output)
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
            print("  ", t)
        return
    if not tasks:
        return

    write_header = not os.path.exists(out_path)
    with open(out_path, "a", newline="") as f, multiprocessing.Pool(args.workers) as pool:
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
