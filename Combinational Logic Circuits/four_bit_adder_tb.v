`timescale 1ns / 1ps

module four_bit_adder_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [4:0] SUM;

	// Instantiate two counter variables for both loop
	integer count;

	// Instantiate the Unit Under Test (UUT)
	four_bit_adder uut
	(
		.A(A),
		.B(B),
		.SUM(SUM)
	);

  	initial begin

		// Initialize Inputs
		A = 0;
		B = 0;
		count = 0;

	end

  //Whenever the value of either A or B changes, iterate the possible combinations
  always @(A or B)
	begin
		// Loops over the possible combinations for A and B
		for (count = 0; count < 256; count = count + 1)
			#1 {A, B} = count;
			#2 $stop;
      end

endmodule
