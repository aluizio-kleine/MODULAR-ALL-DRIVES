# CFW600 Series – Test Specification (Supplier Reference)
**Document type:** Routine Test Overview  
**Revision:** 00 – June 2026  
**Confidentiality:** Public – No NDA required

---

## 1. Objective

This document describes the routine tests performed on CFW600 frequency inverters (mechanical sizes A through H) to ensure functional quality before shipment.

The automated test system must support all test sequences described below. Test steps may be optimized for manufacturing flow as long as each individual test is completed without interference between them.

---

## 2. Required Equipment

- True RMS multimeter with voltage and current probes  
- Isolated oscilloscope with voltage and current probes  
- Three-phase AC motor (matched to the inverter power rating under test)  
- Calibrated analog source (current and voltage output)  
- AC power supply (adjustable or fixed per voltage model)  
- 24 VDC external power supply  
- USB-to-RS485 adapter  
- Ethernet-capable device (computer or PLC)  
- Brake resistor (for models with dynamic braking)  
- Inverter configuration software (provided by WEG)

---

## 3. Pre-Test Visual Inspection

- Verify that the display (HMI) is not damaged.

---

## 4. Applied Voltage Test (Hipot)

The power terminals (input, DC bus, output, and brake) are short-circuited together and a DC voltage is applied between them and the chassis ground.

| Voltage model | Applied voltage | Duration |
|---|---|---|
| 200–240 V (T2) | 2100 Vdc | 2 s |
| 380–480 V (T4) | 2800 Vdc | 2 s |
| 500–600 V (T5) | 3111 Vdc | 2 s |

**Pass criteria:** No insulation breakdown and leakage current ≤ 4 mA.  
The applied voltage must ramp up and ramp down over 1 s at the beginning and end of the test.  
The EMC filter ground connection must be disconnected before this test and reconnected after.

---

## 5. Control Power and Firmware Tests

### 5.1 External 24 V Control Power Test

Energize the inverter through the external 24 V ±10% (21.6–26.4 V) input.  
**Pass criteria:** Control board powers up normally and the HMI operates without faults.

### 5.2 Internal 24 V Output Test

Apply a 250 mA load to the 24 V user output.  
Power the inverter via AC supply.  
**Pass criteria:** Output voltage within 24 V ±10% (21.6–26.4 V).

### 5.3 Firmware and Model Programming

The inverter firmware and model configuration file are loaded via Ethernet or RS-485 using the inverter configuration software.  
After programming, the inverter is power-cycled and must start without errors.  
The model identifier read from the inverter parameter must match the product being tested.

### 5.4 Serial Number and MAC Address Programming

Serial number and Ethernet MAC address are written to the inverter via communication protocol (Modbus) during the test routine.

---

## 6. Communication Interface Tests

### 6.1 Ethernet

Connect a device to the inverter Ethernet port (Port A).  
Configure IP addressing on the test device.  
**Pass criteria:** Successful Modbus TCP read of an inverter parameter.  
Repeat for Ethernet Port B.

### 6.2 USB

Connect a USB-C cable to the inverter USB port with the inverter de-energized.  
**Pass criteria:** The inverter powers up via USB and status parameter confirms USB-powered mode.

### 6.3 RS-485

Connect a USB-to-RS-485 adapter to the inverter RS-485 port.  
Configure Modbus RTU communication (address 1, 57600 bps, 8-E-1).  
**Pass criteria:** Successful Modbus Read-Device-ID command with correct device identification.

---

## 7. IO and Control Voltage Tests

### 7.1 Analog Reference Voltage

Measure the +10 V potentiometer reference output.  
**Pass criteria:** 10–11 V.

### 7.2 Analog Input – Current Mode (0–20 mA)

Configure the analog input for current mode via DIP switch.  
Apply reference currents and verify the parameter reading:

| Applied current | Expected reading |
|---|---|
| 0.00 mA | 0% ±2% |
| 4.00 mA | 20% ±2% |
| 10.00 mA | 50% ±2% |
| 16.00 mA | 80% ±2% |
| 20.00 mA | 100% ±2% |

### 7.3 Analog Input – Voltage Mode (0–10 V)

Configure the analog input for voltage mode via DIP switch.  
Apply reference voltages and verify the parameter reading:

| Applied voltage | Expected reading |
|---|---|
| 0.0 V | 0% ±2% |
| 2.0 V | 20% ±2% |
| 5.0 V | 50% ±2% |
| 8.0 V | 80% ±2% |
| 10.0 V | 100% ±2% |

### 7.4 Analog Output – Voltage Mode (0–10 V)

Configure output for voltage mode. Connect a 1 kΩ load.  
Write reference values via network and measure DC output:

| Written value (scaled) | Expected output |
|---|---|
| 0% | -0.2 to +0.2 V |
| 20% | 1.8 to 2.2 V |
| 50% | 4.8 to 5.2 V |
| 80% | 7.8 to 8.2 V |
| 100% | 9.8 to 10.2 V |

### 7.5 Analog Output – Current Mode (0–20 mA)

Configure output for current mode. Measure with a multimeter in series (input impedance < 600 Ω).

| Written value (scaled) | Expected output |
|---|---|
| 100% | 19.6 to 20.4 mA |
| 80% | 14.6 to 16.4 mA |
| 50% | 9.6 to 10.4 mA |
| 20% | 3.6 to 4.4 mA |
| 0% | 0 to 0.4 mA |

### 7.6 Digital Inputs

