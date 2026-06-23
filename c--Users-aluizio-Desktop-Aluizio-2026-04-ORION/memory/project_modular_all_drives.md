---
name: project-modular-all-drives
description: "Aluizio's main work project — automated EOL test system for VFD (frequency inverter) production at WEG. Internal codename ORION."
metadata: 
  node_type: memory
  type: project
  originSessionId: f53aa9c9-e9fa-4976-8c10-5fea6574d0be
---

**Project name:** Modular All Drives Test System
**Project folder:** 2026-04-ORION (named after the Orion/CFW600 product that created this opportunity)
**Document author:** Aluizio Augusto Kleine Kirschner, Revision 00, May/2026

**Purpose:** End-of-line (EOL) automated testing system for WEG variable frequency drives (VFDs). The launch of the new **Orion (CFW600)** product created the opportunity to build this new modular test concept that covers multiple WEG drive families.

**IMPORTANT — naming:** When Aluizio says "Orion" he means **CFW600** (the new WEG product). The test *system* is called **Modular All Drives**. Do not confuse them.

**Installation site:** WEG Drives & Controls — Automation Ltd., Drives Production Department, Jaraguá do Sul, Santa Catarina, Brazil.

**Deadline:** End of 2027 — commissioned in Brazil.

---

## Products to be tested (all families)

| Family | Mechanical sizes |
|--------|-----------------|
| **Orion (CFW600)** | A, B, C |
| **CFW900** | A, B, C, D |
| **CFW11** | A, B, C, D |
| **CFW500** | D, E |
| Similars | TBD |

- **Current range:** 2.2A to 60A+
- **Voltages:** 220V, 440V, 575V
- **Max product dimensions (fixture must accommodate):** H×D×W = 460mm × 300mm × 220mm
- **Max product weight:** 30 kg
- In the TABELA TENSOES E CORRENTES ORION.xlsx, product codes appear as "CFWn00A/B/C" — the "n" is a placeholder representing the product family number (e.g. n=6 for CFW600)

---

## System architecture (visual concept)

The system is a conveyor-based modular line. Each module is a self-contained enclosure (WEG-branded, tower light, polycarbonate windows) with:
- **Side door** that opens automatically when fixture arrives
- Fixture with product slides **into the rear** of the module
- **Automatic electrical connections** are made at the rear of the module (docking)
- Test is performed inside
- Fixture exits to the right, returns to conveyor
- Each module has its own return conveyor at the lower level

**Full line flow:**
Assembly → Hipot Test → Functional Test → Load Test (Heated) → Packaging

---

## Three test modules

### 1. Hipot Test Module (Tensão Aplicada)
- Dielectric test — validates electrical insulation of power connections
- Insulation level: **up to 4 kV** (wiring rated for 4kV to avoid leakage/noise)
- Cycle time: **< 1 minute**
- Safety enclosure with monitored access; automatic grounding; discharge circuits
- Automatic prevention of door opening during high voltage application
- QR Code reading → automatic recipe loading

### 2. Functional Test Module
- Complete electrical, logical and operational validation
- Cycle time: **< 5 minutes**
- Controlled by **WEG PLC500** (mandatory, non-negotiable)
- HMI: computer or touch screen for monitoring, results, manual test execution, new product registration
- Integrated **computer vision system** for HMI inspection and optical validation
- QR Code reading → automatic recipe loading
- **Test sequence (sequential, automatic):**
  1. External control energization; HMI measurement and operation validation
  2. Power section energization; link measurement, control power supplies validation
  3. Firmware version verification
  4. I/Os
  5. Serial number programming
  6. MAC address programming
  7. Ethernet ports
  8. USB port
  9. Internal battery validation
  10. RS-485 communication
  11. Motor operation and output current measurement
  12. Safety stop module validation
  13. Rheostatic braking
  14. Ground fault and output short-circuit protection tests
  15. Factory default parameter programming

### 3. Load Test Module (Heated)
- Stress test under controlled load and temperature
- Cycle time: **< 20 minutes**
- Heated cabin: **controllable up to 50°C** (temperature only — no humidity control)
- Electronic loads supplied by **WAU** (WEG group company)
- Supports currents up to **60A** and voltages **220V, 440V, 575V**
- Real-time data acquisition; recipe-driven

---

## Fixtures

- **5 types** × 3 units per type = **15 fixtures total**
- All fixtures have **standardized external dimensions** — only the mechanical nest varies per product type
- QR Code identification on each fixture
- Mechanical **Poka-Yoke** for product positioning
- Must support products up to 30 kg without deformation
- Pre-wired with connectors/harnesses connected to the product
- Fixture contact pads/connectors at rear for automatic docking connection
- Material: resistant, with lifting/handling points
- Fixture return conveyor on **lower level** of modules

