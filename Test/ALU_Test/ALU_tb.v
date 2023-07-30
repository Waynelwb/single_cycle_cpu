`timescale 1ns/1ps

module ALU_tb();
	reg clk;
	reg [31:0] SrcA;
	reg [31:0] SrcB;
	reg [2:0] ALUControl;
	wire [31:0] result;
	wire zero;
	initial begin
		$dumpfile("ALU.vcd");
		$dumpvars(0, ALU_tb);
	end
	initial begin
		clk = 1'b0;
		SrcA = 32'b0;
		SrcB = 32'b0;
		#5;
		SrcA = 32'd1;
		SrcB = 32'd9;
		ALUControl = 32'b000;
		#10;
		SrcA = 32'd5;
		SrcB = 32'd5;
		ALUControl = 32'b001;
		#10;
		SrcA = 32'b1;
		SrcB = 32'b1;
		ALUControl = 32'b010;
	end
	always #5 clk=~clk;
	always begin
		#10;
		if ($time >= 30) begin
			$finish;
		end
	end
	ALU ALU1(clk, SrcA, SrcB, ALUControl, result, zero);
endmodule