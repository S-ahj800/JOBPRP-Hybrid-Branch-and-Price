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
python main.py data/HennWaescher/<instance_file>.txt
```

Replace `<instance_file>.txt` with the name of an existing instance in the selected benchmark directory.

### Run the benchmark suite

```bash
python run_benchmark.py --workers 12
```

The benchmark runner reads the benchmark index files from `MISC/`, locates instance files under `data/`, and writes the aggregated run report to `results/Final_Benchmark_Parallel_Report.csv`. Running the full suite may take substantial time and computational resources.

To enable detailed logging, add `--detailed-log`:

```bash
python run_benchmark.py --workers 12 --detailed-log
```

## Repository layout

```text
.
├── README.md
├── requirements.txt
├── .gitignore
├── main.py                  # Entry point for a single instance
├── run_benchmark.py         # Benchmark experiment runner
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
```

## Citation

If you use this implementation in academic work, please cite the associated publication when its bibliographic information is available.

## License

No license file is currently provided. Until a license is added, public access to this repository should not be interpreted as permission to redistribute or reuse its code. Benchmark datasets may also have their own terms of use; please check their original sources.
