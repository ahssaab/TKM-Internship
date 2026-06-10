# BCD Adder (Binary Coded Decimal) – Verilog HDL

##  Overview
A BCD (Binary Coded Decimal) counter is a sequential digital circuit that cycles through the decimal digits 0 to 9 using a 4-bit binary representation. Once the counter reaches 1001 (9), it automatically resets to 0000 on the next clock pulse and generates a carry-out signal to trigger the next decimal stage.

##  Features
- 4-bit BCD addition
- Carry generation support
- Automatic decimal correction
- Simulation verified using testbench

##  Working Principle
1. Add two BCD digits using binary addition
2. Check if result is greater than 9 or carry = 1
3. If invalid → add 0110 for correction
4. Output corrected BCD sum

##  Inputs and Outputs

### Inputs
- `a[3:0]` → BCD input A
- `b[3:0]` → BCD input B
- `cin` → Input carry

### Outputs
- `sum[3:0]` → Corrected BCD sum
- `cout` → Carry to next digit

##  Test Cases
| A | B | Cin | Raw Sum | Correction | Final Sum | Cout | Description |
|---|---|---|---|---|---|---|---|
| 0000 | 0000 | 0 | 0000 | No | 0000 | 0 | Reset |
| 0001 | 0010 | 0 | 0011 | No | 0011 | 0 | Valid |
| 0101 | 0011 | 0 | 1000 | No | 1000 | 0 | Valid |
| 0101 | 0101 | 0 | 1010 | Yes | 0000 | 1 | Correction applied |
| 0110 | 0101 | 0 | 1011 | Yes | 0001 | 1 | Overflow case |
| 1001 | 1001 | 0 | 10010 | Yes | 1001 | 1 | Maximum case |

## Waveform Explanation
<img width="1230" height="616" alt="image" src="https://github.com/user-attachments/assets/1e04cfa2-3e0a-4e5d-9666-a223c29ddb9c" />

- First stage performs binary addition
- Second stage checks correction condition
- If sum > 9 → adds 0110
- Final output is valid BCD

