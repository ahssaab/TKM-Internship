#  2-to-4 Decoder 

##  Overview

**2-to-4 Decoder – Overview**

A 2-to-4 decoder is a combinational logic circuit that converts a 2-bit binary input into one of four unique output lines. For each input combination, only one output is activated while the remaining outputs stay inactive. It is commonly used in memory addressing and data routing applications.


---

##  Features

- 2-to-4 decoding
- Combinational logic design
- One-hot output generation
- Simple case-based implementation
- Verified using testbench simulation
- Fast output response

---


##  Inputs and Outputs

### Inputs

- `b[1:0]` → 2-bit binary input

### Outputs

- `d[3:0]` → One-hot decoded output

---



##  Test Cases

| Input (b) | Output (d) | Description |
|-----------|------------|-------------|
| 00 | 0001 | First output active |
| 01 | 0010 | Second output active |
| 10 | 0100 | Third output active |
| 11 | 1000 | Fourth output active |

---

##  Waveform Explanation

- Input `00` → Output `0001`
- Input `01` → Output `0010`
- Input `10` → Output `0100`
- Input `11` → Output `1000`

The output changes immediately because this is a **combinational circuit**.

---


