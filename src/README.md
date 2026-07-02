# Joint Order Batching and Picker Routing Problem (JOBPRP)

**An Exact Branch-and-Price Algorithm with Hybrid Column Generation**

This repository contains the official Python implementation of the hybrid Branch-and-Price algorithm proposed for solving the **Joint Order Batching and Picker Routing Problem (JOBPRP)**, with the objective of minimizing total travel distance in picker-to-parts warehousing systems.

---

## 🚀 Overview

The proposed algorithm combines an exact Branch-and-Price framework with a hybrid column generation strategy to efficiently solve the Joint Order Batching and Picker Routing Problem (JOBPRP).

Key features include:

- **Hybrid Column Generation:** Explores the search space using a fast warehouse-structure-based heuristic and invokes the exact pricing solver only when necessary.
- **Master Problem:** A path-based formulation solved using Dantzig–Wolfe decomposition.
- **Pricing Subproblem:** Formulated as a profitable picker routing problem over an extended state-space graph.

---

## 📋 Prerequisites

- **Python 3.11+**
- **Gurobi Optimizer 12.0+** with a valid academic or commercial license.
- **pandas**

Install the required packages using:

```bash
pip install pandas gurobipy
```

---

## ⚙️ Installation

Clone the repository:

```bash
git clone https://github.com/S-ahj800/JOBPRP-Hybrid-Branch-and-Price.git
cd JOBPRP-Hybrid-Branch-and-Price
```

---

## 📊 How to Run

### Solve a Single Instance

```bash
python main.py data/HennWaescher/instance_name.txt
```

Replace `instance_name.txt` with the desired benchmark instance.

### Run the Complete Benchmark Suite

```bash
python run_benchmark.py --workers 12
```

The aggregated benchmark results are automatically stored in the `MISC/` directory.

---

## 📂 Repository Structure

```text
.
├── branch_and_price/    # Core Branch-and-Price algorithm
├── data/                # Benchmark instances
│   ├── BahceciOencan/
│   ├── HennWaescher/
│   └── Muter/
├── parser/              # Benchmark instance parsers
├── utils/               # Utility functions
├── results/             # Computational results
├── MISC/                # Auxiliary files and benchmark configuration
├── main.py              # Solve a single benchmark instance
├── run_benchmark.py     # Run benchmark experiments
└── README.md
```

---

## 📖 Citation

If you use this code in your research, please cite the corresponding paper.

```bibtex
% Citation information will be added after publication.
```

---

## 📄 License

This repository is intended for academic and research purposes.