import pandas as pd
import os
import sys
import logging
import argparse
import tempfile
import multiprocessing
import traceback
import time

# Configuration paths
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
if os.path.basename(SCRIPT_DIR) == 'src':
    PROJECT_ROOT = os.path.dirname(SCRIPT_DIR)
else:
    PROJECT_ROOT = SCRIPT_DIR

if PROJECT_ROOT not in sys.path:
    sys.path.append(PROJECT_ROOT)

DATA_DIR = os.path.join(PROJECT_ROOT, 'src', 'data')
RESULTS_DIR = os.path.join(PROJECT_ROOT, 'src', 'results', 'Benchmarks')
LOG_DIR = os.path.join(PROJECT_ROOT, 'src', 'results', 'logs')

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
    row_data, full_path, detailed_log_flag, log_dir, root_path = task_args

    if root_path not in sys.path:
        sys.path.append(root_path)

    f_name = row_data.get('filename', 'Unknown')
    instance_name = os.path.splitext(os.path.basename(full_path))[0]

    print(f"[*] Starting instance: {instance_name}", flush=True)

    try:
        from src.parser.jobprp_data import JOBPRPInstance
        from src.branch_and_price.jobprp_branch_and_price import JOBPRPBranchAndPrice

        def run_solve(path, use_heur, enable_log):
            try:
                instance = JOBPRPInstance.from_file(path)
                temp_dir_obj = None

                if enable_log:
                    inst_log_dir = os.path.join(log_dir, f"{instance_name}_logs")
                    os.makedirs(inst_log_dir, exist_ok=True)
                else:
                    temp_dir_obj = tempfile.TemporaryDirectory()
                    inst_log_dir = temp_dir_obj.name

                solver = JOBPRPBranchAndPrice(
                    jobprp_instance=instance,
                    log_directory=inst_log_dir,
                    time_limit=3600.0,
                    enable_heuristic=use_heur,
                    gap_tolerance=0.01
                )

                if hasattr(solver, 'model') and solver.model:
                     try: solver.model.setParam("Threads", 1)
                     except: pass

                solver.solve()
                res = getattr(solver, 'final_metrics', {})

                if temp_dir_obj:
                    temp_dir_obj.cleanup()

                return res
            except Exception as inner_e:
                print(f"    ⚠️ Error in solver execution for {path}: {inner_e}")
                traceback.print_exc()
                return {}

        v_metrics = run_solve(full_path, False, detailed_log_flag)
        a_metrics = run_solve(full_path, True, detailed_log_flag)

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
        os.path.join(project_root, 'src', 'results', 'Benchmarks'),
        os.path.join(project_root, 'src', 'data'),
    ]
    for p in search_paths:
        cand = os.path.join(p, filename)
        if os.path.exists(cand): return cand
    return None

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--detailed-log', action='store_true')
    parser.add_argument('--workers', type=int, default=12)
    args = parser.parse_args()

    os.makedirs(RESULTS_DIR, exist_ok=True)
    output_path = os.path.join(RESULTS_DIR, "Final_Benchmark_Parallel_Report.csv")

    all_tasks = []

    print(f"Scanning for data in: {DATA_DIR}")
    for csv_file in BENCHMARK_CSVS:
        full_csv_path = find_benchmark_csv(csv_file, PROJECT_ROOT)
        if not full_csv_path:
            print(f" [-] Missing benchmark index: {csv_file}")
            continue

        try:
            df = pd.read_csv(full_csv_path)
            print(f"   [+] Loaded CSV with {len(df)} rows.")

            for _, row in df.iterrows():
                full_path = get_real_path_helper(row['benchmark set'], row['filename'], DATA_DIR)
                if full_path:
                    all_tasks.append((row.to_dict(), full_path, args.detailed_log, LOG_DIR, PROJECT_ROOT))
        except Exception as e:
            print(f"   [!] Error reading {csv_file}: {e}")

    if not all_tasks:
        print("\n[!] No instances found to solve. Exiting.")
        sys.exit(1)

    print(f"Launching {len(all_tasks)} tasks on {args.workers} cores...")
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