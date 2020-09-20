`timescale 1ns / 1ps

module three_bit_comparator_tb;

  // Inputs
  reg [2:0] A;
  reg [2:0] B;

  // Outputs
  wire GT;
  wire LT;
  wire EQ;

  // Instantiate two counter variables for both loop
  integer count;

  // Instantiate the Unit Under Test (UUT)
  three_bit_comparator uut
  (
    .A(A),
    .B(B),
    .GT(GT),
    .LT(LT),
    .EQ(EQ)
  );

  initial begin

    // Initialize Inputs
    A = 0;
    B = 0;

    // Initialize counter variables
    count = 0;
  end

  // Whenever the value of either A or B changes, iterate the possible combinations
  always @(A or B) begin

    // Loops over the possible combinations for A and B
    for (count = 0; count < 64; count = count + 1)
      #1 {A, B} = count;
      #5 $stop;
    end

endmodule
