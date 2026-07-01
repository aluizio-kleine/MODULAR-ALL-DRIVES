# 02 — Production Volumes: CFW900 and CFW11 (mechanics A–E)

## Objective

Get the **yearly production volume** of CFW900 and CFW11, broken down by
mechanical size (A, B, C, D, E), to help justify the Modular All Drives
investment.

Confirmed scope split (01/07/2026): CFW900 and CFW11 sizes **A, B, C** belong
to the **Small system**, sizes **C, D, E** belong to the **Medium system**
(size C is shared/boundary between the two). So this workstream should
produce volume by size A–E for both families, then let workstream 05 slice it
per system.

## Why it matters for the investment case

Volume is the throughput requirement that sizes the whole line: number of
load-test modules needed in parallel, cycle-time targets, and the
break-even/payback calculation against the current process. The existing
`PRESENTATIONS/investment-justification-lim-vs-modular.html` briefing already
uses a **~900 drives/day at year-5 cruising speed** figure (source: Alissonn,
Bosch meeting 2026-06-17) for the combined portfolio — this workstream should
confirm/refine that figure specifically for CFW900 + CFW11, by mechanical
size, since size drives which fixture types and how many of each are needed.

## What's needed (blocked — data, not in this repo)

The repo's `ORION and similars power and mechanical specifications/` files
(`CFW900.xlsx`, `CFW11.xlsx`, `TABELA TENSOES E CORRENTES ORION.xlsx`) are
**BOM/material master data** (product code, mechanical size, current,
voltage) — they do **not** contain yearly production quantities. This needs
an export from **SAP / production BI**, by product family + mechanical size
+ year (ideally last 2–3 years actuals + forecast to year 5).

## Suggested next step

1. Pull a SAP/BI report: quantity produced per year, filtered to CFW900 and
   CFW11, grouped by mechanical size.
2. Drop the export into `data/` in this folder (CSV or XLSX).
3. Tell me and I'll build the volume analysis (totals, size mix, trend,
   comparison to the ~900/day year-5 assumption already in the LIM briefing).

## Status: 🔲 Not started — awaiting SAP/BI export in `data/`
