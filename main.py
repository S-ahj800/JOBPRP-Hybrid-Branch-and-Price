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

def main():
    logging.basicConfig(
        level=logging.INFO,
        format='%(asctime)s - %(levelname)-8s - %(message)s',
        datefmt='%Y-%m-%d %H:%M:%S',
        stream=sys.stdout
    )

    parser = argparse.ArgumentParser(description="JOBPRP Branch and Price Solver")
    parser.add_argument('instance_path', type=str, help='Path to the instance file.')
    parser.add_argument('--detailed-log', action='store_true', help='Also write a DEBUG-level log to <instance_name>.log in the current directory.')
    args = parser.parse_args()

    if args.detailed_log:
        instance_name_base = os.path.splitext(os.path.basename(args.instance_path))[0]
        log_filename = f"{instance_name_base}.log"

        file_handler = logging.FileHandler(log_filename, mode='w')
        file_handler.setLevel(logging.DEBUG)
        file_handler.setFormatter(logging.Formatter(
            '%(asctime)s - %(levelname)-8s - [%(name)s:%(funcName)s:%(lineno)d] - %(message)s'))

        root_logger = logging.getLogger()
        for handler in root_logger.handlers:
            handler.setLevel(logging.INFO)
        root_logger.addHandler(file_handler)
        root_logger.setLevel(logging.DEBUG)

        logging.info(f"Detailed DEBUG log will be saved to: {log_filename}")

    try:
        logging.info(f"Loading JOBPRP instance from: {args.instance_path}")
        with redirect_stdout(io.StringIO()):
            instance = JOBPRPInstance.from_file(args.instance_path)
        logging.info(f"Successfully loaded instance: {instance.name}")

        solver = JOBPRPBranchAndPrice(instance)
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