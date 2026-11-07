"""Reproduces the ablation and sensitivity results reported in Section 4.3 of the paper
(Tables 7, 8 and 9 and the numbers quoted in the text of Sections 4.3 and 4.4).

Inputs (all in the repository):
  results/ablation/ablation_runs.csv            runs of experiments/ablation.py (plans variants + seeds)
  results/ablation/traces/                      bound trajectory of every ablation run
  results/ablation/sensitivity_runs.csv         runs of experiments/ablation.py --plan sensitivity
  results/ablation/traces_sensitivity_runs/     bound trajectory of every sensitivity run
  results/Final Report Benchmark*.csv           main experiments (Classic row of Table 7, time limits)
A trace folder may also be given as a .tar archive with the same name (e.g. traces.tar).

Usage (from the repository root):
  python experiments/analyze_ablation.py
The tables are printed and written to results/ablation/table7_ablation.csv,
table8_seeds.csv, table9_sensitivity.csv and text_numbers.txt.

Definitions (as in Section 4.3):
  solved          final gap <= stopping tolerance (0 for BAHCECI_ONCAN, 1% otherwise)
  time ratio      geometric mean over instances of (time of variant / time of the baseline);
                  baseline = Full with seed 42 of the same experiment
  root time       time at which column generation at the root node finished: start time of the
                  second node of the tree, or the end time if the instance was solved at the root;
                  undefined if the root was not finished within the time limit
  root solved     number of instances with a defined root time
  root time ratio geometric mean of root-time ratios over instances whose root was solved in
                  both runs
  heur. success   mean over instances of the share of CG iterations in which the heuristic
                  found a column with negative reduced cost (column heur_hit_pct)
  significance    paired Wilcoxon signed-rank test, Holm correction over the variants compared
                  with the baseline in the same column, level 0.05 (marked with *)
  numbers are rounded half up.
Rows with status other than "ok" (runs that failed to start, e.g. licence errors, and were
repeated) are ignored.
"""

import gzip
import io
import json
import os
import tarfile
from decimal import Decimal, ROUND_HALF_UP

import numpy as np
import pandas as pd
from scipy.stats import wilcoxon

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(ROOT, "results", "ablation")
MAIN = os.path.join(ROOT, "results")
FAMILIES = ["BAHCECI_ONCAN", "HENN", "MUTER_ONCAN"]
BAH, HENN, MUTER = FAMILIES
ALPHA = 0.05
MAIN_SMALL = {BAH: "Benchmark1_Small", HENN: "Benchmark2_Small", MUTER: "Benchmark3_Small"}
MAIN_ALL = {HENN: ["Benchmark2_Small", "Benchmark2_Medium", "Benchmark2_Large "],
            MUTER: ["Benchmark3_Small", "Benchmark3_Medium", "Benchmark3_Large"],
            BAH: ["Benchmark1_Small"]}
ABLATION_VARIANTS = ["full", "no_R", "no_A", "no_D", "no_DA"]
SENSITIVITY_VARIANTS = ["full", "al1", "al3", "df15", "df3", "sp10", "sp50"]
SENSITIVITY_LABELS = {"full": "Full (default)", "al1": "Aisle limit = 1", "al3": "Aisle limit = 3",
                      "df15": "Density factor = 1.5", "df3": "Density factor = 3",
                      "sp10": "Seed pool = 10%", "sp50": "Seed pool = 50%"}

lines = []


def say(text=""):
    print(text)
    lines.append(text)


def rnd(x, digits):
    """Round half up (as in the paper)."""
    q = Decimal(1).scaleb(-digits)
    return str(Decimal(repr(float(x))).quantize(q, rounding=ROUND_HALF_UP))


def gmean(x):
    return float(np.exp(np.mean(np.log(np.asarray(x, float)))))


def holm(pvalues):
    p = np.asarray(pvalues, float)
    order = np.argsort(p)
    adjusted = np.empty(len(p))
    running = 0.0
    for k, i in enumerate(order):
        running = max(running, (len(p) - k) * p[i])
        adjusted[i] = min(1.0, running)
    return adjusted


# ----------------------------------------------------------------------------- loading
class Traces:
    """Reads trace files from a folder or from a .tar archive of that folder."""

    def __init__(self, folder):
        self.folder, self.tar, self.members = folder, None, None
        if not os.path.isdir(folder):
            archive = folder.rstrip("/\\") + ".tar"
            if not os.path.exists(archive):
                raise FileNotFoundError(f"neither {folder} nor {archive} exists")
            self.tar = tarfile.open(archive)
            self.members = {os.path.basename(m.name): m for m in self.tar.getmembers() if m.isfile()}

    def load(self, name):
        if self.tar is None:
            with gzip.open(os.path.join(self.folder, name), "rt") as f:
                return json.load(f)
        raw = self.tar.extractfile(self.members[name]).read()
        return json.load(io.TextIOWrapper(gzip.GzipFile(fileobj=io.BytesIO(raw))))


