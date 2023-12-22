`include "DFF.v"
`include "multiplier.v"
`include "adder.v"
module fir3_filter(xi,yo,clk,w1,w2,w3);
input [7:0]xi,w1,w2,w3;
input clk;
output reg [15:0]yo;
wire [15:0]m0,m1,m2,q1,q2,add1,add2;
multiplier m1(.a(xi),.b(w3),.p(m2));
multiplier m2(.a(xi),.b(w2),.p(m1));
multiplier m3(.a(xi),.b(w1),.p(m0));
adder r1(.s(add1),.1(q1),.b(m1));
adder r2(.s(add2),.1(q2),.b(m0));
DFF d1(.clk(clk),d(m2),.q(q1));
DFF d2(.clk(clk),d(add1),.q(q2));
always@(posedge clk)
yo<=add2;
endmodule
