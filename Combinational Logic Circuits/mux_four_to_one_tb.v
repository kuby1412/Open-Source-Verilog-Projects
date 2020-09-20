`timescale 1ns / 1ps

module mux_four_to_one_tb;

  // Inputs
  reg [3:0] DIN;
  reg [1:0] SEL;

  // Outputs
  wire DOUT;

  // Instantiate two counter variables for both loop
  integer count;
  integer count2;

  // Instantiate the Unit Under Test (UUT)
  mux_four_to_one uut
  (
    .DIN(DIN),
    .SEL(SEL),
    .DOUT(DOUT)
  );

  initial begin

    // Initialize Inputs
    DIN = 0;
    SEL = 0;

    // Initialize counter variables
    count = 0;
    count2 = 0;

    // Loops over the possible combinations for SEL and resets the value for DIN
    for (count = 0; count < 4; count = count + 1) begin
      SEL = count;
      DIN = 0;

      // Loops over the possible combinations for DIN for each SEL value
      for (count2 = 0; count2 <= 16; count2 = count2 + 1) begin
        #5 DIN = count2;
      end
    end
  end

  initial #340 $finish; // The test will run for a total interval of 340 nanoseconds

endmodule
