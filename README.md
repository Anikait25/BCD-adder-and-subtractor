# BCD Adder and Subtractor with 7-Segment Display in Verilog

This project implements a **BCD (Binary-Coded Decimal) Adder and Subtractor** using Verilog HDL, along with output display logic for 7-segment displays.  
It includes modules for addition, subtraction, display encoding, and testbench verification.

## Project Structure

| File | Description |
| --- | --- |
| `BCD_Adder.v` | Performs BCD addition of two 4-bit numbers with proper correction when sum > 9. |
| `BCD_Subtractor.v` | Performs BCD subtraction of two 4-bit numbers with borrow handling. |
| `BCD_Adder_and_Subtractor.v` | Top module to select between addition or subtraction based on mode input. |
| `BCD_Adder_and_Subtractor_disp.v` | Converts BCD result into 7-segment display code. |
| `BCD_Adder_and_Subtractor_tb.v` | Testbench to simulate and verify the functionality. |

## How It Works

- **Inputs**:
  - `a`, `b` : 4-bit BCD numbers
  - `mode` : Selects operation (0 for addition, 1 for subtraction)

- **Outputs**:
  - `result` : 4-bit BCD result
  - `carry_out` or `borrow_out` depending on the operation
  - `seg` : 7-segment display encoding of the result

- Based on the `mode` signal:
  - If `mode = 0`: Performs BCD addition.
  - If `mode = 1`: Performs BCD subtraction.

- The result is then encoded for 7-segment display.

## Simulation Instructions

1. Use any Verilog simulator (ModelSim, Vivado, etc.).
2. Compile the following files:
   - `BCD_Adder.v`
   - `BCD_Subtractor.v`
   - `BCD_Adder_and_Subtractor.v`
   - `BCD_Adder_and_Subtractor_disp.v`
   - `BCD_Adder_and_Subtractor_tb.v`
3. Run simulation with different `a`, `b`, and `mode` values.
4. Observe the result and display outputs.

## Example Operation

| a (BCD) | b (BCD) | Mode | Operation | Result | Display |
| :---: | :---: | :---: | :--- | :---: | :---: |
| 5 | 3 | 0 | 5 + 3 = 8 | 8 | '8' on 7-segment |
| 7 | 2 | 1 | 7 - 2 = 5 | 5 | '5' on 7-segment |
| 9 | 9 | 0 | 9 + 9 = 18 (BCD corrected) | 8 with carry 1 | '8' with carry info |

> BCD correction: If addition result > 9, add 6 to correct the sum.

## Requirements

- Understanding of BCD arithmetic
- Basic Verilog knowledge
- Verilog simulation tool (ModelSim, Vivado, Quartus Prime, etc.)

## Author

Anikait Sarkar  
RSA SEIP VLSI Trainee
