---
name: suppliers-status
description: "Status of all supplier meetings and evaluations for the Modular All Drives project as of June 18, 2026"
metadata: 
  node_type: memory
  type: project
  originSessionId: f53aa9c9-e9fa-4976-8c10-5fea6574d0be
---

**Project:** [[project-modular-all-drives]]

All meetings as of 2026-06-18. Quotes requested in three separate formats: testing line / assembly line / full integrated line.

**Supplier selection timeline:** July–August 2026 for down-select; PO by end of 2026; commissioning in Brazil by end of 2027.

---

## Suppliers met (awaiting quotation)

### Comau (Italy/Brazil)
- Meeting: 2026-06-11
- Status: Waiting for quotation
- Notes: Large automotive machine builder. Strong mechanically; EOL electrical test for power electronics not their core. Brazil presence in Betim/MG (~1,300 km from SC). PE-owned (One Equity Partners since July 2024, spun off from Stellantis).
- Pugh rank: 2nd (WEG model, +1 vs datum)

### Autec (Joinville, Brazil)
- Meeting: 2026-06-15
- Status: Waiting for quotation
- Notes: Local company in Jaraguá do Sul area — enormous practical advantage. High-voltage/test-system competence needs verification.
- Pugh rank: 5th (tied with MASMEC, -11)

### Mondragon Assembly (Spain, with Brazil unit)
- Meeting: 2026-06-16
- Status: Waiting for quotation
- Notes: Automated assembly and test lines for electronics. Test experience + local Brazilian operation. Tier S supplier.

### DMC (Chicago, USA)
- Meeting: 2026-06-17 (52 min) — Transcript read
- Contacts: Brent Hoerman (Senior Engineering Manager), Neal Walters (Mechanical Engineering Lead), Aleks Konstantinovic (Automation Engineer)
- Status: Awaiting quote — promised after July 4th US holiday
- Company profile: ~250–300 employees, HQ Chicago, 14–15 regional US offices, 25,000 sqft manufacturing center. Founded 1996. >90% engineers. Services: Test & Measurement, Manufacturing Automation Intelligence.
- Key discussion points:
  - PC is the "boss" in the architecture; PLC is secondary operator interface (Aluizio confirmed this preference)
  - No LabVIEW — will use C#/Java/Python as requested (LabVIEW becoming hard to find engineers for)
  - Automated connections discussed: suggest pogo pins or spade connectors; needs CAD of product connectors to evaluate. Highest-risk item per Neil Walters.
  - Separate test rack from conveyor module recommended (space/flexibility)
  - Conveyor "T-shape" flow-through concept understood
  - No regen to grid needed (rheostatic/passive heat dissipation confirmed)
  - FAT at DMC Chicago, then fly engineers to Brazil for SAT/startup; mentioned aspirational Brazil office
  - WEG PLC preference noted; DMC will use best-fit PLC for quote; can discuss WEG after
  - Quote: WEG to supply all components in quote, discuss WEG-supplied component discount later
- Key strengths: Test & measurement + automation merge is their specialty; hipot (4kV), functional, load sequence all understood; good process on contracts/phases
- Key risk: No Brazil presence; engineers travel globally but it adds cost and risk
- WEG action owed: Send product CAD/connector model; confirm terminal standardization for automated connection design
- Pugh rank: 8th (WEG model, -20)

