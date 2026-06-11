## Output 
<img width="1197" height="542" alt="image" src="https://github.com/user-attachments/assets/18ce6486-5280-40af-a23a-2698a20c5500" />
              <img width="827" height="297" alt="image" src="https://github.com/user-attachments/assets/a6de1abb-1932-4d71-b51f-7b8a76cb3000" />

## Documentation
The 8-Bit Simple Dual-Port Block RAM is designed for FPGA applications, featuring a dedicated interface with separate read and write addresses. It utilizes a clock to synchronize data operations and includes an asynchronous reset button. This project, developed in Xilinx Vivado, comprises the RAM module, a testbench script, signal waveforms, and resource utilization analysis.

Behavioral Waveform Verification
Testing conducted via the Xilinx Vivado Simulator confirms that the design functions as intended.

-0 ns to 17 ns: The system initializes; the reset button ensures proper synchronization of the output.

-35 ns to 65 ns: During write operations, the system functions correctly. For instance, writing 0xAA to address 0x0A and 0xBB to address 0x14 is recorded successfully.

-Post-65 ns: The system transitions to read operations, sequentially retrieving 0xAA and 0xBB in the expected order, confirming successful Behavioral Waveform Verification.

## Result
A Block Memory Generator was successfully implemented.
