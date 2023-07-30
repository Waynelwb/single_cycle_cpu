`timescale 1ns / 1ps

module top_tb;
  reg clk_in;
  reg reset;
  wire clk;
  wire [31:0]pc;
  wire [31:0]inst;
  wire [31:0]addr;
  wire [31:0]rdata;
  wire [31:0]wdata;
  wire IM_R;
  wire DM_CS;
  wire DM_R;
  wire DM_W;
  wire [31:0]alu_r;

  top uut(clk_in,reset,clk,pc,inst,addr,rdata,wdata,IM_R,DM_CS,DM_R,DM_W,alu_r);
  initial begin
    clk_in = 0;
    reset = 1;
    #100;
    reset=0;
    forever
      #100
      clk_in = ~clk_in;
  end

endmodule