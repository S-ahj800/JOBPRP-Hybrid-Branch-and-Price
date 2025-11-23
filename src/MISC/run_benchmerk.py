import pandas as pd
import subprocess
import os
import re
import time
import sys

# ==============================================================================
#  ✅ HOW TO USE FOR ANY BENCHMARK SET
#  To switch between benchmarks, just change the two paths below.
# ==============================================================================
# Path to your main Python script to execute
MAIN_SCRIPT_PATH = 'main.py'

# 1. Path to the TOP-LEVEL directory for the benchmark instance files
INSTANCES_DIR = './src/input_data/instances/MuterOencan/'  # <-- CHANGE THIS

# 2. Path to the corresponding CSV file with the optimal results
RESULTS_CSV_PATH = 'results_Muter.csv' # <-- AND THIS

# Time limit in seconds for each instance run
TIME_LIMIT_SECONDS = 600
# ==============================================================================


def find_all_instances(root_directory: str) -> dict[str, str]:
    """
    Scans a root directory and all its subdirectories to find instance files.
    This works for both flat and nested directory structures.
    Returns a dictionary mapping a filename to its full, absolute path.
    """
    instance_map = {}
    print(f"Scanning for instances in '{root_directory}'...")
    if not os.path.isdir(root_directory):
        print(f"❌ Error: The directory '{root_directory}' does not exist.")
        return instance_map
        
    for root, dirs, files in os.walk(root_directory):
        for filename in files:
            # Check for case-insensitivity by converting to lowercase
            if filename.lower().endswith('.txt'):
                instance_map[filename] = os.path.abspath(os.path.join(root, filename))
                
    print(f"✓ Found {len(instance_map)} total instance files.")
    return instance_map


def parse_objective_from_output(output_text: str) -> float | None:
    """
    Parses the final objective value by looking for the unique "BENCHMARK_RESULT:" tag.
    """
    match = re.search(r"BENCHMARK_RESULT:\s*(\d+\.?\d*)", output_text)
    if match:
        return float(match.group(1))
    return None


def run_test():
    """Main function to run the benchmark tests."""
    print("🚀 Starting benchmark test for Python Branch-and-Price...")

    instance_path_map = find_all_instances(INSTANCES_DIR)
    
    try:
        df_results = pd.read_csv(RESULTS_CSV_PATH)
        print(f"✓ Successfully loaded '{RESULTS_CSV_PATH}' with {len(df_results)} instances.")
    except FileNotFoundError:
        print(f"❌ Error: CSV file not found at '{RESULTS_CSV_PATH}'. Please check the path.")
        return

    summary = { 'total': len(df_results), 'matched': 0, 'mismatched': 0, 'errors': 0,
                'mismatched_details': [], 'error_details': [] }
    
    start_time = time.time()

    for index, row in df_results.iterrows():
        csv_path_string = row['filename']
        known_optimal_value = float(row['UB'])

        # This universal cleaner handles all known CSV formats
        base_filename = os.path.basename(csv_path_string.replace('\\', '/'))
        instance_filename = base_filename.removeprefix('ins_')
        
        print(f"\n--- [{index + 1}/{summary['total']}] Instance: {instance_filename} ---")

        instance_path = instance_path_map.get(instance_filename)

        if not instance_path:
            print(f"  -> ❌ Error: Instance file '{instance_filename}' not found in any subdirectory of '{INSTANCES_DIR}'")
            summary['errors'] += 1
            summary['error_details'].append(f"{instance_filename} (File not found)")
            continue

        command = [ sys.executable, MAIN_SCRIPT_PATH, instance_path ]

        try:
            result = subprocess.run(
                command, capture_output=True, text=True, check=True,
                timeout=TIME_LIMIT_SECONDS + 10
            )
            stdout = result.stdout
            found_value = parse_objective_from_output(stdout)

            if found_value is None:
                print(f"  -> ❓ Error: Could not parse objective value from script output.")
                summary['errors'] += 1
                summary['error_details'].append(f"{instance_filename} (Parse fail)")
                print("="*15 + " CAPTURED OUTPUT " + "="*15 + f"\n{stdout}\n" + "="*47)
                continue

            if abs(found_value - known_optimal_value) < 1e-4:
                print(f"  -> ✅ Match! Found: {found_value:.2f}, Expected: {known_optimal_value:.2f}")
                summary['matched'] += 1
            else:
                print(f"  -> ⚠️ Mismatch! Found: {found_value:.2f}, Expected: {known_optimal_value:.2f}")
                summary['mismatched'] += 1
                summary['mismatched_details'].append(f"{instance_filename} (Found: {found_value}, Expected: {known_optimal_value})")

        except subprocess.CalledProcessError as e:
            print(f"  -> ❌ Error: Script crashed or returned an error.")
            summary['errors'] += 1
            summary['error_details'].append(f"{instance_filename} (Script crashed)")
            print("="*10 + " STDERR " + "="*10 + f"\n{e.stderr}\n" + "="*28)
        except subprocess.TimeoutExpired:
            print(f"  -> ❌ Error: Process timed out after {TIME_LIMIT_SECONDS} seconds.")
            summary['errors'] += 1
            summary['error_details'].append(f"{instance_filename} (Timeout)")

    end_time = time.time()
    total_time = end_time - start_time
    
    print("\n\n" + "="*40 + "\n📊 BENCHMARK TEST COMPLETE\n" + "="*40)
    print(f"Total time: {total_time:.2f} seconds")
    print(f"Total instances tested: {summary['total']}")
    print(f"  - ✅ Matched:     {summary['matched']}")
    print(f"  - ⚠️ Mismatched:  {summary['mismatched']}")
    print(f"  - ❌ Errors:      {summary['errors']}")
    
    if summary['mismatched'] > 0:
        print("\n--- Mismatch Details ---")
        for detail in summary['mismatched_details']: print(f"  - {detail}")
            
    if summary['errors'] > 0:
        print("\n--- Error Details ---")
        for detail in summary['error_details']: print(f"  - {detail}")
    print("="*40)


if __name__ == '__main__':
    run_test()