Verify all 6 digital inputs (DI1–DI6) in both source (PNP) and sink (NPN) configurations.  
**Pass criteria:** Parameter status correctly reflects the state of each input.

### 7.7 Digital Output

Connect a 600 Ω load to the digital output DO1.  
Set output function to OFF and then ON via parameter.  
**Pass criteria:**  
- OFF state: 0 V ±0.2 V across load  
- ON state: 21.6–26.4 V across load

### 7.8 Control Supply Voltages

After energizing, verify control board supply voltages:

| Measurement | Expected range |
|---|---|
| 24 V IO supply | 21.6–26.4 V (20.0–26.4 V if using external 24 V supply) |
| RTC battery voltage | 2.85–3.15 V |

---

## 8. RTC (Real-Time Clock) Test

Set the current date and time via the RTC parameter.  
Wait at least 20 seconds.  
**Pass criteria:** RTC matches current time (tolerance ±1 s) before and after a power cycle.

---

## 9. Motor Operation Test

Configure the inverter:
- Set supply voltage according to the model under test
- Set control type to scalar V/f
- Configure motor nameplate data
- Verify DC bus voltage parameter (tolerance ±3%)
- Verify heatsink temperature parameter (tolerance ±5%)
- Verify cooling fan speeds for each mechanical size (tolerance ±10%)

Connect a motor of the same rated power as the inverter under test to the output terminals (U, V, W).  
Enable the inverter and run at full speed range (3–60 Hz).

**Pass criteria:**  
- Output current waveform is sinusoidal  
- Output current reading matches clamp meter measurement (tolerance ±5% at rated current)  
- Motor runs smoothly across the full frequency range

---

## 10. STO (Safe Torque Off) Test

Performed with a motor connected. Tests both OSSD signal mode and dry contact mode.

**OSSD mode:**
1. Apply 24 V signals to STO1 and STO2 inputs; keep them OFF.
2. Enable the inverter; verify it enters STO state without faults.
3. Turn ON STO signals; verify inverter goes to Ready state.
4. Enable motor; verify it runs without faults.
5. Turn OFF STO signals while motor is running; verify motor stops without generating a fault.

**Dry contact mode:**
1. Connect dry contacts (relays) driven by the SP1/SP2 test pulse outputs to STO1/STO2.
2. Configure DIP switch for dry contact mode.
3. Repeat the same enable/disable sequence as above.
4. **Pass criteria:** Same as OSSD mode.

---

## 11. Dynamic Braking Test

Applies only to models with dynamic braking option (identified by "DB" in the product code). Models with "NB" are exempt.

Connect a braking resistor between the BR and +DC terminals (minimum resistance values per model as specified in the user manual).  
Trigger the braking circuit and verify current flows through the resistor.  
Force a short circuit on the resistor; verify a short-circuit fault is indicated.  
Remove the short, release the inverter, and verify normal operation resumes with no active faults.

---

## 12. Protection Tests

### 12.1 Ground Fault

Connect a 100 Ω resistor between output phase U and chassis ground.  
Enable the inverter.  
**Pass criteria:** Ground fault alarm is indicated.  
Remove the resistor; verify inverter returns to normal operation.

### 12.2 Output Short Circuit

Short-circuit output phases U and V.  
Enable the inverter.  
**Pass criteria:** Short-circuit fault is indicated.  
Remove the short; verify inverter returns to normal operation.

---

## 13. Load Test

| Voltage model | AC supply voltage |
|---|---|
| 200–240 V (T2, single-phase B2) | 220 Vac |
| 380–480 V (T4) | 440 Vac |
| 500–600 V (T5) | 575 Vac |

Set motor speed to 1650 rpm (55 Hz output frequency).  
Ambient temperature during test: 50°C (apply output current derating per user manual).  

**Pass criteria:** Inverter operates continuously for at least 40 minutes without triggering any fault.

---

## 14. End of Test – Factory Reset

Load factory defaults and de-energize the inverter.

---

## 15. Test Summary

| # | Test | Key parameter |
|---|---|---|
| 1 | Visual inspection | No display damage |
| 2 | Applied voltage (Hipot) | Leakage ≤ 4 mA |
| 3 | External 24 V supply | Normal HMI startup |
| 4 | Internal 24 V output | 21.6–26.4 V under 250 mA |
| 5 | Firmware / model programming | No errors after power cycle |
| 6 | Ethernet (Port A + B) | Modbus TCP read success |
| 7 | USB port | USB-powered mode confirmed |
| 8 | RS-485 | Modbus RTU read success |
| 9 | Analog input – current | ±2% accuracy |
| 10 | Analog input – voltage | ±2% accuracy |
| 11 | Analog output – voltage | ±0.2 V accuracy |
| 12 | Analog output – current | ±0.4 mA accuracy |
| 13 | Digital inputs (DI1–DI6) | PNP and NPN modes |
| 14 | Digital output (DO1) | 0 V / 21.6–26.4 V |
| 15 | Control voltages | Within specified ranges |
| 16 | RTC | ±1 s after power cycle |
| 17 | Fan speed | ±10% per model table |
| 18 | Motor operation (3–60 Hz) | Smooth, ±5% current |
| 19 | STO – OSSD mode | Safe state, no fault on trip |
| 20 | STO – Dry contact mode | Safe state, no fault on trip |
| 21 | Dynamic braking (DB models only) | Fault on short, clears after |
| 22 | Ground fault protection | Fault indicated |
| 23 | Short-circuit protection | Fault indicated |
| 24 | Load test (40 min @ 55 Hz, 50°C) | No faults |
| 25 | Factory reset | Completed |