def root_time(trace, solved):
    nodes = [e for e in trace if e[0] == "node"]
    end = [e for e in trace if e[0] == "end"]
    if len(nodes) > 1:
        return nodes[1][1]
    if solved:
        return end[0][1]
    return np.nan


def load_runs(csv_name, trace_folder):
    d = pd.read_csv(os.path.join(OUT, csv_name))
    d = d[d["status"] == "ok"].copy()
    if d.duplicated(["instance", "variant", "seed"]).any():
        raise ValueError(f"{csv_name}: duplicated runs")
    d["solved"] = d["gap_pct"] <= d["gap_tolerance"] * 100 + 1e-9
    traces = Traces(os.path.join(OUT, trace_folder))
    d["root_time"] = [root_time(traces.load(f"{r.instance}__{r.variant}__{r.seed}.json.gz"), r.solved)
                      for r in d.itertuples()]
    return d


def load_main(benchmarks):
    return pd.concat([pd.read_csv(os.path.join(MAIN, f"Final Report {b}.csv")) for b in benchmarks])


# ----------------------------------------------------------------------------- comparisons
def compare(d, variants, family):
    """Per-variant statistics of one family against Full (seed 42) of the same experiment."""
    g = d[(d["family"] == family) & (d["seed"] == 42)]
    base = g[g["variant"] == "full"].set_index("instance").sort_index()
    out = {}
    for v in variants:
        x = g[g["variant"] == v].set_index("instance").loc[base.index]
        both = x["root_time"].notna() & base["root_time"].notna()
        out[v] = dict(
            n=len(x), opt=int(x["solved"].sum()), root_solved=int(x["root_time"].notna().sum()),
            hit=x["heur_hit_pct"].mean(),
            time_ratio=gmean(x["time"] / base["time"]),
            p_time=None if v == "full" else wilcoxon(x["time"], base["time"]).pvalue,
            root_ratio=gmean(x["root_time"][both] / base["root_time"][both]) if both.any() else np.nan,
            p_root=None if v == "full" or both.sum() == 0 else
            wilcoxon(x["root_time"][both], base["root_time"][both]).pvalue,
            root_common=int(both.sum()),
            ub_diff=float(((x["ub"] - base["ub"]).abs() / base["ub"] * 100)[x["solved"] & base["solved"]].max()
                          if (x["solved"] & base["solved"]).any() else 0.0),
        )
    for key in ("p_time", "p_root"):
        vs = [v for v in variants if out[v][key] is not None]
        for v, a in zip(vs, holm([out[v][key] for v in vs])):
            out[v][key + "_holm"] = a
    return out


def star(stats, key):
    return "*" if stats.get(key + "_holm", 1.0) < ALPHA else ""


def write_table(rows, header, file_name):
    pd.DataFrame(rows, columns=header).to_csv(os.path.join(OUT, file_name), index=False)
    widths = [max(len(str(c)), *(len(str(r[i])) for r in rows)) for i, c in enumerate(header)]
    say(" | ".join(str(c).ljust(w) for c, w in zip(header, widths)))
    for r in rows:
        say(" | ".join(str(c).ljust(w) for c, w in zip(r, widths)))


