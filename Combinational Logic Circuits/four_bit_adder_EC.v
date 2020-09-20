`timescale 1ns / 1ps

module four_bit_adder_EC
(
  input [3:0] A,
  input [3:0] B,
  output [4:0] SUM
);

  assign SUM[0] = A[0] ^ B[0];
  assign SUM[1] = A[1] ^ B[1] ^ (A[0] & B[0]);
  assign SUM[2] = A[2] ^ B[2] ^ ((A[1] & B[1]) | ((A[0] & B[0]) & (A[1] ^ B[1])));
  assign SUM[3] = A[3] ^ B[3] ^ ((A[2] & B[2]) | ((A[1] & B[1]) & (A[2] ^ B[2])) | ((A[0] & B[0]) & (A[1] ^ B[1]) & (A[2] ^ B[2])));
  assign SUM[4] = ((A[3] & B[3]) | (A[2] & B[2]) & (A[3] ^ B[3])) | ((A[1] & B[1]) & (A[2] ^ B[2]) & (A[3] ^ B[3])) | ((A[0] & B[0]) & (A[1] ^ B[1]) & (A[2] ^ B[2]) & (A[3] ^ B[3]));

endmodule
