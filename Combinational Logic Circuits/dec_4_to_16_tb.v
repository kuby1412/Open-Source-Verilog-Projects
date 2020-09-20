`timescale 1ns / 1ps

module dec_4_to_16_tb;

  // Inputs
  reg [3:0] ADDR;

  // Outputs
  wire [15:0] DEC;

  // Instantiate a counter variable for the loop
  integer count;

  // Instantiate the Unit Under Test (UUT)
  dec_4_to_16 uut
  (
    .ADDR(ADDR),
    .DEC(DEC)
  );

  initial begin

    // Initialize Inputs
    ADDR = 0;

    // Initialize counter variable
    count = 0;

    // Loops over the possible combinations for ADDR
    for (count = 1; count <= 16; count = count + 1) begin
      #5 ADDR = count;
    end
  end

  initial #80 $finish; // The test will run for a total interval of 80 nanoseconds

endmodule
