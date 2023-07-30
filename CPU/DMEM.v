`timescale 1ns / 1ps

module dmem(
  input clk,
  input reset,
  input CS,
  input DM_W,
  input DM_R,
  input [31:0] address,
  input [31:0] wdata,
  output [31:0] rdata);
    
  reg [31:0] RAM [2047:0];
  
  assign rdata=(CS&DM_R)?RAM[address[31:2]]:32'h0; //寻址赋值

  always @(posedge clk) begin
    if (CS) begin
      if (DM_W)
        RAM[address[31:2]]<=wdata;
    end
  end

endmodule