### BBS Automation (Germany/Suzhou, China — part of Dual Group since 2023)
- Meeting: 2026-06-17 (85 min) — Transcript read
- Contacts: Ma Vivian (Sales/Account), Liu Carlson (Technical)
- Status: Waiting; unblocked after receiving test spec + assembly scope. Need to send invitation letters for visa.
- Company profile: Acquired by Dual Group 2023. HQ Munich, Germany. 20 global sites, 20,500 employees. China: Suzhou (300 ppl), Tianjin (100 ppl), Kunshan (420 ppl, largest), Xi'an (office). China revenue ~€200M. Former brand "Team Technique" (test software specialists).
- Key discussion points:
  - WEG PLC: Never used it. Carlson said CODESYS-based WEG PLC "might not be a problem" but needs to verify with electrical team. Main WEG PLC concern.
  - WEG components: Confirmed ok for all except PLC uncertainty; quote includes BBS buying all components.
  - Test software: Default is LabVIEW for controllers; but have Team Soft (C# based) via Team Technique brand for motor test — more expensive. If C# required, Team Soft is the path.
  - References shown: inverter/controller assembly + EOL test lines (18 stations run test + 10 EOL), hydraulic modules, BMS lines.
  - Brazil commissioning: Confirmed they can send engineers; need WEG invitation letters for visa.
  - Z-Card transfer system used for parallel test stations (similar to WEG concept)
  - Assembly quotation: Alissonn will send scope; separate 3 quotes requested (test/assembly/full)
  - Pricing: First round = rough ballpark price only; no layout or detailed docs needed now
- Key strengths: Deepest inverter/controller test + assembly reference (PCB press-fit, IGBT integration, full EOL). Visual commissioning with 3D simulation. Strong supply chain.
- Key gaps: LabVIEW default; WEG PLC uncertainty; no Brazil base; capacity concern on timeline
- Open actions: BBS to check PLC internally; BBS to check Brazil support logistics; WEG to send invitation letters when needed
- Pugh rank: 1st (WEG model, +8)

### MASMEC (Bari, Italy)
- Meeting: 2026-06-16 (73 min) — Transcript read
- Contact: Stefano Piccinno (Sales Engineer), Luigi Di Leo
- Status: Waiting for quote; Stefano owes: C#/Python/Java software language confirmation, active/regenerative AC load capability, PLC resolution.
- Company profile: Bari, Italy (southeast, Puglia region). 44,000 sqft plant, 300 employees, ~€50M revenue. 84% automation division. Automotive-focused. Has installations in Mexico and Brazil. Produces all machines in Italy. Uses Plant Simulation software for digital twin, visual commissioning.
- Key discussion points:
  - **Inverter test reference**: Has direct experience testing automotive inverters — hipot, functional test, load test with passive load. Functional sequence took 12 min in their automotive reference → delivered multiple bench copies.
  - **Connection strategy**: Has both (a) manual connection to match plate on pallet (then bench auto-connects match plate) AND (b) direct probe contacting on product. Depends on connector geometry. Uses CREATIC for specialized contact solutions.
  - **Conveyor**: Standard Bosch Rexroth TS2 — this model has native flow-through / spur station function. Confirmed to work.
  - **Siemens PLC**: Their default; acknowledged WEG requires otherwise and the PLC scope is minimal. Will check internally if WEG PLC feasible.
  - **Software**: LabVIEW/NI default, but "have expertise with C#" — needs confirmation from software department.
  - **Active load**: Passive load confirmed; active/regenerative not fully confirmed — will check R&D team.
  - **Load cabin**: Temperature-only, 50°C fixed — confirmed. No humidity.
  - **Brazil support**: MASMEC team will commission on-site; may engage local partner company for immediate support during warranty. If specialized, fly from Italy.
  - **Assembly**: No experience with inverter PCB board-level assembly. Has ESD-safe manipulation experience from automotive.
  - **Quote includes**: All WEG components bought by MASMEC; WEG can supply discount later. 3D concept may be included in proposal.
  - **Climatic chamber**: Will investigate simpler heating-only option (confirmed no humidity requirement)
  - **Digital twin**: Uses Plant Simulation for logistic simulation; visual commissioning with 3D model driven by PLC program.
- Key strengths: Best-matched inverter test reference; Bosch Rexroth TS2 conveyor is the right tool; automatic electrical connections (both probe and pallet-match strategies); 5-person dedicated project team.
- Key gaps: Siemens PLC default; LabVIEW/NI default; no inverter PCB assembly; Brazil support via Italy trips (not local)
- WEG action owed: Send one test prescription per module so R&D can engage; confirm WEG PLC (not Siemens)
- Pugh rank: 5th (tied with Autec, -11)

### Bosch Manufacturing Innovation (Brazil — Campinas/Curitiba)
- Meeting: 2026-06-17 (51 min, in Portuguese) — Transcript read
- Contacts: Souza Victor (CaP/MFI31 — electrical/test), Laranjeira Marcelo (CaP/MFI21 — sales/commercial)
- Status: Waiting; WEG owes test prescriptions + dimensions table + terminal drawings
- Company profile: Division "Manufacturing Innovation" inside Bosch Brazil. 60+ years. Campinas and Curitiba plants. Supplies Bosch internally (Latin America) and external customers since 2013. WEG Linhares was their FIRST external client (2014). Exclusive supply contract with WEG Automação — buys >1M WEG products/year.
- Key discussion points:
  - **WEG relationship**: Deep. Also supplied WEG Controles (5 projects, Alexandre Guesser's team), WEG Drives (2 projects). Currently finishing a line for WEG Manaus. Visited Pomerode plant. Team knows WEG portfolio very well.
  - **Test experience**: Has functional test + load experience with ECUs (car computers — PCB + firmware validation, RS-485, flash programming, signal injection). Also starter motors and alternators with dynamic loads.
  - **Victor's questions**: Needs test prescription per module (not for detail, to size PLC and understand test scope). Asked about WEG's existing SCADA system in other lines — confirmed Bosch will deliver their own supervisory.
  - **PLC**: Victor asked if WEG PLC500 is adequate or needs higher-performance PLC — will assess after seeing prescription.
  - **Assembly**: Yes, PCB-to-product experience (23-station ECU line in Campinas with RFID supervisory). Know cables are "chaos" for automation — designed to minimize cables.
  - **Conveyor**: Bosch Rexroth (imported from Germany). Larger total order = lower cost per unit → incentive to bundle test + assembly.
  - **Supervisory software**: Bosch's own platform (not WEG's). Includes RFID, product routing (pass/fail/rework), metrics.
  - **Brazil support**: Best-in-class. 24/7 call center, machine ID numbers, technicians dispatched (mechanical, electrical, software).
  - **Production volume**: 900 drives/day at cruising speed (year 5 of product launch) — shared by Alissonn.
  - **3 quotes format**: Test system / assembly+packaging / full integrated line.
  - **Commercial**: Marcelo will open internal quotation request after receiving prescriptions + Victor's electrical questions.
  - **Software language**: Not yet confirmed (C#/Java/Python requirement not explicitly raised).
- Key strengths: Strongest Brazil support; knows WEG products intimately; proven ECU assembly + test experience (closest analog to VFD); supervisory already includes traceability.
- Key gaps: Supervisory is Bosch platform (not WEG-standard); software language (C# requirement) not yet confirmed; Bosch Rexroth conveyor cost structure (volume-dependent imports)
- WEG action owed: Send test prescriptions per module; dimensions+weight table for all 5 product families; terminal/connector drawings; answer Victor's follow-up questions
- Datum in Pugh matrix (rank 3, score 0)

### PIA Automation (Suzhou, China)
- Meeting: 2026-06-18 (25 min) — Transcript read
- Contacts: Wang Abel Xiang, Cui David Qingjun
- Status: Waiting for quote (~next week, after 3-day Chinese holiday). Very brief meeting — no formal presentation.
- Key discussion points:
  - Has experience with automated assembly and robotics
  - Prior Brazil project: Fully automated connector-assembly machine (location: near Brazilian capital — probably Brasília area)
  - Commissioned in Brazil: Confirmed (site commissioning + production support)
  - **Hipot clarification**: Hipot connects only power connections (not control). 4kV max. Asked about number of contact groups/pads — WEG to clarify.
  - **Functional test**: Clarified HMI test is NOT required — PLC communicates via RS-485/Modbus directly. Abel understood this.
  - **USB test**: Julio noted USB needs a computer as host → pending decision on whether to include.
  - **Temperature**: 50°C fixed, no humidity. Abel understood "maximum" but Franklim clarified "fixed."
  - **PLC**: WEG preferred but open to other brands; will note in quotation.
  - **Load test**: No specific technical discussion — scope clear from document.
  - Pricing first round: Rough number only needed; no details required now.
- Key gaps: No references shown; minimal meeting time; software language not raised; assembly scope not yet received
- WEG action owed: Send product images (power/control connections); send test specification; clarify number of contact groups for hipot; send assembly scope (Alissonn)
- Pugh rank: 7th (WEG model, -15)

### Develop LLC (Wisconsin/Chicago area, USA)
- Meeting: date TBD — Transcript read (Matthew Moseman)
- Contact: Matt Moseman (Sales — Develop LLC, just north of Chicago ~2.5h)
- Status: Waiting for documents to be sent; Matt to review and share with engineering team
- Company profile: North America-focused machine builder. Has assembly line experience (lighting industry: PCB adhesive dispensing, precision plastic + electronics assembly). Most work under NDA.
- Key discussion points:
  - **Project fit**: "Right in our wheelhouse" — Matt very positive about the test system concept
  - **Brazil constraint**: CANNOT commission or provide on-site support in Brazil. Company policy: serves North America (US lower 48) only. FAT would be done in US; WEG team responsible for commissioning Brazil.
  - **Brazil workaround offered**: Develop could build a dedicated Brazil team at WEG's cost — hire local people, send one US team member to manage. WEG pays for all costs. Not standard offer; doing this for other customers now.
  - **Fire suppression**: Matt proactively mentioned it — recommended canister-style (sucks oxygen out of cabinet, like titanium machining environments). Aluizio confirmed other suppliers also raised this.
  - **Automated connections**: Open to pogo pins or pneumatic clamping. Recommends product design optimization for automation.
  - **Movement**: Suggested drop-down motion instead of backward push (simpler mechanism) — both options evaluated; pneumatic lift to return.
  - **Modular concept**: Initially questioned if all 3 modules need to scale together; understood after Julio explained load test time bottleneck.
  - **3 quotes**: Test system, assembly+packaging, full integrated line.
  - **Timeline**: Q1 2027 project start; end of 2027 delivery feasible.
  - **Assembly reference**: PCB + adhesive dispensing + high precision plastic + electronics (lighting sector). Under NDA.
  - **WEG components**: Confirmed Develop already uses WEG inverters on machines.
  - **Decision driver for WEG**: Use of WEG products (PLCs, sensors, inverters) is important selection criterion.
  - **Capex**: Payback-driven (no fixed budget cap stated).
- Key strengths: Technical fit is high; likes the project; already uses WEG products; no LabVIEW presumed
- Key constraints: **Brazil commissioning/support is a disqualifier unless WEG pays for dedicated Brazil team** (high additional cost and risk)
- WEG action owed: Send full scope document (was not received before meeting); Alissonn to send assembly scope
- Pugh rank: 4th (WEG model, -10) — ranked before Brazil constraint was fully confirmed

---

## Suppliers that declined or are out

### JR Automation (Hitachi)
- **DECLINED the project** — not quoting

### Develop LLC (Wisconsin, USA)
- **DISQUALIFIED 2026-06-18** — Matt Moseman sent a follow-up email after receiving the scope confirming Develop does not install or commission machines in Brazil, and asked if WEG had a US facility for SAT. WEG does not. Brazil commissioning and support are mandatory requirements. Aluizio sent a polite disqualification email, leaving the door open for future North America plant expansions. Technical fit was strong; constraint is purely geographic.

---

## Pugh Matrix Rankings (WEG model, Bosch as datum, 2026-06-18)

| Rank | Supplier | Weighted Score |
|------|----------|---------------|
| 1 | BBS Automation | +8 |
| 2 | Comau | +1 |
| 3 | Bosch (datum) | 0 |
| 4 | Develop LLC | -10 |
| 5 | MASMEC / Autec | -11 |
| 7 | PIA Automation | -15 |
| 8 | DMC | -20 |

**Why:** BBS Automation leads on technical depth (inverter EOL test + PCB assembly). Bosch leads on Brazil support. MASMEC and DMC rank lower despite excellent inverter-test evidence because Brazil support weight is high in the WEG criteria model. Develop LLC's Brazil constraint may effectively disqualify it unless WEG accepts the "dedicated team" surcharge.

**How to apply:** When Aluizio asks about supplier evaluation, quote status, or project decisions, use this as baseline and note what's changed since 2026-06-18.

---

## Key project clarifications confirmed in supplier meetings

- **HMI test**: NOT required. PLC communicates with product via RS-485/Modbus. Confirmed by Julio (PIA meeting).
- **USB test**: Pending decision — needs computer as host. Not yet scoped in or out.
- **Fire suppression**: Flagged by multiple suppliers (Develop, and others mentioned by Aluizio). Should be added to scope formally. Recommendation: canister-style O₂ removal.
- **Production target at cruising speed (year 5)**: 900 drives/day (from Bosch meeting).
- **Load test**: No need for regen to grid (rheostatic/passive confirmed by Aluizio to DMC).
- **Conveyor standard**: Bosch Rexroth TS2 is the reference conveyor size for this product weight/dimensions (MASMEC).
- **Load cabin temperature**: Fixed at 50°C, no humidity control needed.
- **Quote format (all suppliers)**: Budget number only for first round — no detailed breakdown, no layout documents.
