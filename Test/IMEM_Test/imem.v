`timescale 1ns / 1ps

module imem(
input [31:0] a,
input IM_R,
output [31:0] rd
    );
   
    reg [31:0] RAM[2047:0];
    initial
    begin
      $readmemh("/Users/wayne/imem_test/imem.txt",RAM);
    end
    
   assign rd=(IM_R)?RAM[a[31:2]]:32'bx;
endmodule
