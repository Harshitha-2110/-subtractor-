# -subtractor-
Verilog Subtractor

Description

A subtractor is a combinational logic circuit that performs binary subtraction and produces a difference and borrow output.

Features

- Designed using Verilog HDL
- Combinational logic circuit
- Includes design and testbench
- Can be simulated using Icarus Verilog and GTKWave

Files

- "subtractor.v" – Subtractor design
- "subtractor_tb.v" – Testbench
- "README.md" – Project documentation

Inputs and Outputs

Signal| Type| Description
A| Input| Minuend
B| Input| Subtrahend
Difference| Output| Result of A - B
Borrow| Output| Borrow generated during subtraction

Logic

The subtractor performs:

Difference = A XOR B

Borrow = ~A AND B

Simulation

Compile the Verilog files using:

iverilog -o subtractor_sim subtractor.v subtractor_tb.v

Run the simulation:

vvp subtractor_sim

To view the waveform using GTKWave:

gtkwave subtractor.vcd

Expected Result

A| B| Difference| Borrow
0| 0| 0| 0
0| 1| 1| 1
1| 0| 1| 0
1| 1| 0| 0

Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave

Author

Digital Design / Verilog HDL Project
author: Harshitha 