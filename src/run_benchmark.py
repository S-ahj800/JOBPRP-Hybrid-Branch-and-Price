import pandas as pd
import os
import re
import sys
import time
import logging
import argparse
import tempfile

# =============================================================================
# 1. CONFIGURATION & PATH SETUP
# =============================================================================
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))

# Intelligent Root Detection
if os.path.basename(SCRIPT_DIR) == 'src':
    PROJECT_ROOT = os.path.dirname(SCRIPT_DIR)
else:
    PROJECT_ROOT = SCRIPT_DIR

# Add Project Root to sys.path
if PROJECT_ROOT not in sys.path:
    sys.path.append(PROJECT_ROOT)

DATA_DIR = os.path.join(PROJECT_ROOT, 'src', 'data')
RESULTS_DIR = os.path.join(PROJECT_ROOT, 'src', 'results', 'Benchmarks')
LOG_DIR = os.path.join(PROJECT_ROOT, 'src', 'results', 'logs')

# Updated list to match your uploaded files
BENCHMARK_CSVS = [
    "Benchmark1_Small.csv",
    "Benchmark2_Small.csv",
    "Benchmark2_Medium.csv",
    "Benchmark2_Large.csv",
    "Benchmark3_Small.csv",
    "Benchmark3_Medium.csv",
    "Benchmark3_Large.csv",
]

# =============================================================================
# 2. IMPORT SOLVER
# =============================================================================
try:
    from src.parser.jobprp_data import JOBPRPInstance
    from src.branch_and_price.jobprp_branch_and_price import JOBPRPBranchAndPrice
    print("✅ Successfully imported JOBPRP Solver classes.")
except ImportError as e:
    print("\n❌ CRITICAL IMPORT ERROR")
    print(f"   Could not import modules from 'src'.")
    print(f"   Error: {e}")
    sys.exit(1)

# =============================================================================
# 3. HELPER FUNCTIONS
# =============================================================================
# Cache for file locations to avoid re-scanning disk repeatedly
# Structure: { 'Benchmark_Folder_Name': { 'filename.txt': '/full/path/to/filename.txt' } }
FILE_CACHE = {}

def index_benchmark_directory(folder_name):
    """
    Recursively scans a benchmark directory and maps filenames to absolute paths.
    """
    if folder_name in FILE_CACHE:
        return FILE_CACHE[folder_name]

    search_path = os.path.join(DATA_DIR, folder_name)
    file_map = {}
    
    if os.path.exists(search_path):
        print(f"   🔎 Indexing files in: {search_path} ...")
        for root, dirs, files in os.walk(search_path):
            for file in files:
                if file.endswith(".txt"):
                    # We store the basename -> full path mapping
                    file_map[file] = os.path.join(root, file)
    else:
        print(f"   ⚠️  Warning: Data directory not found: {search_path}")
    
    FILE_CACHE[folder_name] = file_map
    return file_map

def find_benchmark_file(filename):
    """
    Searches for the benchmark CSV in common locations.
    """
    search_paths = [
        PROJECT_ROOT,
        os.path.join(PROJECT_ROOT, 'src', 'results', 'Benchmarks'),
        os.path.join(PROJECT_ROOT, 'src', 'results', 'Benchmark'),
        os.path.join(PROJECT_ROOT, 'src', 'data'),
        SCRIPT_DIR
    ]
    
    for path in search_paths:
        candidate = os.path.join(path, filename)
        if os.path.exists(candidate):
            return candidate
            
    return None

def get_real_path(benchmark_set, csv_filename):
    """
    Robustly finds the instance file by scanning the appropriate data directory.
    Ignores directory mismatches between CSV and disk.
    """
    clean_name = csv_filename.replace('\\', '/')
    target_filename = os.path.basename(clean_name)

    # Determine which folder in src/data/ corresponds to the benchmark set
    folder_name = None
    if benchmark_set == 'BAHCECI_ONCAN':
        folder_name = 'BahceciOencan'
    elif benchmark_set == 'HENN':
        folder_name = 'HennWaescher'
    elif benchmark_set == 'MUTER_ONCAN':
        folder_name = 'Muter'
    
    if not folder_name:
        return None

    # Get the file map for this benchmark (cached)
    file_map = index_benchmark_directory(folder_name)
    
    # Return the full path if found
    return file_map.get(target_filename)

