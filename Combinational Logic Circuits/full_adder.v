`timescale 1ns / 1ps

module full_adder
(
  input A,
  input B,
  input CARRY_IN,
  output SUM,
  output CARRY_OUT
);

  // This uses two exclusive OR (XOR) gates to SUM three inputs
  assign SUM = (A ^ B) ^ CARRY_IN;

  // This uses three OR gates to detect a CARRY_OUT from three inputs
  assign CARRY_OUT = (A & ~B & CARRY_IN) | (~A & B & CARRY_IN) | (A & B);

endmodule
