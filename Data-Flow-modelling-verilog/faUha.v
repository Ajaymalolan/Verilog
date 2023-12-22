//data flow modeling.
//full adder using half adder.

//include half adder from previous program
`include "halfAdder.v"

//start module.
module faUha(a,b,cin,s,c);

//declare i/o ports.
input a,b,cin;
output s,c;

//declare intermediate connections.
wire si,ci,cii;

//first stage
halfAdder H1 (.a(a),.b(b),.c(ci),.s(si));
halfAdder H2 (.a(si),.b(cin),.c(cii),.s(s));

//second stage
assign c= ci|cii;

//ending module
endmodule
