# 03 — China LIM Load Test Analysis (cycle-time reduction)

## Objective

Evaluate and analyze the **load test on the China LIM system**, to (a) find
ways to **reduce test time**, (b) build **predictions** (of cycle time /
throughput impact), and (c) use the findings to help justify the Modular All
Drives investment.

## Why it matters for the investment case

`PRESENTATIONS/investment-justification-lim-vs-modular.html` already argues
Modular All Drives beats LIM on **product coverage** (LIM can't test CFW900/
CFW11/CFW500), **current capacity** (LIM tops out ~39 A vs. 60 A needed), and
**scalability** (LIM fixed at 288/day vs. MAD's modular scaling). This
workstream adds a **fourth angle**: even where LIM *can* run today, how much
of its load-test cycle time is avoidable, and does reducing it change the
economics enough to matter — or does it reinforce that MAD's modular load
stations (parallelizable, per the test spec: load test ≈20 min/cycle) are
still the better investment at target volume.

Concretely this should produce:
- Current LIM load-test cycle time breakdown (ramp-up, steady-state duration,
  ramp-down, data handling/overhead).
- Which steps can be shortened (e.g., is the 50°C heated-cabin soak time
  longer than necessary, is there dead time between units) and by how much.
- A prediction: if X% of cycle time is cut, what does LIM's effective daily
  throughput become — and how does that compare to the ~900/day year-5 target
  and to Modular All Drives' modular load-station scaling.

## What's needed (blocked — data, not in this repo)

Nothing in this repo currently documents LIM's actual test process or timing
data. Needed:
1. LIM load-test **cycle-time log/data** (actual run times, ideally per
   product family/mechanical size) — from the China LIM system or its
   operators.
2. LIM's current **load-test recipe/parameters** (ramp times, soak duration,
   temperature profile) for comparison against the Modular All Drives spec
   (Load Test Module: ≤20 min cycle, up to 60 A, 220/440/575 V, cabin to 50°C
   — see `Modular All Drives Test System Definitions .docx`).
3. Daily/weekly throughput actuals from LIM, if available, to sanity-check
   against the 288/day figure already used in the LIM briefing.

## Suggested next step

Request the cycle-time log and recipe parameters from whoever operates the
China LIM system. Drop the export into `data/` in this folder, and let me
know — I'll build the time-reduction analysis and the throughput prediction,
and fold the result into the LIM-vs-Modular comparison already in
`PRESENTATIONS/investment-justification-lim-vs-modular.html`.

## Status: 🔲 Not started — awaiting LIM cycle-time data in `data/`
