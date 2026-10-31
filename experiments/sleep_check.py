"""Finds ablation runs that overlapped a period in which the computer was asleep.

While the computer sleeps, the wall clock keeps running but the solver does not, so a run
that was in progress loses part of its time budget and reports a wrong running time. Such
runs must be discarded and repeated.

  python experiments/sleep_check.py --show-sleep            # list sleep/wake events (Windows)
  python experiments/sleep_check.py --from "2026-10-31 01:10" --to "2026-10-31 06:25"
  python experiments/sleep_check.py --from ... --to ... --remove   # drop those runs (backup kept)

The end time of a run is the modification time of its trace file; its start time is the end
time minus the recorded wall-clock duration.
"""
import argparse, csv, datetime as dt, os, shutil, subprocess

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(ROOT, "results", "ablation")
RUNS = os.path.join(OUT, "ablation_runs.csv")

p = argparse.ArgumentParser()
p.add_argument("--show-sleep", action="store_true")
p.add_argument("--from", dest="t0")
p.add_argument("--to", dest="t1")
p.add_argument("--remove", action="store_true")
a = p.parse_args()

if a.show_sleep:
    ps = ("Get-WinEvent -FilterHashtable @{LogName='System'; Id=42,107,1,506,507} -MaxEvents 30 | "
          "Select-Object TimeCreated,Id,ProviderName | Format-Table -AutoSize | Out-String -Width 200")
    print(subprocess.run(["powershell.exe", "-NoProfile", "-Command", ps], capture_output=True, text=True).stdout)
    print("Id 42 / 506 = going to sleep;  Id 107 / 1 / 507 = waking up")
    raise SystemExit

t0 = dt.datetime.fromisoformat(a.t0).timestamp()
t1 = dt.datetime.fromisoformat(a.t1).timestamp()
rows = list(csv.DictReader(open(RUNS, newline="")))
bad, keep = [], []
for r in rows:
    trace = os.path.join(OUT, "traces", f"{r['instance']}__{r['variant']}__{r['seed']}.json.gz")
    if r["status"] != "ok" or not os.path.exists(trace):
        bad.append((r, "not ok / no trace")); continue
    end = os.path.getmtime(trace); start = end - float(r["wall_clock"])
    if start < t1 and end > t0:
        bad.append((r, f"{dt.datetime.fromtimestamp(start):%H:%M} - {dt.datetime.fromtimestamp(end):%H:%M}"))
    else:
        keep.append(r)
print(f"{len(rows)} rows, {len(bad)} affected:")
for r, why in bad:
    print(f"  {r['instance']:<22} {r['variant']:<6} seed={r['seed']:<5} time={r.get('time')}  [{why}]")
if a.remove and bad:
    shutil.copy(RUNS, RUNS + ".bak")
    with open(RUNS, "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=list(rows[0].keys())); w.writeheader(); w.writerows(keep)
    for r, _ in bad:
        t = os.path.join(OUT, "traces", f"{r['instance']}__{r['variant']}__{r['seed']}.json.gz")
        if os.path.exists(t): os.remove(t)
    print(f"removed {len(bad)} rows (backup: {RUNS}.bak); they will be re-run on the next start")
