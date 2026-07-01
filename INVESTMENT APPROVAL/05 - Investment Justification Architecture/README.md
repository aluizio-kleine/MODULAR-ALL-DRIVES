# 05 — Investment Justification Architecture (A/B/C and D/E/F)

## Objective

Build the architecture that justifies the investment in Modular All Drives,
covering **all requirements, production, and budget**, split into the two
system scopes:
- **Modular All Drives Small (A/B/C system)** — the current, in-progress
  scope: Orion (CFW600) A/B/C, CFW900 A/B/C, CFW11 A/B/C, CFW500 D/E. Existing
  scope docs and supplier quotes so far all target this system.
- **Modular All Drives Medium (D/E/F system)** — the "Medium Drives" system:
  Orion (CFW600) D/E/F, CFW900 C/D/E, CFW11 C/D/E — higher power, current,
  and physical size. Note the overlap at size C for CFW900/CFW11 (boundary
  size, testable on either system). Scope to be sent by Aluizio.

## Why it matters

This is the synthesis document/deck that a Gate committee actually reads. It
pulls together everything else in this folder into one coherent case, per
system:

| Section | Small system (Orion A/B/C, CFW900 A/B/C, CFW11 A/B/C, CFW500 D/E) | Medium system (Orion D/E/F, CFW900 C/D/E, CFW11 C/D/E) |
|---|---|---|
| Requirements | `Modular All Drives Test System Definitions .docx` (updated) | Pending scope from Aluizio |
| Production volume | Workstream 02 | Pending — new scope, own volume data needed |
| Technical risk | Workstream 01 (firmware) | To reassess once D/E/F scope known — likely still applies |
| Space savings | Workstream 04 | Pending — likely larger footprint reduction given bigger current stations |
| Budget | `QUOTATIONS/` (MASMEC quote received; others pending) | Pending — no quotes yet at medium-system scale |
| Alternative comparison | `PRESENTATIONS/investment-justification-lim-vs-modular.html` (LIM can't cover this anyway — reinforces the case) | LIM even less applicable at medium-system scale (lower current ceiling) |

Note the CFW900/CFW11 size-**C** overlap between the two systems — the
volume analysis in workstream 02 should be able to split size-C volume
between the two systems if/when needed (e.g. by whichever criteria WEG uses
to route a size-C order to one line or the other), or treat it as shared
capacity if no such routing exists.

## Proposed architecture for the document/deck

1. **Executive summary** — one-page ask: budget requested, payback period,
   the two-system phasing (A/B/C now, D/E/F later or in parallel).
2. **Problem statement** — current process limitations (manual/legacy test
   stations, LIM's coverage/current/scale ceiling).
3. **Proposed solution** — Modular All Drives concept, per system scope.
4. **Requirements** — condensed from the scope docs, per system.
5. **Volume & throughput case** — workstream 02 output, target cadence.
6. **Technical risks & open items** — workstream 01 (firmware) and anything
   else unresolved at gate time.
7. **Space impact** — workstream 04 output.
8. **Budget** — supplier quotes received so far, cost range, phasing.
9. **Recommendation & decision ask** — what you need the gate to approve.

## Status: 🔲 Not started — depends on 01–04 outputs, D/E/F scope, and supplier quotes

Build this only once at least the small-system (A/B/C) inputs are in
reasonable shape — it can go to Gate 1 with placeholders/estimates flagged
for the pieces still pending, per the gate framework once shared.
