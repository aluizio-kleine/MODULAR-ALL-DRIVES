---
name: daily-brief
description: Daily supplier stand-up for the Modular All Drives Test System. Use when the user asks for a brief, summary, "what do I need to do today", morning update, action items, or the current status of supplier contacts. Reads the supplier tracker and produces a short, scannable brief of open actions and supplier status, then collects the user's verbal updates and writes them back to the tracker.
---

# Daily Brief — Modular All Drives supplier stand-up

Give the user a fast, scannable brief of (1) what they need to do today and
(2) where each supplier stands, then take their spoken updates and apply them
to the tracker.

Keep it tight. This is a morning stand-up, not a report. No preamble, no
restating these instructions — open directly with the brief.

## Data sources (read these every run — do not rely on memory)

1. `SUPPLIERS/SUPPLIERS.xlsx` — sheet `Suppliers`. The master tracker. Columns:
   Region, Supplier, Contact Name(s), Email(s), Outreach Status, Meeting Date,
   Pugh Rank, Quote / Next Step, Notes. The "Quote / Next Step" and "Notes"
   columns hold the actionable content.
2. The `## Supplier status memory` section of `CLAUDE.md` — durable decisions
   (e.g. suppliers that declined) that must stay consistent with the tracker.
3. Today's date comes from the `# currentDate` context line. Use it to compute
   how long items have been waiting.

Read the spreadsheet with openpyxl (install first if missing):

```bash
python3 - <<'PY'
import openpyxl
wb = openpyxl.load_workbook("SUPPLIERS/SUPPLIERS.xlsx")
ws = wb["Suppliers"]
for r in ws.iter_rows(min_row=2, values_only=True):
    if r[1]:
        print(r[0] or "", "|", r[1], "|", r[4], "|", r[7], "|", (r[8] or "")[:80])
PY
```

## Status vocabulary (from the tracker legend)

- `MET` — meeting held, active in process
- `EMAIL SENT` — awaiting reply
- `DECLINED` / `DISQUALIFIED` — out of process (do not chase; list only under a
  short "Out" line)

## How to build the brief

Produce three short sections, in this order:

### 1. Today — <date>
One line setting the scene (e.g. "3 suppliers waiting on WEG, 8 on them, 3 out").

### 2. Actions I need to do
A short checklist of only the items where **the ball is in WEG's / the user's
court** — i.e. "Quote / Next Step" or Notes that say WEG must send something,
reply, sign, schedule, or prepare. Order by urgency. For each: `Supplier — the
action` and, if the item has been idle a while, tag it `(waiting Nd)`.
Skip suppliers where WEG is only waiting on the supplier — those belong in the
status section, not here. If there are no WEG-side actions, say so plainly.

### 3. Supplier status (grouped by region)
One line per active supplier: `Supplier — STATUS — next step`. Collapse the
`DECLINED`/`DISQUALIFIED` ones into a single trailing "Out:" line. Keep the
whole section skimmable in a few seconds.

Then end with one line inviting updates, e.g.:
"Tell me what changed and I'll update the tracker."

## Applying the user's updates

When the user replies with updates (a supplier replied, a meeting happened, a
quote arrived, someone declined, a new next step):

1. Apply each change to the matching row in `SUPPLIERS/SUPPLIERS.xlsx` —
   preserve the existing cell formatting (copy font/fill/alignment from a row
   that already has the target status; e.g. reuse a `MET` row's colour when
   setting `MET`, a `DECLINED` row's colour when setting `DECLINED`).
2. Bump the "Updated:" date in the sheet's title row (row 1) to today.
3. If a change is a durable decision (a supplier declines/disqualifies, or a
   final ranking is set), also update the `## Supplier status memory` section
   of `CLAUDE.md` so the two stay in sync.
4. Commit and push to the working branch with a clear message. Do NOT open a
   pull request unless asked.
5. Confirm back in one or two lines what you changed — don't re-print the whole
   brief unless asked.

## Style

- Lead with the brief immediately; no "Here is your brief" throat-clearing.
- Bullets and short lines over paragraphs.
- Never invent status. If the tracker is silent on something, say it's unknown.
- If the user just wants status (not actions), or just actions, honour that and
  show only the section they asked for.
