# Counters and Registers

![Verilog](https://img.shields.io/badge/Verilog-HDL-blue.svg)
![Simulation](https://img.shields.io/badge/Simulation-Testbench-green.svg)


A collection of **digital counters and shift registers** designed in Verilog HDL. Includes behavioral and structural implementations with testbenches for verification.

---

## 📁 Repository Structure

---

## 🔢 Modules Overview

### Counters

| Module | Description | Type |
|--------|-------------|------|
| `up_counter` | Counts from 0 to 15 and rolls over | Synchronous |
| `down_counter` | Counts from 15 down to 0 | Synchronous |
| `up_down_counter` | Bidirectional counting with `up/down` control | Synchronous |
| `async_counter` | Ripple counter using flip-flops | Asynchronous |

### Registers

| Module | Description |
|--------|-------------|
| `parallel_in_serial_out` | Loads parallel data and shifts out serially (PISO) |

### Primitives

| Module | Description |
|--------|-------------|
| `T_FF` | Toggle flip-flop (used in async counter) |

---

## 🚀 Quick Start

### Prerequisites

- Any Verilog simulator (Icarus Verilog, ModelSim, Vivado, or GTKWave)
- Basic understanding of digital logic

### Simulation Example (Up Counter)

```bash
# Compile and run (Icarus Verilog)
iverilog -o up_counter_tb.vvp up_counter.v
vvp up_counter_tb.vvp

# View waveform (if testbench generates VCD)
gtkwave dump.vcd
