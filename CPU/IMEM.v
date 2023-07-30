`timescale 1ns / 1ps //时间单位与精度

module imem(
  input [31:0] Address,
  input IM_R,
  output [31:0] Instruction);
   
  reg [31:0] RAM[2047:0]; //指令存储器
  
  initial begin
    $readmemh("D:\\CPU\\imem.txt",RAM);
  end
  
  assign Instruction=(IM_R)?RAM[Address[31:2]]:32'bx;
endmodule