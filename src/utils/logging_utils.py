import logging
import os
import csv

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