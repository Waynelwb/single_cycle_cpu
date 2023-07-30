`timescale 1ns/1ps

module imem_tb (
    );
    reg IM_R;
    reg [31:0] a;
    wire [31:0] rd;
    integer i;
    initial begin
        $dumpfile("imem.vcd");
        $dumpvars(0, imem_tb);
    end
    initial begin
        a = 32'b0;
        IM_R = 1;
        for (i=0; i<60; i=i+1) begin
            #10 ;
            a = a + 32'd4;
        end
    end
    imem imem1(a, IM_R, rd);

endmodule
