`timescale 1ns/1ps
module ALU8x8_tb;
reg [7:0]a,b;
reg [2:0]o;
reg [2:0]count = 3'b0;
wire [15:0]r;
wire c,z;
ALU8x8 alu (.a(a),.b(b),.c(c),.o(o),.r(r),.z(z));
initial 
begin
a=8'b0;
b=8'b0;
o=3'b0;
#20;
a=8'hAA;
b=8'h55;
for (count = 0; count<8; count = count + 1'b1)
begin
o = count;
#20;
end
end
endmodule
