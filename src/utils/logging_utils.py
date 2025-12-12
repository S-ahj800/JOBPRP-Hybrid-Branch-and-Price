import logging
import os
import csv
import sys

def setup_logging(instance_path: str, log_dir_suffix: str = "_run_logs") -> str:
    """
    Configures logging:
    - Console: INFO level (Clean, high-level updates only)
    - File: DEBUG level (Detailed iteration logs)
    """
    instance_name = os.path.splitext(os.path.basename(instance_path))[0]
    log_directory = f"{instance_name}{log_dir_suffix}"
    os.makedirs(log_directory, exist_ok=True)
    log_filename = os.path.join(log_directory, f"{instance_name}.log")

    root_logger = logging.getLogger()
    root_logger.setLevel(logging.DEBUG) 
    
    if root_logger.hasHandlers():
        root_logger.handlers.clear()

    # File Handler (Detailed)
    file_handler = logging.FileHandler(log_filename, mode='w')
    file_handler.setLevel(logging.DEBUG)
    file_fmt = logging.Formatter('%(asctime)s - %(levelname)-8s - [%(name)s:%(lineno)d] - %(message)s')
    file_handler.setFormatter(file_fmt)
    root_logger.addHandler(file_handler)

    # Console Handler (Important Only)
    console_handler = logging.StreamHandler(sys.stdout)
    console_handler.setLevel(logging.INFO)
    console_fmt = logging.Formatter('%(asctime)s - %(levelname)-8s - %(message)s')
    console_handler.setFormatter(console_fmt)
    root_logger.addHandler(console_handler)

    # Use a direct print for the log location so it always shows up
    # (Logging it might be filtered if levels are tweaked)
    # console_handler.stream.write(f"Detailed logs saved to: {log_filename}\n")
    
    return log_directory

def write_metrics_to_csv(metrics: dict, filename: str = "results.csv"):
    """
    Writes metrics to CSV using the exact column names requested.
    """
    file_exists = os.path.isfile(filename)
    
    # [FIX] Added Instance as first column
    fieldnames = [
        "Instance", "#Opt", "Time", "UB", "LB", "Gap %", 
        "Heur Calls", "Heur %", "Exact Calls", "Total CG Iterations", "Total Time" 
    ]
    
    try:
        with open(filename, mode='a', newline='') as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
            if not file_exists:
                writer.writeheader()
            
            # Safe write: only write keys that exist in fieldnames
            row = {k: metrics.get(k, "") for k in fieldnames}
            writer.writerow(row)
    except Exception as e:
        logging.error(f"Failed to write CSV: {e}")

class StreamToLogger:
    def __init__(self, logger, log_level=logging.INFO):
        self.logger = logger
        self.log_level = log_level

    def write(self, buf):
        for line in buf.rstrip().splitlines():
            self.logger.log(self.log_level, line.rstrip())

    def flush(self):
        pass