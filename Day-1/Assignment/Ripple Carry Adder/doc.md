#  4-bit Ripple Carry Adder (Verilog HDL)

##  Overview
A 4-bit ripple carry adder uses four cascaded full adders to perform binary addition, where the carry-out from each bit serves as the carry-in for the next significant bit. This sequential propagation allows the device to process multi-bit numbers, though it introduces a time delay proportional to the number of bits as the carry "ripples" through the circuit.

##  Features
- 4-bit binary addition
- Ripple carry propagation
- Simulation verified using testbench

##  Working Principle
Each full adder performs:
1. **Sum** = A ⊕ B ⊕ Cin
2. **Carry** = majority logic of inputs
3. Carry output of one stage feeds the next stage.

##  Inputs and Outputs

### Inputs
- `a[3:0]` → First operand
- `b[3:0]` → Second operand
- `cin` → Input carry

### Outputs
- `s[3:0]` → Sum output
- `cout` → Final carry-out

##  Test Cases

| A | B | Cin | Sum | Cout | Description |
|---|---|---|---|---|---|
| 0000 | 0000 | 0 | 0000 | 0 | Reset |
| 0001 | 0010 | 0 | 0011 | 0 | Simple addition |
| 0010 | 0100 | 1 | 0111 | 0 | With carry-in |
| 1110 | 0110 | 0 | 0100 | 1 | Overflow case |
| 0011 | 1100 | 1 | 0000 | 1 | Full carry propagation |

##  Waveform Explanation
- Carry starts at LSB.
- Propagates through each full adder.
- Final carry appears at MSB stage.
- Delay increases with bit position.

##  Applications
- ALU design
- FPGA arithmetic circuits
- Digital systems
- Computer architecture

##  Output Waveform
  <img width="1171" height="557" alt="image" src="https://github.com/user-attachments/assets/6543cddc-93e1-41ac-9161-2ce7b8b8bde9" />
