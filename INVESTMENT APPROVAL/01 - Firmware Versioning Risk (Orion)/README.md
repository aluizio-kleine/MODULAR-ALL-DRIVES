# 01 — Firmware Versioning Risk (Orion / CFW600)

## Objective

Verify whether **Orion (CFW600)** will have multiple firmware (FW) variants
per unit — like **CFW500** does today, including **frozen/customer-specific
FW versions**. If so, the test system has a problem to solve: at the end of
the test sequence, the system must load/confirm the **correct specific FW
version per unit**, not a single generic version.

## Why it matters for the investment case

The current test spec (`TEST SPECIFICATION/CFW600 Test Specification -
Supplier Reference.md`, §5.3) assumes firmware + model config are loaded via
Ethernet/RS-485 during the test routine, then the unit is power-cycled and
must start error-free. That assumes **one FW artifact per model config**.//
If CFW600 ends up with frozen/customer-specific FW branches (as CFW500 has),
the functional test module needs:
- A way to **know which FW version** a given unit/order requires (traceable
  to SAP order / customer, likely via the same QR-code-driven recipe
  mechanism already in scope).
- Storage/versioning for **multiple FW images**, not one.
- A defined process for **keeping frozen versions in sync** as new builds are
  cut (who freezes them, when, how the test station gets updated).

This affects the **test station software/database design** and should be
called out explicitly in the Gate decks as a technical risk/dependency,
independent of budget.

## What's needed (blocked — internal, not data-driven)

This is not something derivable from files in this repo — it requires an
answer from **WEG's CFW600 firmware/product engineering team**:
1. Does CFW600 plan to support customer-specific/frozen FW branches (yes/no,
   and since when)?
2. If yes, how many concurrent versions are expected in production at once?
3. Is there a naming/versioning scheme already used for CFW500 that can be
   reused (check with the CFW500 firmware team directly — they've solved
   this problem already)?
4. Who/what system will tell the test station **which version to flash** for
   a given serial number — SAP order data, a separate PLM/config system, or
   manual selection?

## Suggested next step

Set up a short call with the CFW600 firmware lead + whoever owns the CFW500
frozen-FW process today, and bring these 4 questions. Once answered, update
this file with the findings and flag any required change to the Functional
Test Module design (§5.3 of the test spec) and to the supplier scope
documents if the FW-selection logic changes what the supplier needs to build.

## Status: 🔲 Not started — awaiting internal answer
