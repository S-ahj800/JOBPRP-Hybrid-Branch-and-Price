import time
import logging
from contextlib import contextmanager
from collections import defaultdict
from typing import Optional

class BAPProfiler:
    """
    A lightweight, low-overhead profiler for Branch-and-Price.
    
    It uses context managers for timing and can be globally
    disabled for zero-cost overhead in production runs.
    """
    
    def __init__(self, enabled: bool = True, time_limit: float = 3600.0):
        self.enabled: bool = enabled
        self.time_limit: float = time_limit
        
        self.times = defaultdict(float)
        self.counts = defaultdict(int)
        
        self.total_nodes_processed: int = 0
        self.total_nodes_created: int = 1 # Start with 1 for the root node
        
        self.start_time: float = time.perf_counter()
        self.best_solution_at_stop: Optional[float] = None

    @contextmanager
    def time(self, category: str):
        """
        Context manager to time a block of code.
        
        Usage:
            with profiler.time("master"):
                rmp.solve()
        """
        if not self.enabled:
            yield
            return
            
        t_start = time.perf_counter()
        try:
            yield
        finally:
            t_end = time.perf_counter()
            self.times[category] += (t_end - t_start)
            self.counts[category] += 1

    def increment_node_processed(self):
        """Call once per node popped from the B&B queue."""
        if self.enabled:
            self.total_nodes_processed += 1
            
    def increment_nodes_created(self, count: int = 1):
        """Call when new child nodes are created."""
        if self.enabled:
            self.total_nodes_created += count

    def check_time_limit(self) -> bool:
        """Returns True if the total time limit has been exceeded."""
        # This check runs even if profiling is "disabled"
        # as the time limit is a hard constraint.
        return (time.perf_counter() - self.start_time) >= self.time_limit

    def get_report(self) -> str:
        """Generates a final, formatted performance report."""
        
        # 1. Capture final totals
        t_total = time.perf_counter() - self.start_time
        t_master = self.times.get("master", 0.0)
        t_branching = self.times.get("branching", 0.0)

        # --- NEW: Breakdown pricing ---
        t_pricing_build = self.times.get("pricing_build", 0.0)
        t_pricing_solve = self.times.get("pricing_solve", 0.0)
        t_pricing = t_pricing_build + t_pricing_solve # Total pricing is the sum
        
        # T_NodeProcessing is the sum of core activities
        t_processing = t_master + t_pricing + t_branching
        
        # T_Other is B&B queue management, logging, integrality checks, etc.
        t_other = t_total - t_processing if t_total > t_processing else 0.0

        # 2. Prevent division by zero if no calls were made
        c_master = self.counts.get("master", 1)
        # Use pricing_solve count, as it's the core iteration
        c_pricing = self.counts.get("pricing_solve", 1) 
        c_nodes = self.total_nodes_processed if self.total_nodes_processed > 0 else 1
        
        # 3. Build the report string
        report = [
            "\n" + "="*60,
            "--- Branch-and-Price Performance Report ---",
            "="*60,
            f"Profiling Status: {'ENABLED' if self.enabled else 'DISABLED'}",
            f"Time Limit Reached: {t_total >= self.time_limit}",
            "\n--- Node Counts ---",
            f"Total Nodes Processed: {self.total_nodes_processed}",
            f"Total Nodes Created:   {self.total_nodes_created}",
            "\n--- Cumulative Wall-Clock Times ---",
            f"T_Total:       {t_total:10.2f}s   (100.0%)",
            f"  T_Master:    {t_master:10.2f}s   ({(t_master/t_total)*100:6.1f}%)",
            f"  T_Pricing:   {t_pricing:10.2f}s   ({(t_pricing/t_total)*100:6.1f}%)",
            f"    - Build: {t_pricing_build:10.2f}s   ({(t_pricing_build/t_total)*100:6.1f}%)", # NEW
            f"    - Solve: {t_pricing_solve:10.2f}s   ({(t_pricing_solve/t_total)*100:6.1f}%)", # NEW
            f"  T_Branching: {t_branching:10.2f}s   ({(t_branching/t_total)*100:6.1f}%)",
            f"  T_Other:     {t_other:10.2f}s   ({(t_other/t_total)*100:6.1f}%)",
            "\n--- Averages & Diagnostics ---",
            f"Avg. Master Solve Time (per RMP solve):  {t_master / c_master * 1000:8.2f} ms",
            f"Avg. Pricing Solve Time (per CG iter):   {t_pricing_solve / c_pricing * 1000:8.2f} ms", # UPDATED
            f"Avg. CG Iterations (per processed node): {c_master / c_nodes:8.1f}",
            f"Avg. Total Time per Processed Node:      {t_processing / c_nodes:8.2f} s",
            "="*60
        ]
        return "\n".join(report)