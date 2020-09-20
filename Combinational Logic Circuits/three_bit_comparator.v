`timescale 1ns / 1ps

module three_bit_comparator
(
  input [2:0] A,
  input [2:0] B,
  output GT,
  output LT,
  output EQ
);

  assign GT = (~B[2] & ~B[1] & ~B[0] & A[0]) | (~B[2] & ~B[1] & A[1]) | (~B[2] & A[2]) | (~B[2] & ~B[0] & A[1] & A[0]) | (~B[1] & ~B[0] & A[2] & A[0]) | (~B[1] & A[2] & A[1]) | (~B[0] & A[2] & A[1] & A[0]);
  assign LT = (B[0] & ~A[2] & ~A[1] & ~A[0]) | (B[1] & ~A[2] & ~A[1]) | (B[1] & B[0] & ~A[2] & ~A[0]) | (B[2] & ~A[2]) | (B[2] & B[0] & ~A[1] & ~A[0]) | (B[2] & B[1] & ~A[1]) | (B[2] & B[1] & B[0] & ~A[0]);
  assign EQ = (A[0] ^~ B[0]) & (A[1] ^~ B[1]) & (A[2] ^~ B[2]);

endmodule
