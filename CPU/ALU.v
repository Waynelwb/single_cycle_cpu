`timescale 1ns / 1ps

module alu(
	input [31:0] SrcA,
	input [31:0] SrcB,
	input [2:0] ALUControl,
	output [31:0] result,
	output zero);
	
	reg [31:0] result_temp;
	
	always @(*) begin
		case(ALUControl)
			3'b000:result_temp=SrcA+SrcB; //两数相加
			3'b001:result_temp=SrcA-SrcB; //两数相减
			3'b010:result_temp=SrcA|SrcB; //按位或
			3'b011:result_temp=SrcB<<SrcA[4:0]; //左移偏移位
		endcase
	end
	
	assign result = result_temp;
	assign zero = result?1'b0:1'b1; //零值

endmodule
