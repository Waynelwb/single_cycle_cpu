`timescale 1ns/1ps

module dmem_tb (
    );
    reg clk;
    reg reset;
    reg CS;
    reg DM_W;
    reg DM_R;
    reg [31:0] addr;
    reg [31:0] wdata;
    wire [31:0] rdata;
    initial begin
        $dumpfile("dmem.vcd");
        $dumpvars(0, dmem_tb);
    end
    initial begin
        clk = 0;
        reset = 1;
        CS = 1;
        DM_W = 1;
        DM_R = 0;
        addr = 32'h0;
        wdata = 32'b10;
        #10 clk=1;
        #5 clk=0;
        DM_R = 1;
        DM_W = 0;
        #5 clk=1;
    end
    dmem dmem1(clk, reset, CS, DM_W, DM_R, addr, wdata, rdata);

endmodule
