`timescale 1ns / 1ps

module PC(
    input clk,
    input rst,
    input [31:0] instruction_in,
    output reg [31:0] instruction_out);

    always @(posedge clk, posedge rst) begin
        if(rst)
            instruction_out<=32'b0; //复位信号来临时，指令地址赋初值为32'b0
        else
            instruction_out<=instruction_in; //时钟信号来临时，将NPC传入的值传出
    end    

endmodule
