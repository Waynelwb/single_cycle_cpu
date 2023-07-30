`timescale 1ns / 1ps


module dmem(
input clk,
input reset,
input CS,
input DM_W,
input DM_R,
input [31:0] addr,
input [31:0] wdata,
output [31:0] rdata
    );
    
reg [31:0] RAM [2047:0];
assign rdata=(CS&DM_R)?RAM[addr[31:2]]:32'h0;

always @(posedge clk)
begin
  if(CS)
  begin
    if(DM_W)
    RAM[addr[31:2]]<=wdata;
  end
end
endmodule
