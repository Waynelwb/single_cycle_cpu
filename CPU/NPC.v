`timescale 1ns / 1ps

module NPC(
    input [31:0] PC,
    output [31:0] PCPlus4);

assign PCPlus4 = PC + 32'd4; //npc=pc+4
    
endmodule
