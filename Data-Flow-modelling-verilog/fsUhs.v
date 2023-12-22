//data flow modelling

//include half subtractor file
`include "halfSubtractor.v"

//full subtractor using half subtractor
module fsUhs(a,b,cin,d,cout);

//declare i/o ports
input a,b,cin;
output d,cout;

//declare intermediate wires
wire ci, cii, di;

//instantiate half subtractor
halfSubtractor s1(.a(a),.b(b),.c(ci),.d(di));
halfSubtractor s2(.a(di),.b(cin),.c(cii),.d(d));

//assign final borrow value
assign cout = ci | cii;

//end module
endmodule