# ----------------------------------------------------------------------------- main
def main():
    A = load_runs("ablation_runs.csv", "traces")
    S = load_runs("sensitivity_runs.csv", "traces_sensitivity_runs")
    say(f"ablation runs: {len(A)}   sensitivity runs: {len(S)}")

    # ---------------- Table 7
    a = {f: compare(A, ABLATION_VARIANTS, f) for f in FAMILIES}
    classic = {}
    for f in FAMILIES:
        m = load_main([MAIN_SMALL[f]]).set_index("Instance")
        full = A[(A["family"] == f) & (A["variant"] == "full") & (A["seed"] == 42)].set_index("instance")
        m = m.loc[full.index]
        tol = 0.0 if f == BAH else 1.0
        classic[f] = dict(opt=int((m["Vanilla Gap"] <= tol + 1e-9).sum()),
                          ratio=gmean(m["Vanilla Time"] / full["time"]),
                          p=wilcoxon(m["Vanilla Time"], full["time"]).pvalue)
    say("\nTable 7  Component analysis (baseline: Full, seed 42)")
    header = ["Variant", "BAHCECI Time ratio", "BAHCECI Heur. success rate (%)", "HENN #OPT (of 20)",
              "HENN Root solved (of 20)", "HENN Heur. success rate (%)", "MUTER #OPT (of 30)",
              "MUTER Root time ratio", "MUTER Heur. success rate (%)"]
    rows = [["Classic†", rnd(classic[BAH]["ratio"], 2) + ("*" if classic[BAH]["p"] < ALPHA else ""), "–",
             classic[HENN]["opt"], "–", "–", classic[MUTER]["opt"], "–", "–"]]
    for v in ABLATION_VARIANTS:
        b, h, mu = a[BAH][v], a[HENN][v], a[MUTER][v]
        rows.append([{"full": "Full"}.get(v, v), rnd(b["time_ratio"], 2) + star(b, "p_time"), rnd(b["hit"], 0),
                     h["opt"], h["root_solved"], rnd(h["hit"], 0), mu["opt"],
                     rnd(mu["root_ratio"], 2) + star(mu, "p_root"), rnd(mu["hit"], 0)])
    write_table(rows, header, "table7_ablation.csv")

    say("\nTable 7, text of Section 4.3:")
    for v in ABLATION_VARIANTS[1:]:
        say(f"  {v:6s} BAHCECI time p_holm={a[BAH][v]['p_time_holm']:.2g}  "
            f"MUTER root p_holm={a[MUTER][v]['p_root_holm']:.2g}  "
            f"HENN root p_holm={a[HENN][v]['p_root_holm']:.2g} (n={a[HENN][v]['root_common']})")
    g = A[A["seed"] == 42]
    for f, col in [(BAH, "time"), (MUTER, "root_time"), (HENN, "root_time")]:
        h = g[g["family"] == f]
        d1 = h[h["variant"] == "no_D"].set_index("instance")
        d2 = h[h["variant"] == "no_DA"].set_index("instance").loc[d1.index]
        both = d1[col].notna() & d2[col].notna()
        say(f"  no_DA vs no_D, {f} {col}: ratio {rnd(gmean(d2[col][both] / d1[col][both]), 3)}, "
            f"p={wilcoxon(d2[col][both], d1[col][both]).pvalue:.2g}")
    say(f"  Classic vs Full, BAHCECI time ratio {rnd(classic[BAH]['ratio'], 2)}, p={classic[BAH]['p']:.2g}")
    worst = max(a[f][v]["ub_diff"] for f in FAMILIES for v in ABLATION_VARIANTS)
    say(f"  largest objective difference between a variant and Full among instances solved by both: "
        f"{rnd(worst, 2)}% (BAHCECI: {rnd(max(a[BAH][v]['ub_diff'] for v in ABLATION_VARIANTS), 2)}%)")

    # ---------------- Table 8
    say("\nTable 8  Effect of the random seed (Full)")
    header = ["Benchmark", "#OPT (seed 42 / 1042 / 2042)", "Mean time (s) (42 / 1042 / 2042)", "Mean ± SD",
              "Best / Worst", "Median CV (%)", "CV instances"]
    rows = []
    seeds = [42, 1042, 2042]
    for f in FAMILIES:
        h = A[(A["family"] == f) & (A["variant"] == "full")]
        t = h.pivot(index="instance", columns="seed", values="time")[seeds]
        s = h.pivot(index="instance", columns="seed", values="solved")[seeds]
        means = t.mean()
        digits = 2 if f == BAH else 0
        all3 = s.all(axis=1)
        cv = (t.std(axis=1, ddof=1) / t.mean(axis=1) * 100)[all3]
        rows.append([f, " / ".join(str(int(s[k].sum())) for k in seeds),
                     " / ".join(rnd(means[k], digits) for k in seeds),
                     f"{rnd(means.mean(), digits)} ± {rnd(means.std(ddof=1), digits)}",
                     f"{rnd(means.min(), digits)} / {rnd(means.max(), digits)}", rnd(cv.median(), 1), int(all3.sum())])
    write_table(rows, header, "table8_seeds.csv")
    say("  Median CV over instances solved in all three runs (column 'CV instances').")
    t = A[(A["family"] == BAH) & (A["variant"] == "full")].pivot(index="instance", columns="seed", values="time")
    ps = [wilcoxon(t[k], t[42]).pvalue for k in (1042, 2042)]
    say(f"  BAHCECI time, seeds 1042 / 2042 vs 42: p_holm = {' / '.join(f'{p:.2g}' for p in holm(ps))}")
    for f in (HENN, MUTER):
        s = A[(A["family"] == f) & (A["variant"] == "full")].pivot(index="instance", columns="seed", values="solved")
        say(f"  {f}: instances whose solved status differs between seeds: {int((s.nunique(axis=1) > 1).sum())}")

    # ---------------- Table 9
    sv = {f: compare(S, SENSITIVITY_VARIANTS, f) for f in FAMILIES}
    say("\nTable 9  Sensitivity of the heuristic parameters (baseline: Full of the same experiment)")
    header = ["Variant", "BAHCECI Time ratio", "BAHCECI Heur. success rate (%)", "HENN #OPT (of 20)",
              "HENN Root solved (of 20)", "HENN Root time ratio", "MUTER #OPT (of 30)",
              "MUTER Root time ratio", "MUTER Heur. success rate (%)"]
    rows = []
    for v in SENSITIVITY_VARIANTS:
        b, h, mu = sv[BAH][v], sv[HENN][v], sv[MUTER][v]
        rows.append([SENSITIVITY_LABELS[v], rnd(b["time_ratio"], 2) + star(b, "p_time"), rnd(b["hit"], 0),
                     h["opt"], h["root_solved"], rnd(h["root_ratio"], 2) + star(h, "p_root"), mu["opt"],
                     rnd(mu["root_ratio"], 2) + star(mu, "p_root"), rnd(mu["hit"], 0)])
    write_table(rows, header, "table9_sensitivity.csv")

    say("\nTable 9, text of Section 4.3:")
    m = load_main([MAIN_SMALL[BAH]]).set_index("Instance")
    for v in SENSITIVITY_VARIANTS:
        x = S[(S["family"] == BAH) & (S["variant"] == v)].set_index("instance")
        c = m.loc[x.index, "Vanilla Time"]
        say(f"  {SENSITIVITY_LABELS[v]:22s} Classic / setting time ratio {rnd(gmean(c / x['time']), 2)}, "
            f"p={wilcoxon(c, x['time']).pvalue:.2g}")
    worst = max(sv[f][v]["ub_diff"] for f in FAMILIES for v in SENSITIVITY_VARIANTS)
    say(f"  largest objective difference between a setting and Full among instances solved by both: "
        f"{rnd(worst, 2)}% (BAHCECI: {rnd(max(sv[BAH][v]['ub_diff'] for v in SENSITIVITY_VARIANTS), 2)}%)")
    fa = A[(A["variant"] == "full") & (A["seed"] == 42)].set_index("instance")
    fs = S[S["variant"] == "full"].set_index("instance").loc[fa.index]
    say(f"  Full (sensitivity) vs Full (ablation): HENN root solved {fs[fs.family == HENN].root_time.notna().sum()} "
        f"vs {fa[fa.family == HENN].root_time.notna().sum()}")

    # ---------------- time limits (main experiments)
    say("\nSolved instances under shorter time limits (main experiments, Classic / Hybrid)")
    for f, limits in [(HENN, [1200, 1800, 3600]), (MUTER, [600, 1200, 1800, 3600])]:
        m = load_main(MAIN_ALL[f])
        cells = []
        for T in limits:
            c = int(((m["Vanilla Gap"] <= 1 + 1e-9) & (m["Vanilla Time"] <= T)).sum())
            h = int(((m["Adaptive Gap"] <= 1 + 1e-9) & (m["Adaptive Time"] <= T)).sum())
            cells.append(f"{T} s: {c} / {h}")
        say(f"  {f}: " + ";  ".join(cells))
    m = load_main(MAIN_ALL[BAH])
    say(f"  {BAH}: largest solution time Classic {rnd(m['Vanilla Time'].max(), 1)} s, "
        f"Hybrid {rnd(m['Adaptive Time'].max(), 1)} s")

    # ---------------- phase times (Section 4.4)
    say("\nPhase times (Full of the sensitivity experiment, Section 4.4)")
    for f in FAMILIES:
        g = S[(S["family"] == f) & (S["variant"] == "full")]
        say(f"  {f}: heuristic {rnd(g['heur_time'].sum() / g['cg_iter'].sum(), 3)} s per CG iteration, "
            f"exact {rnd(g['exact_time'].sum() / g['exact_calls'].sum(), 2)} s per call")

    with open(os.path.join(OUT, "text_numbers.txt"), "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")


if __name__ == "__main__":
    main()