---

## General module specifications

- Power supply: **380 Vac, 60 Hz**
- Structure: aluminum profile frame + **5mm polycarbonate** enclosure/doors
- Base: reinforced beams **100mm high** for manual pallet truck transport + flanges
- All cabin materials: **non-combustible** (or flame-retardant + non-toxic); manufacturer report required
- Structure prevents body access into cabin with doors closed
- **1 test position per module** (no parallel positions within one module)
- Parallelization is achieved by adding more modules (1 hipot + 1 functional can feed 3–5 load modules)
- Automatic side doors for fixture passage between modules
- Computer vision system for optical inspection
- Transparent windows for full product visibility during tests
- Easy access for mechanical, electrical and pneumatic maintenance
- **Fire suppression system** — flagged by multiple suppliers (Develop LLC recommended canister-style O₂-removal, like titanium machining environments; Aluizio confirmed "we didn't think about it before but it's interesting"). Not yet formally in scope as of June 2026 but strongly implied.

---

## Operational flow (26 steps)

1. Product assembled on fixture and connected
2. Automatic QR Code reading at assembly stage
3. Automatic recipe selection
4. Automatic movement to hipot module via conveyor
5. Automatic movement to test position
6. Electrical/mechanical connection
7. Test execution
8. Data recording
9. Approval/rejection
10. Return to conveyor
11–17. Functional test (same sequence as above)
18–24. Load test (same sequence)
25. Final segregation: approved → packaging; rejected → repair/analysis
26. Fixtures return via lower return conveyor

**Rejected products** stay on line with rejection flag in supervisory database — segregated at end of line.

---

## Software requirements

- **Languages: C#, Java, or Python ONLY** — LabVIEW explicitly NOT accepted
- Source code delivery **mandatory**
- Each module has its own test software AND supervisory software
- Supervisory software must integrate across all modules
- MES/traceability integration required
- QR Code-driven recipe selection
- Real-time data acquisition and result recording
- PLC controls product via **RS-485/Modbus** directly (confirmed by Julio in PIA Automation meeting)
- **HMI test: NOT required** — PLC communicates with product via RS-485/Modbus; no visual HMI validation in scope (Julio, 2026-06-18)
- **USB test: pending decision** — requires a computer as host; not yet scoped in or out (Julio, 2026-06-18)

---

## Hardware requirements (customer-supplied)

- **WEG PLC500** (Siemens PLCs explicitly NOT accepted — WEG produces its own PLCs/drives)
- **WEG portfolio components** (drives, inverters, safety hardware) — supplied by **WAU**
- **WAU electronic loads** (for load test module)

---

## Key constraints and requirements

- Brazil commissioning and ongoing support required (deal-breaker for many overseas suppliers)
- **NR10 and NR12** Brazilian safety standards compliance (interlocks, emergency buttons, movable guards)
- IEC standards compliance
- **FAT** (Factory Acceptance Test) + **SAT** (Site Acceptance Test) + startup
- Complete documentation: mechanical/electrical design files, CAD (SolidWorks 2022 or Parasolid), 2D PDF drawings
- Technical manual (description, operating instructions, warranty, drawings, lifting process, component list, maintenance instructions)
- **ART** (Anotação de Responsabilidade Técnica) — mechanical and electrical — required
- Preventive maintenance schedule
- Operational and maintenance training
- Spare parts availability
- On-site and remote technical support options
- Virtual simulation or prototyping for validation
- **Global replication** potential: WEG has 60+ plants worldwide — after Brazil launch, planned expansion to China, Italy, Mexico (and possibly USA). Concept designed for global standardization.
- **Production volume at cruising speed (year 5)**: ~900 drives/day (Alissonn, Bosch meeting 2026-06-17)
- "Silence = full compliance" clause: **mandatory to flag any deviation** in quotation

---

## Three quotes requested from each supplier

1. Testing line only
2. Assembly line only (separate project — Franklim & Alisson/Franklin)
3. Full integrated line

---

## Documentation folder

`C:\Users\aluizio\Desktop\Aluizio\2026-04-ORION\` — all project documentation lives here:
- Scope document (PT and EN versions)
- Product specs: CFW900, CFW500-501, CFW11, TABELA TENSÕES E CORRENTES
- Simulation images
- 3D product models (SolidWorks .sldasm)
- Supplier meeting summaries (ATAS folder)
- SUPPLIERS.xlsx tracker

**Why:** This is Aluizio's primary work project. All supplier evaluation, email drafting, meeting preparation, and technical documentation relates to this scope.

**How to apply:** When Aluizio asks about the project, always consult this memory. For detailed product/connection specs, refer to the files in `C:\Users\aluizio\Desktop\Aluizio\2026-04-ORION\ORION and similars power and mechanical specifications\`.
