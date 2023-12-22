`timescale 1ns/1ps
module regfile_tb;
reg [31:0] ip;
reg [3:0] si,so1,so2;
reg rd,wt,rst,en,clk;
wire [31:0] op1,op2;
regfile file (.ip(ip),.op1(op1),.op2(op2),.si(si),.so1(so1),.so2(so2),.rd(rd),.wt(wt),.rst(rst),.en(en),.clk(clk));
initial 
begin
ip = 32'b0;
si = 4'b0;
so1 = 4'b0;
so2 = 4'b0;
rd = 1'h0;
wt = 1'h0;
rst = 1'b1;
en = 1'b0;
clk = 1'b0;
#20
rst = 1'b0;
en = 1'b1;
#20
rd = 1'h0;
wt = 1'h1;
ip = 32'h11111111;
si=4'h0;
#20
ip = 32'h22222222;
si = 4'h1;
#20
so1 = 4'b0;
so2 = 4'b1;
rd = 1'h0;
wt = 1'h1;
end
always begin
#10
clk = ~clk;
end
endmodule