def get_instance_group(filename):
    base = os.path.splitext(os.path.basename(filename))[0]
    match = re.match(r'^(.*)[-_]\d+$', base)
    if match:
        return match.group(1)
    return base

# =============================================================================
# 4. SOLVER WRAPPER
# =============================================================================
def run_solver_on_instance(file_path, enable_heuristic, detailed_log=False):
    try:
        instance = JOBPRPInstance.from_file(file_path)
    except Exception as e:
        return {} # Return empty dict on failure

    instance_name = os.path.splitext(os.path.basename(file_path))[0]

    # Handle Log Directory
    temp_dir_obj = None
    if detailed_log:
        instance_log_dir = os.path.join(LOG_DIR, f"{instance_name}_logs")
        os.makedirs(instance_log_dir, exist_ok=True)
    else:
        temp_dir_obj = tempfile.TemporaryDirectory()
        instance_log_dir = temp_dir_obj.name

    # --- LOGGING SETUP ---
    file_handler = None
    root_logger = logging.getLogger()
    original_level = root_logger.level

    if detailed_log:
        run_type = "Adaptive" if enable_heuristic else "Vanilla"
        log_filename = os.path.join(instance_log_dir, f"{instance_name}_{run_type}.log")

        file_handler = logging.FileHandler(log_filename, mode='w')
        file_handler.setLevel(logging.DEBUG)
        fmt = logging.Formatter('%(asctime)s - %(levelname)-8s - [%(name)s] - %(message)s')
        file_handler.setFormatter(fmt)

        root_logger.addHandler(file_handler)
        root_logger.setLevel(logging.DEBUG)
        for h in root_logger.handlers:
            if isinstance(h, logging.StreamHandler):
                h.setLevel(logging.WARNING)

    solver = JOBPRPBranchAndPrice(
        jobprp_instance=instance,
        log_directory=instance_log_dir,
        time_limit=3600.0,
        enable_heuristic=enable_heuristic
    )

    try:
        solver.solve()
    except Exception:
        pass

    # --- CLEANUP ---
    if file_handler:
        root_logger.removeHandler(file_handler)
        file_handler.close()
        root_logger.setLevel(original_level)

    if temp_dir_obj:
        temp_dir_obj.cleanup()

    # Return the full metrics dictionary
    return getattr(solver, 'final_metrics', {})

