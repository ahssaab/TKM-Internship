# 🔓 2-to-4 Decoder (Verilog HDL)

## 📌 Overview

This project implements a **2-to-4 Decoder** using **Verilog HDL**.

It converts a **2-bit binary input** into a **one-hot 4-bit output**.

Only one output line is activated for each valid input combination.

---

## ⚙️ Features

- 2-to-4 decoding
- Combinational logic design
- One-hot output generation
- Simple case-based implementation
- Verified using testbench simulation
- Fast output response

---

## 🧠 Working Principle

The decoder maps a 2-bit binary input to a corresponding one-hot output:

| Input (b) | Output (d) |
|-----------|------------|
| 00 | 0001 |
| 01 | 0010 |
| 10 | 0100 |
| 11 | 1000 |

Only one output bit is HIGH at a time.

---

## 🔌 Inputs and Outputs

### Inputs

- `b[1:0]` → 2-bit binary input

### Outputs

- `d[3:0]` → One-hot decoded output

---

## 📂 Project Files

### Source Code
- `src/decoder_2to4.v`

### Testbench
- `testbench/decoder_2to4_tb.v`

### Waveform
- `waveform/decoder_2to4_waveform.png`

### Simulation Output
- `simulation/decoder_2to4.vcd`

---

## 💻 Verilog Code

### Decoder Module

```verilog
module decoder_2to4(
    input [1:0] b,
    output reg [3:0] d
);

always @(*) begin
    case(b)
        2'b00: d = 4'b0001;
        2'b01: d = 4'b0010;
        2'b10: d = 4'b0100;
        2'b11: d = 4'b1000;
        default: d = 4'b0000;
    endcase
end

endmodule
```

---

## 🧪 Testbench

```verilog
module decoder_2to4_tb;

reg [1:0] b;
wire [3:0] d;

decoder_2to4 uut (
    .b(b),
    .d(d)
);

initial begin
    $dumpfile("decoder_2to4.vcd");
    $dumpvars(0, decoder_2to4_tb);

    b = 2'b00; #10;
    b = 2'b01; #10;
    b = 2'b10; #10;
    b = 2'b11; #10;

    $finish;
end

endmodule
```

---

## 🧪 Test Cases

| Input (b) | Output (d) | Description |
|-----------|------------|-------------|
| 00 | 0001 | First output active |
| 01 | 0010 | Second output active |
| 10 | 0100 | Third output active |
| 11 | 1000 | Fourth output active |

---

## 📊 Waveform Explanation

- Input `00` → Output `0001`
- Input `01` → Output `0010`
- Input `10` → Output `0100`
- Input `11` → Output `1000`

The output changes immediately because this is a **combinational circuit**.

---

## ▶️ Simulation

Using Icarus Verilog:

```bash
iverilog -o decoder decoder_2to4.v decoder_2to4_tb.v
vvp decoder
gtkwave decoder_2to4.vcd
```

---

## 🎯 Applications

- Memory address decoding
- Data routing systems
- Instruction decoding
- Digital communication circuits
- FPGA and ASIC design projects

---

## 📜 License

This project is open-source and available under the MIT License.
