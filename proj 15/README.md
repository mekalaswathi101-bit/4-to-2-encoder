# 4-to-2 Encoder using Verilog

## 📌 Project Description

This project implements a 4-to-2 Encoder using Verilog HDL.

An encoder is a combinational digital circuit that converts one active
input out of several inputs into a binary code.

A 4-to-2 encoder has:

- 4 input lines
- 2 output lines

In a basic encoder, only one input should be HIGH at a time.

## 🎯 Objectives

- Design a 4-to-2 Encoder using Verilog HDL.
- Implement the encoder logic equations.
- Create a Verilog testbench.
- Test all valid input combinations.
- Generate a simulation waveform.
- Verify the output using GTKWave.
- Upload the complete project to GitHub.

## 🔧 Specifications

| Parameter | Value |
|-----------|-------|
| Input Lines | 4 |
| Output Lines | 2 |
| Circuit Type | Combinational |
| HDL | Verilog |

## 📐 Logic Equations

```text
Y1 = I2 + I3
Y0 = I1 + I3