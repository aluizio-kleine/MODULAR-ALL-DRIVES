# Investment Approval — Modular All Drives Test System

This folder organizes everything needed to justify and approve the investment
in the Modular All Drives test system, structured for a gated (Gate 1 / Gate
2) approval process.

## Why this structure

The 7 requests break into two kinds of work:
- **Inputs** (01–04): data-gathering and technical verification tasks. Each
  produces a finding or a number that feeds the investment case.
- **Outputs** (05–07): the investment case itself, the gate decks built from
  it, and getting the gates in front of the decision-makers.

Folders are numbered in dependency order — each output folder consumes the
inputs above it:

```
01 Firmware Versioning Risk ───┐
02 Production Volumes ─────────┼──► 05 Investment Justification ──► 06 Gate 1/2 ──► 07 Schedule
03 China LIM Load Test Analysis┤        Architecture                  Presentations     Meetings
04 Factory Space Simulation ───┘
```

- **01 (Firmware risk)** feeds the investment case as a *technical risk /
  open item*, not a cost number — it belongs in the "risks" section of 05 and
  in the gate decks regardless of its answer.
- **02, 03, 04** each produce a number or a curve that 05 needs directly:
  volume (02) sizes the throughput requirement, LIM analysis (03) sizes/
  justifies the load-test time reduction, and 04 quantifies the space saving.
- **05** is the synthesis: one investment architecture, split into the two
  systems (confirmed 01/07/2026) — **Modular All Drives Small**: Orion
  (CFW600) A/B/C, CFW900 A/B/C, CFW11 A/B/C, CFW500 D/E; and **Modular All
  Drives Medium**: Orion (CFW600) D/E/F, CFW900 C/D/E, CFW11 C/D/E (higher
  power, current, size — scope to follow). CFW900/CFW11 size C is shared
  between the two systems.
- **06** turns 05 into the two gate decks.
- **07** gets 06 in front of the managers/team.

## Status tracker

| # | Folder | Status | Blocked on |
|---|--------|--------|------------|
| 01 | Firmware Versioning Risk (Orion) | 🔲 Not started | Internal answer from WEG firmware/product team on CFW600 frozen-FW policy |
| 02 | Production Volumes (CFW900, CFW11) | 🔲 Not started | Yearly production data by mechanical size (SAP/BI export) |
| 03 | China LIM Load Test Analysis | 🔲 Not started | LIM current cycle-time/throughput data |
| 04 | Factory Space Reduction Simulation | 🔲 Not started | Current line footprint (layout/floor plan) |
| 05 | Investment Justification Architecture | 🔲 Not started | Outputs of 01–04 + supplier quotes (see `QUOTATIONS/`) |
| 06 | Gate 1 and Gate 2 Presentations | 🔲 Not started | Gate framework/criteria (to be sent by Aluizio) + output of 05 |
| 07 | Gate Meetings Scheduling | 🔲 Not started | Output of 06; no calendar/email tool available — deliverable here is invite text + agenda, not a booked meeting |

Update the status column as work progresses (🔲 Not started → 🟡 In progress
→ ✅ Done → ⛔ Blocked).

## Related existing material (don't duplicate — build on these)

- `PRESENTATIONS/investment-justification-lim-vs-modular.html` — existing
  LIM-vs-Modular manager briefing; reuse its theme/structure for 05 and 06.
- `c--Users-aluizio-Desktop-Aluizio-2026-04-ORION/memory/project_modular_all_drives.md`
  — full technical scope memory (products, modules, requirements).
- `QUOTATIONS/` — supplier quotes and comparison so far (budget input for 05).
- `SUPPLIERS/SUPPLIERS.xlsx` — supplier tracker (budget/timeline input for 05).
- `ORION and similars power and mechanical specifications/` — BOM/product
  master data (CFW900.xlsx, CFW11.xlsx, TABELA TENSOES E CORRENTES ORION.xlsx)
  — material-level data only, **not** yearly production volumes (see 02).
