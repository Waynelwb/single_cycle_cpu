`timescale 1ns / 1ps

module regfile(
  input clk,
  input rst,
  input we, //写使能信号
  input [4:0] raddr1,
  input [4:0] raddr2,
  input [4:0] waddr,
  input [31:0] wdata,
  output [31:0] rdata1,
  output [31:0] rdata2);
  
  reg [31:0] array_reg[31:0]; //定义寄存器
  integer i;

  always@(posedge clk,posedge rst) begin
    if(rst) begin //复位信号来临时为寄存器赋初值
      i=0;
      while (i<32) begin
        array_reg[i]=0;
        i = i+1;
      end
    end
    else if (we) begin //写使能信号为1时，向寄存器写入数据
      if(waddr!=0) //判断写入地址是否为零，非0时向寄存器写入数据
        array_reg[waddr]=wdata;
    end
  end

assign rdata1=array_reg[raddr1]; //从寄存器读取数据
assign rdata2=array_reg[raddr2];

endmodule