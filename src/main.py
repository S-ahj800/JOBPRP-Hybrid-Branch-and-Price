import argparse
import logging
import sys
import io
import os
from contextlib import redirect_stdout
import gurobipy as gp

# --- Assuming standard project structure allows these imports ---
from src.parser.jobprp_data import JOBPRPInstance
from src.branch_and_price.jobprp_branch_and_price import JOBPRPBranchAndPrice

def add_file_handler_to_logger(instance_path: str) -> str:
    """Creates and adds a detailed file handler to the root logger."""
    # --- Create a directory for the logs based on the instance filename ---
    instance_name = os.path.splitext(os.path.basename(instance_path))[0]
    log_directory = f"{instance_name}_run_logs"
    os.makedirs(log_directory, exist_ok=True)
    log_filename = os.path.join(log_directory, f"{instance_name}.log")

    # --- Get the root logger and set its level to the lowest (DEBUG) ---
    logger = logging.getLogger()
    logger.setLevel(logging.DEBUG)

    # --- Create and configure the File Handler (DEBUG level) ---
    file_handler = logging.FileHandler(log_filename, mode='w') # 'w' to overwrite
    file_handler.setLevel(logging.DEBUG)
    file_formatter = logging.Formatter('%(asctime)s - %(levelname)-8s - [%(name)s:%(funcName)s:%(lineno)d] - %(message)s')
    file_handler.setFormatter(file_formatter)

    # --- Add the new handler to the root logger ---
    logger.addHandler(file_handler)

    logging.info(f"Detailed DEBUG log will be saved to: {log_filename}")
    return log_directory

def main():
    """
    Main execution function for the JOBPRP Branch and Price solver.
    """
    logging.basicConfig(
        level=logging.INFO,
        format='%(asctime)s - %(levelname)-8s - %(message)s',
        datefmt='%Y-%m-%d %H:%M:%S',
        stream=sys.stdout
    )

    parser = argparse.ArgumentParser(
        description="Solves the Joint Order Batching and Picker Routing Problem (JOBPRP) using Branch and Price."
    )
    parser.add_argument('instance_path', type=str, help='Path to the JOBPRP instance file.')
    parser.add_argument('--detailed-log', action='store_true', help='Enable detailed logging saved to the instance directory.')
    args = parser.parse_args()

    # --- 3. Run the Solver ---
    try:
        instance_name_base = os.path.splitext(os.path.basename(args.instance_path))[0]
        
        # [MODIFIED LOGIC START]
        if args.detailed_log:
            # Save in the same directory as the instance file
            instance_dir = os.path.dirname(os.path.abspath(args.instance_path))
            log_directory = os.path.join(instance_dir, f"{instance_name_base}_run_logs")
        else:
            # Default: Save in current working directory
            log_directory = f"{instance_name_base}_run_logs"

        os.makedirs(log_directory, exist_ok=True)

        # Only attach the debug file handler if the argument was passed
        if args.detailed_log:
            log_filename = os.path.join(log_directory, f"{instance_name_base}.log")

            file_handler = logging.FileHandler(log_filename, mode='w')
            file_handler.setLevel(logging.DEBUG)
            file_formatter = logging.Formatter('%(asctime)s - %(levelname)-8s - [%(name)s:%(funcName)s:%(lineno)d] - %(message)s')
            file_handler.setFormatter(file_formatter)

            root_logger = logging.getLogger()
            root_logger.addHandler(file_handler)
            root_logger.setLevel(logging.DEBUG)

            # Keep console output clean (INFO only) while file gets DEBUG
            for handler in root_logger.handlers:
                if isinstance(handler, logging.StreamHandler):
                    handler.setLevel(logging.INFO)

            logging.info(f"Detailed DEBUG log will be saved to: {log_filename}")
        # [MODIFIED LOGIC END]

    except Exception as e:
        logging.error(f"Failed to set up file logging: {e}")
        sys.exit(1)

    try:
        logging.info(f"Loading JOBPRP instance from: {args.instance_path}")
        with redirect_stdout(io.StringIO()):
            instance = JOBPRPInstance.from_file(args.instance_path)
        logging.info(f"Successfully loaded instance: {instance.name}")

        solver = JOBPRPBranchAndPrice(instance, log_directory)
        solver.solve()


        if hasattr(solver, 'global_upper_bound') and solver.global_upper_bound != float('inf'):
            final_value = solver.global_upper_bound
            logging.info(f"Solver finished. Final objective value: {final_value}")
        else:
            logging.error("Solver finished, but no optimal solution was found.")

    except FileNotFoundError:
        logging.error(f"Error: Instance file not found at '{args.instance_path}'")
        sys.exit(1)
    except gp.GurobiError as e:
        logging.error(f"A Gurobi error occurred: {e}")
        sys.exit(1)
    except Exception as e:
        logging.error(f"An unexpected error occurred: {e}", exc_info=True)
        sys.exit(1)

if __name__ == '__main__':
    main()