# Joint Order Batching and Picker Routing Problem (JOBPRP)

**An exact Branch-and-Price algorithm with hybrid column generation**

This repository contains a Python implementation of a hybrid Branch-and-Price algorithm for the Joint Order Batching and Picker Routing Problem (JOBPRP), which minimizes picker travel distance in picker-to-parts warehouse systems.

## Key components

- **Branch-and-Price:** A path-based master problem solved using column generation within a branch-and-bound framework.
- **Hybrid column generation:** Uses a warehouse-structure-based heuristic and invokes exact pricing when required.
- **Pricing subproblem:** A profitable picker-routing problem formulated on an extended state-space graph.

## Requirements

- Python 3.11 or later
- Gurobi Optimizer 12.0 or later, with a valid license
- Python packages listed in `requirements.txt`

Gurobi is a commercial optimization solver. You must obtain and configure an appropriate license separately; installing `gurobipy` alone does not provide a solver license.

## Installation

Clone the repository and enter its directory:

```bash
git clone https://github.com/S-ahj800/JOBPRP-Hybrid-Branch-and-Price.git
cd JOBPRP-Hybrid-Branch-and-Price
```

Create and activate a virtual environment (recommended):

**Windows (PowerShell)**

```powershell
py -3.11 -m venv .venv
.venv\Scripts\Activate.ps1
```

**Linux / macOS**

```bash
python3.11 -m venv .venv
source .venv/bin/activate
```

Install the Python dependencies:

```bash
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
```

## Usage

### Solve one instance

Pass the path to a benchmark instance file:

```bash
python main.py data/BahceciOencan/<instance_file>.txt
```

Replace `<instance_file>.txt` with the name of an existing instance in the selected benchmark directory.

To additionally write a DEBUG-level log to `<instance_file>.log` in the current directory, add `--detailed-log`:

```bash
python main.py data/BahceciOencan/Pr_20_1_20_Store1_05.txt --detailed-log
```

### Run the benchmark suite

```bash
python run_benchmark.py --workers 12
```

The benchmark runner reads the benchmark index files from `MISC/`, locates instance files under `data/`, and writes the aggregated run report to `results/Final_Benchmark_Parallel_Report.csv`. Running the full suite may take substantial time and computational resources.

To run only some benchmarks or instances (for example, to re-run a single instance), use `--benchmarks` and `--instances`; `--output` sets the name of the report file in `results/`:

```bash
python run_benchmark.py --workers 1 --benchmarks Benchmark3_Medium --instances 30_48_0 --output rerun_30_48_0.csv
```

### Component analysis and parameter sensitivity (Section 4.3 of the paper)

`experiments/ablation.py` runs the hybrid method on the 1400 instances listed in `experiments/ablation_instances.csv` (all 1350 BAHCECI_ONCAN instances, all 30 small MUTER_ONCAN instances and 20 small HENN instances, five per capacity level, selected with `experiments/select_instances.py`):

```bash
python experiments/ablation.py --workers 10                      # variants full, no_R, no_A, no_D, no_DA (seed 42) and full with seeds 1042, 2042
python experiments/ablation.py --workers 10 --plan sensitivity   # aisle limit 1/3, density factor 1.5/3, seed pool 10%/50% and the default
```

The runs are written to `results/ablation/ablation_runs.csv` and `results/ablation/sensitivity_runs.csv`; the bound trajectory of every run is written to `results/ablation/traces/` and `results/ablation/traces_sensitivity_runs/`. In the repository these two folders are stored as `traces.tar` and `traces_sensitivity_runs.tar`. Rows whose status is not `ok` are runs that failed to start (Gurobi licence errors) and were repeated; they are ignored by the analysis.

The tables of the paper are reproduced from these files (and from the main reports for the Classic row and the time-limit analysis) with

```bash
python experiments/analyze_ablation.py
```

which prints Tables 7, 8 and 9 and the numbers quoted in Sections 4.3 and 4.4, and writes them to `results/ablation/table7_ablation.csv`, `table8_seeds.csv`, `table9_sensitivity.csv` and `text_numbers.txt`. The definitions of all measures are given at the top of the script.

## Repository layout

```text
.
├── README.md
├── requirements.txt
├── .gitignore
├── main.py                  # Entry point for a single instance
├── run_benchmark.py         # Benchmark experiment runner
├── experiments/             # Component analysis and parameter sensitivity (Section 4.3)
├── src/
│   ├── branch_and_price/    # Branch-and-Price algorithm
│   ├── parser/              # Instance parsing
│   └── utils/               # Routing and other utilities
├── data/
│   ├── BahceciOencan/
│   ├── HennWaescher/
│   └── Muter/
├── MISC/                    # Benchmark index files and auxiliary inputs
└── results/                 # Existing reports and generated results
    └── ablation/            # Runs, traces and tables of Section 4.3
```

## Citation

If you use this implementation in academic work, please cite the associated publication when its bibliographic information is available.

## License

No license file is currently provided. Until a license is added, public access to this repository should not be interpreted as permission to redistribute or reuse its code. Benchmark datasets may also have their own terms of use; please check their original sources.
