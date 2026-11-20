# ALU driven by a hybrid ring counter — Silicluster v3 build

4-bit ALU whose operation enables come from an 8-bit hybrid ring counter
(straight / twisted Johnson / static), packaged to fit the Silicluster v3
digital pin budget.

Derived from *"Design and Implementation of ALU Using Ring Counters"*
(IConSCEPT 2023, DOI 10.1109/IConSCEPT57958.2023.10170295), with the
verification, state-legality and packaging gaps fixed.

## Layout

```
alu_ring/
  rtl/hybrid_ring_counter.v   ring counter + legality check + recovery
  rtl/alu_core.v              8 operations, registered outputs, flags
  rtl/alu_top.v               Silicluster pin wrapper
  tb/tb_alu_top.v             self-checking testbench
  run.ps1                     compile + simulate
  synth.ps1                   Yosys synthesis + cell report
  tools.ps1                   environment note (see below)
```

## Pin budget (Silicluster v3: 14 in / 14 out, 1 clk, 1 rst)

| Direction | Signals | Count |
|---|---|---|
| in  | `clk`, `rst_n`, `a[3:0]`, `b[3:0]`, `mode[1:0]`, `halt` | 13 |
| out | `result[4:0]`, `op_mask[7:0]`, `zero` | 14 |

`result[4]` is the carry/borrow bit. `op_mask` reports every operation that
was enabled in the cycle, which preserves the paper's "simultaneous
operations" observability without spending 32 output pins.

## Operation map

| Counter bit | Operation |
|---|---|
| 0 | AND |
| 1 | OR |
| 2 | XOR |
| 3 | ADD |
| 4 | SUB |
| 5 | SHR (A >> 1) |
| 6 | SHL (A << 1) |
| 7 | XNOR |

When several bits are high, all enabled operations are visible on `op_mask`,
while `result` carries the lowest-index operation (documented priority).

## Counter modes

| `mode` | Behaviour | Legal states |
|---|---|---|
| `00` | straight ring, one-hot rotates | exactly one `1` |
| `01` | twisted ring (Johnson) | single contiguous run of 1s (≤2 circular transitions) |
| `10` | static, forces `STATIC_PATTERN` (default `1000_0001` = AND+XNOR) | any |
| `11` | reserved, behaves as static | any |

Illegal states are detected and corrected in one cycle; `recovered` pulses
for one clock. Reset state is `00..01`.

## Run

```
powershell -NoProfile -ExecutionPolicy Bypass -File run.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File synth.ps1
```

## Current results

Simulation (Icarus Verilog 14.0):

```
CHECKS = 47   ERRORS = 0
RESULT: ALL TESTS PASSED
```

Generic synthesis (Yosys 0.71, `synth -top alu_top`):

```
265 cells total, 24 flip-flops
  alu_core           138 cells (23 FFs)
  hybrid_ring_counter 126 cells (1 FF + shift register flops)
```

## Differences from the reference chat implementation

| Issue in the reference RTL | Fix here |
|---|---|
| `twisted_valid` accepted only one-cold patterns, so the Johnson cycle was rejected after one step and the counter fell back to the seed every cycle | Legality is now "≤2 circular transitions", which accepts the whole 2N Johnson cycle |
| `flag_zero` compared the previous result (non-blocking read) | Zero flag is computed from the next result before registering |
| `flag_carry` / `flag_overflow` were never cleared on logic ops | All flags are recomputed every enabled cycle |
| Top level needed 19 inputs / 22 outputs | Repackaged to 13 in / 14 out |
| "Simultaneous" operations were reduced to a single priority result with no observability of the others | `op_mask` reports all enabled operations |
| Testbench used `wait (pattern == ...)`, which hangs when the pattern never appears | Every check is clock-driven; the sim always terminates |

## Not done yet

- SKY130 standard-cell mapping / area check (needs a liberty file and an
  OpenLane or Yosys `abc -liberty` run)
- FPGA synthesis (Vivado/Quartus) for Fmax and LUT/FF numbers
- Formal properties (SymbiYosys) for the recovery logic
