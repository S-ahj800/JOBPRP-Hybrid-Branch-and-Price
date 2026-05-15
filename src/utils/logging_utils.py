import logging
import os
import csv
import sys

def setup_logging(instance_path: str, log_dir_suffix: str = "_run_logs") -> str:
    """
    Configures console and file loggers.
    """
    instance_name = os.path.splitext(os.path.basename(instance_path))[0]
    log_directory = f"{instance_name}{log_dir_suffix}"
    os.makedirs(log_directory, exist_ok=True)
    log_filename = os.path.join(log_directory, f"{instance_name}.log")

    root_logger = logging.getLogger()
    root_logger.setLevel(logging.DEBUG)

    if root_logger.hasHandlers():
        root_logger.handlers.clear()

    file_handler = logging.FileHandler(log_filename, mode='w')
    file_handler.setLevel(logging.DEBUG)
    file_fmt = logging.Formatter('%(asctime)s - %(levelname)-8s - [%(name)s:%(lineno)d] - %(message)s')
    file_handler.setFormatter(file_fmt)
    root_logger.addHandler(file_handler)

    console_handler = logging.StreamHandler(sys.stdout)
    console_handler.setLevel(logging.INFO)
    console_fmt = logging.Formatter('%(asctime)s - %(levelname)-8s - %(message)s')
    console_handler.setFormatter(console_fmt)
    root_logger.addHandler(console_handler)

    return log_directory

def write_metrics_to_csv(metrics: dict, filename: str = "results.csv"):
    """
    Appends final solver metrics to a CSV file.
    """
    file_exists = os.path.isfile(filename)

    fieldnames = [
        "Instance", "#Opt", "Time", "UB", "LB", "Gap %",
        "Heur Calls", "Heur %", "Exact Calls", "Total CG Iterations", "Total Time"
    ]

    try:
        with open(filename, mode='a', newline='') as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
            if not file_exists:
                writer.writeheader()

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