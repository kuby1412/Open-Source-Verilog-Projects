`timescale 1ns / 1ps

module half_adder_tb;

  // Input Registers:
  reg iA;
  reg iB;

  // Output Registers:
  wire oSUM;
  wire oCARRY;

  // Instantiate the Unit Under Test (UUT)
  half_adder uut
  (
    .iA(iA),
    .iB(iB),
    .oSUM(oSUM),
    .oCARRY(oCARRY)
  );

  // The code below tests the half-adder by manually changing the values of each input register
  initial begin

    // Set the both input registers as 0 as a default
    iA = 0;
    iB = 0;

    // For five seconds, set one register to 1 while leaving the other as its default 0
    #5 iA = 0; iB = 1;

    // For five seconds, set the other register to 1 while flipping the other to its default 0
    #5 iA = 1; iB = 0;

    // For five seconds, set both registers to 1
    #5 iA = 1; iB = 1;
  end

  initial #25 $finish; // The test should run for a total of 25 nanoseconds

endmodule
