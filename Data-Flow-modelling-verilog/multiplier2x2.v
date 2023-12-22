//dataflow modelling
//2bit multiplier

//include half adder
`include "halfAdder.v"

//start module

module multiplier2x2(a,b,c);

//declare i/o ports
input [1:0]a;
input [1:0]b;
output [3:0]c;

//declare intermediate wires
wire [3:0]w;

//assign values

//stage 1:
assign c[0] = a[0] & b[0];
assign w[0] = a[1] & b[0];
assign w[1] = a[0] & b[1];
assign w[2] = a[1] & b[1];

//stage 2:
halfAdder h1(.a(w[1]),.b(w[0]),.c(w[3]),.s(c[1]));
halfAdder h2(.a(w[3]),.b(w[2]),.c(c[3]),.s(c[2]));

//endmodule
endmodule
