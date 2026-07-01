# 04 — Factory Space Reduction Simulation

## Objective

Simulate the reduction in factory floor space achieved by moving to the
Modular All Drives concept, compared to the current test process footprint.

## Why it matters for the investment case

Floor space freed up is a direct, quantifiable investment benefit (reusable
for other lines, or avoided facility expansion) and a strong Gate-deck visual
— a simple before/after floor-plan comparison lands well with managers.
Modular All Drives is explicitly designed to be compact (see
`Modular All Drives Test System Definitions .docx`, "General Characteristics
for the Modules": *"mechanical design of the modules shall be as compact as
possible considering factory floor space savings"*), so this should be a
favorable comparison — the simulation just needs to quantify it.

## What's needed (blocked — data, not in this repo)

1. **Current process footprint**: floor plan / layout drawing (or at minimum
   length × width per station) of today's test line(s) for CFW600, CFW900,
   CFW11, CFW500 — however many separate stations exist today.
2. **Modular All Drives footprint**: once suppliers finalize mechanical
   design (dimensions per module + conveyor runs), this becomes available
   from their proposals. Until then, use the module count from the process
   flow (1 hipot+functional module + N load modules, scaled to volume from
   workstream 02) and an approximate module footprint from the concept
   drawings already shared with suppliers, as a placeholder estimate.

## Suggested next step

1. Get the current line's floor plan/dimensions (facilities or industrial
   engineering should have this) — drop into `data/`.
2. Once at least one supplier's mechanical layout proposal is available
   (check `QUOTATIONS/`), use its module footprint as the "future state"
   input; until then, flag any space numbers in the Gate decks as
   preliminary/estimate.
3. I'll build a simple before/after m² comparison (and a floor-plan sketch if
   useful) once both inputs are available.

## Status: 🔲 Not started — awaiting current floor plan in `data/`
