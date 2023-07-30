`timescale 1ns / 1ps

module JOIN(
	input [27:0] a,
	input [3:0] b,
	output [31:0] s);
    
  assign s[31:28]=b;
  assign s[27:0]=a;

endmodule