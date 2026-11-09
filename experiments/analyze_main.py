"""Reproduces the results of the main experiments reported in Section 4.2 and 4.4 of the paper
(Tables 2, 3, 4, 6 and 10, Figure 2, the statistical tests and the numbers quoted in the text)
from the reports in results/ ("Final Report Benchmark*.csv").

Usage (from the repository root):
  python experiments/analyze_main.py
Outputs are printed and written to results/main_analysis/ (table2.csv, table3.csv, table4.csv,
table6.csv, table10.csv, text_numbers.txt and figure2.jpg).

Definitions (as in Section 4.1 of the paper):
  solved            final gap <= 1% (the stopping tolerance)
  Table 2           #OPT, mean time (s) and mean gap (%) per group
  Table 3           Faster: hybrid time <= 0.95 x classic time; Lower Gap: hybrid gap at least one
                    percentage point lower; Better LB: hybrid lower bound larger; Newly Solved:
                    solved by the hybrid method only
  Table 4           mean number of iterations in which the heuristic found a column with negative
                    reduced cost; mean of the per-instance success rate; share of instances with
                    more CG iterations for the hybrid method; mean difference of CG iterations
  Table 6           median, quartiles, min-max and SD of time; median and quartiles of the gap
  Table 10          per number of orders; MUTER_ONCAN restricted to capacities 24 and 36, which
                    exist for every number of orders (capacity 48 only up to 60 orders);
                    root solved = final lower bound > 0
  tests             paired Wilcoxon signed-rank test (times), exact McNemar test (solved
                    instances), 95% confidence interval of the geometric mean time ratio from the
                    t-distribution of the log ratios
  Figure 2          (a) performance profile of the solution time over all instances (instances
                    not solved by a method count as unsolved for that method); (b) empirical
                    cumulative distribution of the final gap for HENN and MUTER_ONCAN
  numbers are rounded half up.
"""

import os
import re
from decimal import Decimal, ROUND_HALF_UP

import numpy as np
import pandas as pd
from scipy.stats import binomtest, t as t_dist, wilcoxon

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
RES = os.path.join(ROOT, "results")
OUT = os.path.join(RES, "main_analysis")
GROUPS = [("BAHCECI_ONCAN", "Small", "Benchmark1_Small"),
          ("HENN", "Small", "Benchmark2_Small"), ("HENN", "Medium", "Benchmark2_Medium"),
          ("HENN", "Large", "Benchmark2_Large "),
          ("MUTER_ONCAN", "Small", "Benchmark3_Small"), ("MUTER_ONCAN", "Medium", "Benchmark3_Medium"),
          ("MUTER_ONCAN", "Large", "Benchmark3_Large")]
TOL = 1.0
lines = []


def say(text=""):
    print(text)
    lines.append(text)


def rnd(x, digits=0):
    return str(Decimal(repr(float(x))).quantize(Decimal(1).scaleb(-digits), rounding=ROUND_HALF_UP))


def gmean(x):
    return float(np.exp(np.mean(np.log(np.asarray(x, float)))))


def solved(d, method):
    return d[f"{method} Gap"] <= TOL + 1e-9


def write_table(rows, header, name, title):
    pd.DataFrame(rows, columns=header).to_csv(os.path.join(OUT, name), index=False)
    say(f"\n{title}")
    widths = [max(len(str(c)), *(len(str(r[i])) for r in rows)) for i, c in enumerate(header)]
    say(" | ".join(str(c).ljust(w) for c, w in zip(header, widths)))
    for r in rows:
        say(" | ".join(str(c).ljust(w) for c, w in zip(r, widths)))


def bahceci_orders(names):
    """Number of orders of the BAHCECI_ONCAN instances, read from the instance files."""
    out = {}
    for n in names:
        with open(os.path.join(ROOT, "data", "BahceciOencan", n + ".txt"), encoding="latin-1") as f:
            out[n] = int(re.search(r"NUM_ORDERS\s*:\s*(\d+)", f.read()).group(1))
    return out