# =============================================================================
# 5. MAIN EXECUTION
# =============================================================================
def main():
    parser = argparse.ArgumentParser(description="Benchmark JOBPRP Solver")
    parser.add_argument('--detailed-log', action='store_true', help="Enable detailed file logging per instance")
    args = parser.parse_args()

    print("🚀 Starting Benchmark Run...")
    if args.detailed_log:
        print("   📝 Detailed Logging ENABLED (Check results/logs/)")

    print(f"   Project Root: {PROJECT_ROOT}")

    # Set logging to WARNING to avoid cluttering output
    logging.basicConfig(level=logging.WARNING)

    # Ensure results directory exists before starting
    os.makedirs(RESULTS_DIR, exist_ok=True)

    raw_results = []

    for csv_file in BENCHMARK_CSVS:
        full_csv_path = find_benchmark_file(csv_file)

        if not full_csv_path:
            print(f"⚠️  File not found: '{csv_file}'")
            print(f"    (Checked root, src/results/Benchmarks, and src/data)")
            continue

        print(f"\n📂 Processing CSV: {csv_file}")
        try:
            df = pd.read_csv(full_csv_path)
        except Exception as e:
            print(f"   Error reading CSV: {e}")
            continue

        current_benchmark_results = []

        for index, row in df.iterrows():
            b_set = row.get('benchmark set')
            f_name = row.get('filename')

            # --- KEY FIX: Use the new robust path finder ---
            full_path = get_real_path(b_set, f_name)

            if not full_path or not os.path.exists(full_path):
                # Only print error if it's the first time we can't find files for this set
                # to avoid spamming the console
                # print(f"   ❌ Missing: {f_name}") 
                continue

            group_id = get_instance_group(full_path)
            print(f"   Running: {os.path.basename(full_path)}")

            # RUN 1: VANILLA
            v_metrics = run_solver_on_instance(full_path, False, detailed_log=args.detailed_log)

            # RUN 2: ADAPTIVE
            a_metrics = run_solver_on_instance(full_path, True, detailed_log=args.detailed_log)

            # Helper to safely get float values
            def get_val(metrics, key, default=0.0):
                try: return float(metrics.get(key, default))
                except: return default

            # --- Extract Metrics ---
            a_exact_calls = get_val(a_metrics, 'Exact Calls')
            a_heur_calls = get_val(a_metrics, 'Heur Calls')
            a_total_cg = a_exact_calls + a_heur_calls
            
            v_exact_calls = get_val(v_metrics, 'Exact Calls')
            v_heur_calls = get_val(v_metrics, 'Heur Calls')
            v_total_cg = v_exact_calls + v_heur_calls

            if a_total_cg > 0:
                heur_success_pct = round((a_heur_calls / a_total_cg) * 100, 2)
            else:
                heur_success_pct = 0.0

            result_entry = {
                'Benchmark_set': b_set,
                'Instance Group': group_id,
                'Vanilla Time': get_val(v_metrics, 'Total Time'),
                'Adaptive Time': get_val(a_metrics, 'Total Time'),
                'Vanilla Exact Calls': v_exact_calls,
                'Vanilla Total CG Iterations': v_total_cg,
                'Adaptive Total CG Iterations': a_total_cg,
                'Adaptive Exact Calls': a_exact_calls,
                'Adaptive Heur Calls': a_heur_calls,
                'Heur Success %': heur_success_pct, 
                '#Opt': a_metrics.get('#Opt', 0),
                'UB': a_metrics.get('UB', '-'),
                'LB': a_metrics.get('LB', '-'),
                'Gap': a_metrics.get('Gap %', '-')
            }

            raw_results.append(result_entry)
            current_benchmark_results.append(result_entry)

        if current_benchmark_results:
            base_name = os.path.splitext(csv_file)[0]
            output_filename = f"{base_name}_Results.csv"
            specific_output_path = os.path.join(RESULTS_DIR, output_filename)

            cols = [
                'Benchmark_set', 
                'Instance Group', 
                'Vanilla Time', 
                'Adaptive Time', 
                'Vanilla Exact Calls', 
                'Vanilla Total CG Iterations', 
                'Adaptive Total CG Iterations', 
                'Adaptive Exact Calls', 
                'Adaptive Heur Calls', 
                'Heur Success %', 
                '#Opt', 
                'UB', 
                'LB', 
                'Gap'
            ]

            pd.DataFrame(current_benchmark_results)[cols].to_csv(specific_output_path, index=False)
            print(f"   💾 Saved results to: {specific_output_path}")

    if not raw_results:
        print("\n⚠️  No results generated. Check your paths in src/data.")
        return

    print("\n📊 Aggregating Final Report...")
    results_df = pd.DataFrame(raw_results)

    grouped = results_df.groupby(['Benchmark_set', 'Instance Group']).agg({
        'Vanilla Time': 'mean',
        'Adaptive Time': 'mean',
        'Vanilla Exact Calls': 'mean',
        'Vanilla Total CG Iterations': 'mean',
        'Adaptive Total CG Iterations': 'mean',
        'Adaptive Exact Calls': 'mean',
        'Adaptive Heur Calls': 'mean',
        'Heur Success %': 'mean' 
    }).reset_index()

    output_path = os.path.join(RESULTS_DIR, "Final_Benchmark_Report.csv")
    grouped.round(4).to_csv(output_path, index=False)

    print(f"\n✅ SUCCESS! Final aggregated report saved to:\n   {output_path}")

if __name__ == "__main__":
    main()