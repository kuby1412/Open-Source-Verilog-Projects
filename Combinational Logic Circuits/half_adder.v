`timescale 1ns / 1ps

module half_adder
(
  input iA,
  input iB,
  output oSUM,
  output oCARRY
);

  // This uses an exclusive OR gate to find the SUM of two inputs
  assign oSUM = iA ^ iB;

  // This uses an AND gate to find the CARRY of two inputs
  assign oCARRY = iA & iB;

endmodule