def figure2(D, path):
    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt
    from matplotlib.lines import Line2D
    from matplotlib.ticker import FixedFormatter, FixedLocator, NullLocator
    plt.rcParams.update({"font.family": "serif", "font.size": 17,
                         "font.serif": ["Times New Roman", "Liberation Serif", "DejaVu Serif"]})
    c_col, h_col = "#4C72B0", "#C44E52"
    allr = pd.concat(D.values(), ignore_index=True)
    fig, (ax_l, ax_r) = plt.subplots(1, 2, figsize=(20, 10))
    tc = np.where(solved(allr, "Vanilla"), allr["Vanilla Time"], np.inf)
    th = np.where(solved(allr, "Adaptive"), allr["Adaptive Time"], np.inf)
    best = np.minimum(tc, th)
    taus = np.logspace(0, np.log10(20), 500)
    for t, col, lab in [(tc, c_col, "Classic"), (th, h_col, "Hybrid")]:
        with np.errstate(invalid="ignore", divide="ignore"):
            r = np.where(np.isfinite(t), t / best, np.inf)
        ax_l.plot(taus, [(r <= x).mean() * 100 for x in taus], color=c_col if lab == "Classic" else h_col,
                  lw=4, label=lab)
    ax_l.set_xscale("log"); ax_l.set_xlim(1, 20); ax_l.set_ylim(0, 101)
    ax_l.xaxis.set_major_locator(FixedLocator([1, 1.5, 2, 5, 10, 20]))
    ax_l.xaxis.set_major_formatter(FixedFormatter(["1", "1.5", "2", "5", "10", "20"]))
    ax_l.xaxis.set_minor_locator(NullLocator())
    ax_l.set_xlabel("Performance ratio τ (time / best time)")
    ax_l.set_ylabel("Instances solved within τ (%)")
    ax_l.legend(loc="lower right")
    ax_l.set_title(f"(a) Performance profile of solution time\n(all {len(allr):,} instances)", y=-0.24, fontsize=24)
    fams = {f: pd.concat([d for (ff, _), d in D.items() if ff == f], ignore_index=True)
            for f in ("HENN", "MUTER_ONCAN")}
    for fam, ls in [("HENN", "-"), ("MUTER_ONCAN", "--")]:
        for col, c in [("Vanilla Gap", c_col), ("Adaptive Gap", h_col)]:
            x = np.sort(fams[fam][col].values)
            y = np.arange(1, len(x) + 1) / len(x) * 100
            ax_r.step(np.r_[0, x], np.r_[0, y], where="post", color=c, ls=ls, lw=4)
    ax_r.set_xlim(0, 101); ax_r.set_ylim(0, 101)
    ax_r.set_xlabel("Final optimality gap (%)")
    ax_r.set_ylabel("Cumulative share of instances (%)")
    h1 = [Line2D([], [], color=c_col, lw=4, label="Classic"), Line2D([], [], color=h_col, lw=4, label="Hybrid")]
    h2 = [Line2D([], [], color="black", lw=4, ls="-", label=f"HENN ({len(fams['HENN'])} instances)"),
          Line2D([], [], color="black", lw=4, ls="--", label=f"MUTER_ONCAN ({len(fams['MUTER_ONCAN'])} instances)")]
    lg = ax_r.legend(handles=h1, loc="upper left"); ax_r.add_artist(lg)
    ax_r.legend(handles=h2, loc="upper left", bbox_to_anchor=(0, 0.80))
    ax_r.set_title("(b) Cumulative distribution of the final optimality gap\n(HENN and MUTER_ONCAN)",
                   y=-0.24, fontsize=24)
    for ax in (ax_l, ax_r):
        ax.grid(True, color="#dddddd"); ax.set_axisbelow(True)
        for s in ax.spines.values():
            s.set_linewidth(5); s.set_color("black")
    plt.tight_layout(w_pad=4)
    fig.savefig(path, dpi=120, pil_kwargs={"quality": 95})
    plt.close(fig)


