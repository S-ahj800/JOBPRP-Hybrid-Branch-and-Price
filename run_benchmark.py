import pandas as pd
import os
import sys
import logging
import argparse
import multiprocessing
import traceback
import time

# Configuration paths
PROJECT_ROOT = os.path.dirname(os.path.abspath(__file__))

if PROJECT_ROOT not in sys.path:
    sys.path.append(PROJECT_ROOT)

DATA_DIR = os.path.join(PROJECT_ROOT, 'data')
RESULTS_DIR = os.path.join(PROJECT_ROOT, 'results')

BENCHMARK_CSVS = [
    "Benchmark1_Small.csv",
    "Benchmark2_Small.csv",
    "Benchmark2_Medium.csv",
    "Benchmark2_Large.csv",
    "Benchmark3_Small.csv",
    "Benchmark3_Medium.csv",
    "Benchmark3_Large.csv",
]

def benchmark_worker(task_args):
    """
    Executes the solver for a single benchmark instance.
    """
    row_data, full_path, root_path, gap_tolerance = task_args

    if root_path not in sys.path:
        sys.path.append(root_path)

    f_name = row_data.get('filename', 'Unknown')
    instance_name = os.path.splitext(os.path.basename(full_path))[0]

    print(f"[*] Starting instance: {instance_name}", flush=True)

    try:
        from src.parser.jobprp_data import JOBPRPInstance
        from src.branch_and_price.jobprp_branch_and_price import JOBPRPBranchAndPrice

        def run_solve(path, use_heur):
            try:
                instance = JOBPRPInstance.from_file(path)

                solver = JOBPRPBranchAndPrice(
                    jobprp_instance=instance,
                    time_limit=3600.0,
                    enable_heuristic=use_heur,
                    gap_tolerance=gap_tolerance
                )

                if hasattr(solver, 'model') and solver.model:
                     try: solver.model.setParam("Threads", 1)
                     except: pass

                solver.solve()
                res = getattr(solver, 'final_metrics', {})

                return res
            except Exception as inner_e:
                print(f"    ⚠️ Error in solver execution for {path}: {inner_e}")
                traceback.print_exc()
                return {}

        v_metrics = run_solve(full_path, False)
        a_metrics = run_solve(full_path, True)

        def get_val(m, k, d=0.0):
            try:
                return float(m.get(k, d))
            except:
                return d

        v_exact = get_val(v_metrics, 'Exact Calls')
        v_heur = get_val(v_metrics, 'Heur Calls')
        v_total = v_exact + v_heur
        v_opt = v_metrics.get('#Opt', 0)
        v_gap = v_metrics.get('Gap %', '-')

        # Adaptive Stats
        a_exact = get_val(a_metrics, 'Exact Calls')
        a_heur = get_val(a_metrics, 'Heur Calls')
        a_total = a_exact + a_heur
        a_opt = a_metrics.get('#Opt', 0)
        a_gap = a_metrics.get('Gap %', '-')

        heur_pct = round((a_heur / a_total) * 100, 2) if a_total > 0 else 0.0

        result_dict = {
            'Benchmark_set': row_data.get('benchmark set'),
            'Instance Group': os.path.basename(full_path).split('-')[0],
            'Instance': instance_name,

            'Vanilla Time': get_val(v_metrics, 'Total Time'),
            'Vanilla #Opt': v_opt,
            'Vanilla UB': v_metrics.get('UB', '-'),
            'Vanilla LB': v_metrics.get('LB', '-'),
            'Vanilla Gap': v_gap,
            'Vanilla CG Iter': v_total,

            'Adaptive Time': get_val(a_metrics, 'Total Time'),
            'Adaptive #Opt': a_opt,
            'Adaptive UB': a_metrics.get('UB', '-'),
            'Adaptive LB': a_metrics.get('LB', '-'),
            'Adaptive Gap': a_gap,
            'Adaptive CG Iter': a_total,
            'Adaptive Heur Calls': a_heur,
            'Heur Success %': heur_pct,
        }

        v_status = "Opt" if v_opt else f"TL({v_gap}%)"
        a_status = "Opt" if a_opt else f"TL({a_gap}%)"

        print(f"[+] Finished {instance_name} | V: {v_status} | A: {a_status}", flush=True)

        return result_dict

    except Exception as e:
        print(f"\n[!] FATAL ERROR on file: {f_name}\nPath: {full_path}")
        print(f"   path: {full_path}")
        traceback.print_exc()
        return None

