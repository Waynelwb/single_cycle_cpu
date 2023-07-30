`timescale 1ns / 1ps

module ALU(
	input clk,
	input [31:0] SrcA,
	input [31:0] SrcB,
	input [2:0] ALUControl,
	output [31:0] result,
	output zero);
	reg [31:0] result_temp;
	always @(posedge clk) begin
		case(ALUControl)
			3'b000:result_temp=SrcA+SrcB;
			3'b001:result_temp=SrcA-SrcB;
			3'b010:result_temp=SrcA|SrcB;
		endcase
	end
	assign result = result_temp;
	assign zero = result?1'b0:1'b1;
endmodule