def main():
    os.makedirs(OUT, exist_ok=True)
    D = {(f, s): pd.read_csv(os.path.join(RES, f"Final Report {b}.csv")) for f, s, b in GROUPS}
    say(f"instances: {sum(len(d) for d in D.values())}")

    # Table 2
    rows = []
    for (f, s), d in D.items():
        k = 2 if f == "BAHCECI_ONCAN" else 0
        rows.append([f, s, len(d), int(solved(d, "Vanilla").sum()), int(solved(d, "Adaptive").sum()),
                     rnd(d["Vanilla Time"].mean(), k), rnd(d["Adaptive Time"].mean(), k),
                     rnd(d["Vanilla Gap"].mean()), rnd(d["Adaptive Gap"].mean())])
    write_table(rows, ["Benchmark", "Size", "# Instance", "#OPT (Classic)", "#OPT (Hybrid)", "Mean Time (Classic)",
                       "Mean Time (Hybrid)", "Mean Gap (Classic)", "Mean Gap (Hybrid)"], "table2.csv", "Table 2")

    # Table 3
    rows = []
    for (f, s), d in D.items():
        rows.append([f, s, rnd((d["Adaptive Time"] <= 0.95 * d["Vanilla Time"]).mean() * 100),
                     rnd((d["Adaptive Gap"] <= d["Vanilla Gap"] - 1).mean() * 100),
                     rnd((d["Adaptive LB"] > d["Vanilla LB"] + 1e-9).mean() * 100),
                     int((solved(d, "Adaptive") & ~solved(d, "Vanilla")).sum())])
    write_table(rows, ["Benchmark", "Size", "Faster Instance (%)", "Lower Gap (%)", "Better LB (%)",
                       "Newly Solved Instances"], "table3.csv", "Table 3")

    # Table 4
    rows = []
    for (f, s), d in D.items():
        rows.append([f, s, rnd(d["Adaptive Heur Calls"].mean()), rnd(d["Heur Success %"].mean()),
                     rnd((d["Adaptive CG Iter"] > d["Vanilla CG Iter"]).mean() * 100),
                     rnd((d["Adaptive CG Iter"] - d["Vanilla CG Iter"]).mean())])
    write_table(rows, ["Benchmark", "Size", "Mean Successful Heuristic Calls", "Heuristic Success Rate (%)",
                       "Instances with more CG Iteration (%)", "Additional CG Iterations"], "table4.csv", "Table 4")

    # Table 6
    rows = []
    for (f, s), d in D.items():
        k = 2 if f == "BAHCECI_ONCAN" else 0
        for lab, m in (("Classic", "Vanilla"), ("Hybrid", "Adaptive")):
            t, g = d[f"{m} Time"], d[f"{m} Gap"]
            rows.append([f, s, lab, rnd(t.median(), k), f"{rnd(t.quantile(.25), k)}–{rnd(t.quantile(.75), k)}",
                         f"{rnd(t.min(), k)}–{rnd(t.max(), k)}", rnd(t.std(ddof=1), k), rnd(g.median(), 1),
                         f"{rnd(g.quantile(.25), 1)}–{rnd(g.quantile(.75), 1)}"])
    write_table(rows, ["Benchmark", "Size", "Method", "Time Median (s)", "Time Q1–Q3", "Time Min–Max", "Time SD",
                       "Gap Median (%)", "Gap Q1–Q3"], "table6.csv", "Table 6")

    # Table 10
    rows = []
    henn = pd.concat([D[("HENN", s)] for s in ("Small", "Medium", "Large")])
    muter = pd.concat([D[("MUTER_ONCAN", s)] for s in ("Small", "Medium", "Large")])
    henn = henn.assign(orders=henn["Instance"].str.split("-").str[1].astype(int))
    muter = muter.assign(orders=muter["Instance"].str.split("_").str[0].astype(int),
                         cap=muter["Instance"].str.split("_").str[1].astype(int))
    muter = muter[muter["cap"].isin([24, 36])]
    for fam, d in (("HENN", henn), ("MUTER_ONCAN", muter)):
        for o, g in d.groupby("orders"):
            rows.append([fam, o, len(g), f"{int(solved(g, 'Vanilla').sum())} / {int(solved(g, 'Adaptive').sum())}",
                         f"{int((g['Vanilla LB'] > 0).sum())} / {int((g['Adaptive LB'] > 0).sum())}",
                         f"{rnd(g['Vanilla Gap'].mean())} / {rnd(g['Adaptive Gap'].mean())}",
                         f"{rnd(g['Vanilla CG Iter'].mean())} / {rnd(g['Adaptive CG Iter'].mean())}"])
    write_table(rows, ["Benchmark", "Orders", "# Instance", "#OPT (C / H)", "Root solved (C / H)",
                       "Mean Gap % (C / H)", "Mean CG Iter. (C / H)"], "table10.csv", "Table 10")

    # Section 4.2.1: BAHCECI_ONCAN
    b = D[("BAHCECI_ONCAN", "Small")]
    lr = np.log(b["Adaptive Time"] / b["Vanilla Time"])
    half = t_dist.ppf(0.975, len(lr) - 1) * lr.std(ddof=1) / np.sqrt(len(lr))
    say("\nSection 4.2.1 (BAHCECI_ONCAN)")
    say(f"  mean time reduction: {rnd(100 * (1 - b['Adaptive Time'].mean() / b['Vanilla Time'].mean()))}%")
    say(f"  Wilcoxon signed-rank test (times): p = {wilcoxon(b['Adaptive Time'], b['Vanilla Time']).pvalue:.2g}")
    say(f"  geometric mean of time ratio Hybrid/Classic: {rnd(np.exp(lr.mean()), 2)}, "
        f"95% CI [{rnd(np.exp(lr.mean() - half), 2)}, {rnd(np.exp(lr.mean() + half), 2)}]")

    # Section 4.2.2: McNemar
    say("\nSection 4.2.2 (exact McNemar test on solved instances)")
    for (f, s), d in D.items():
        if f == "BAHCECI_ONCAN":
            continue
        h_only = int((solved(d, "Adaptive") & ~solved(d, "Vanilla")).sum())
        c_only = int((solved(d, "Vanilla") & ~solved(d, "Adaptive")).sum())
        p = binomtest(h_only, h_only + c_only, 0.5).pvalue if h_only + c_only else 1.0
        say(f"  {f} {s}: solved by Hybrid only {h_only}, by Classic only {c_only}, p = {p:.2g}")

    # Section 4.2.4: Figure 2 numbers
    allr = pd.concat(D.values(), ignore_index=True)
    n = len(allr)
    tc = allr["Vanilla Time"].where(solved(allr, "Vanilla"))
    th = allr["Adaptive Time"].where(solved(allr, "Adaptive"))
    best = pd.concat([tc, th], axis=1).min(axis=1)
    rc, rh = tc / best, th / best
    say("\nSection 4.2.4 (Figure 2)")
    say(f"  fastest method: Hybrid {rnd(100 * (rh <= 1).sum() / n)}%, Classic {rnd(100 * (rc <= 1).sum() / n)}%; "
        f"solved by neither: {rnd(100 * best.isna().sum() / n)}%")
    say(f"  within 1.5 x best time: Hybrid {rnd(100 * (rh <= 1.5).sum() / n)}%, Classic {rnd(100 * (rc <= 1.5).sum() / n)}%")
    say(f"  solved (final height): Hybrid {rnd(100 * th.notna().sum() / n)}%, Classic {rnd(100 * tc.notna().sum() / n)}%")
    for fam in ("HENN", "MUTER_ONCAN"):
        d = pd.concat([D[k] for k in D if k[0] == fam])
        xs = np.linspace(0, 100, 2001)
        below = any((d["Adaptive Gap"] <= x).mean() < (d["Vanilla Gap"] <= x).mean() - 1e-12 for x in xs)
        say(f"  {fam}: gap below 100%: Hybrid {int((d['Adaptive Gap'] < 100 - 1e-9).sum())}, "
            f"Classic {int((d['Vanilla Gap'] < 100 - 1e-9).sum())} of {len(d)}; Hybrid curve below Classic: {below}")

    # Section 4.4: BAHCECI_ONCAN by number of orders
    b = b.assign(orders=b["Instance"].map(bahceci_orders(b["Instance"])))
    say("\nSection 4.4 (BAHCECI_ONCAN by number of orders)")
    for o, g in b.groupby("orders"):
        say(f"  {o} orders ({len(g)} instances): median time Classic {rnd(g['Vanilla Time'].median(), 2)} s, "
            f"Hybrid {rnd(g['Adaptive Time'].median(), 2)} s; geometric mean ratio "
            f"{rnd(gmean(g['Adaptive Time'] / g['Vanilla Time']), 2)}")

    figure2(D, os.path.join(OUT, "figure2.jpg"))
    say("\nFigure 2 written to results/main_analysis/figure2.jpg")
    with open(os.path.join(OUT, "text_numbers.txt"), "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")


if __name__ == "__main__":
    main()