def get_real_path_helper(benchmark_set, csv_filename, data_root):
    """Resolves the physical file path for a given benchmark instance."""
    clean_name = os.path.basename(csv_filename.replace('\\', '/'))

    folder_map = {
        'BAHCECI_ONCAN': 'BahceciOencan',
        'HENN': 'HennWaescher',
        'MUTER_ONCAN': 'Muter'
    }

    target_folder = folder_map.get(benchmark_set)
    if not target_folder:
        print(f"   ❌ [DEBUG] Unrecognized benchmark set: '{benchmark_set}' (Check whitespace/spelling?)")
        return None

    search_path = os.path.join(data_root, target_folder)
    if not os.path.exists(search_path):
        print(f"   ❌ [DEBUG] Folder not found on disk: {search_path}")
        return None

    for root, _, files in os.walk(search_path):
        if clean_name in files:
            return os.path.join(root, clean_name)

    print(f"  [?] File '{clean_name}' not found in: {search_path}")
    return None

def find_benchmark_csv(filename, project_root):
    search_paths = [
        project_root,
        os.path.join(project_root, 'MISC'),
        os.path.join(project_root, 'results', 'Benchmarks'),
        os.path.join(project_root, 'data'),
    ]
    for p in search_paths:
        cand = os.path.join(p, filename)
        if os.path.exists(cand): return cand
    return None

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--workers', type=int, default=12)
    parser.add_argument('--benchmarks', nargs='+', metavar='NAME',
                        help='Only these benchmark index files, e.g. Benchmark3_Medium (default: all).')
    parser.add_argument('--instances', nargs='+', metavar='NAME',
                        help='Only these instances, e.g. 30_48_0 (default: all instances of the selected benchmarks).')
    parser.add_argument('--gap-tolerance', type=float, default=0.01,
                        help='Relative optimality gap at which B&P stops, as a fraction (default: %(default)s = 1%%; 0 = exact).')
    parser.add_argument('--output', default='Final_Benchmark_Parallel_Report.csv',
                        help='Output file name inside results/ (default: %(default)s).')
    args = parser.parse_args()

    selected_csvs = BENCHMARK_CSVS
    if args.benchmarks:
        wanted = {b if b.endswith('.csv') else b + '.csv' for b in args.benchmarks}
        unknown = wanted - set(BENCHMARK_CSVS)
        if unknown:
            sys.exit(f"[!] Unknown benchmark(s): {', '.join(sorted(unknown))}")
        selected_csvs = [c for c in BENCHMARK_CSVS if c in wanted]
    wanted_instances = {os.path.splitext(i)[0] for i in args.instances} if args.instances else None

    os.makedirs(RESULTS_DIR, exist_ok=True)
    output_path = os.path.join(RESULTS_DIR, args.output)

    all_tasks = []

    print(f"Scanning for data in: {DATA_DIR}")
    for csv_file in selected_csvs:
        full_csv_path = find_benchmark_csv(csv_file, PROJECT_ROOT)
        if not full_csv_path:
            print(f" [-] Missing benchmark index: {csv_file}")
            continue

        try:
            df = pd.read_csv(full_csv_path)
            print(f"   [+] Loaded CSV with {len(df)} rows.")

            for _, row in df.iterrows():
                full_path = get_real_path_helper(row['benchmark set'], row['filename'], DATA_DIR)
                if full_path and wanted_instances is not None:
                    if os.path.splitext(os.path.basename(full_path))[0] not in wanted_instances:
                        continue
                if full_path:
                    all_tasks.append((row.to_dict(), full_path, PROJECT_ROOT, args.gap_tolerance))
        except Exception as e:
            print(f"   [!] Error reading {csv_file}: {e}")

    if not all_tasks:
        print("\n[!] No instances found to solve. Exiting.")
        sys.exit(1)

    print(f"Launching {len(all_tasks)} tasks on {args.workers} cores (gap tolerance {args.gap_tolerance})...")
    print(f"Results will be saved immediately to: {output_path}")
    print("-" * 60)

    with multiprocessing.Pool(processes=args.workers) as pool:
        for result in pool.imap_unordered(benchmark_worker, all_tasks):
            if result is not None:
                df_res = pd.DataFrame([result])

                header = not os.path.exists(output_path)

                df_res.to_csv(output_path, mode='a', header=header, index=False)

    print("-" * 60)
    print(f"\n[+] ALL FINISHED! Full results in: {output_path}")