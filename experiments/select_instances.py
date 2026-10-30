"""Writes experiments/ablation_instances.csv.

Selection rule (fixed before any ablation run, independent of the results of the methods):
  BAHCECI_ONCAN  all instances of MISC/Benchmark1_Small.csv
  HENN           5 instances per capacity class (30, 45, 60, 75) of MISC/Benchmark2_Small.csv,
                 drawn at random with seed 2026
  MUTER_ONCAN    all instances of MISC/Benchmark3_Small.csv
"""
import csv, os, random

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
stem = lambda f: os.path.splitext(os.path.basename(f.replace("\\", "/")))[0]


def read(benchmark):
    with open(os.path.join(ROOT, "MISC", benchmark + ".csv"), encoding="utf-8-sig", newline="") as f:
        return list(csv.DictReader(f))


rows = []
for r in read("Benchmark1_Small"):
    rows.append(("BAHCECI_ONCAN", "Benchmark1_Small", stem(r["filename"])))

henn = sorted(read("Benchmark2_Small"), key=lambda r: stem(r["filename"]))
rng = random.Random(2026)
for cap in sorted({int(r["capacity"]) for r in henn}):
    group = [stem(r["filename"]) for r in henn if int(r["capacity"]) == cap]
    rows += [("HENN", "Benchmark2_Small", n) for n in sorted(rng.sample(group, 5))]

for r in read("Benchmark3_Small"):
    rows.append(("MUTER_ONCAN", "Benchmark3_Small", stem(r["filename"])))

with open(os.path.join(ROOT, "experiments", "ablation_instances.csv"), "w", newline="") as f:
    w = csv.writer(f)
    w.writerow(["family", "benchmark", "instance"])
    w.writerows(rows)
print(len(rows), "instances written")
