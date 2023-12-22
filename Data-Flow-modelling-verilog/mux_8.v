//data flow model
//8:1 mux using 4:1 MUX and 2:1 MUX
//include 4:1 MUX
`include "mux_4.v"
//include 2:1 MUX
`include "mux_2.v"

//start module
module mux_8(d,c,y);

//declare i/o ports
input [7:0]d;
input [2:0]c;
output y;

//intermediate wires
wire i1,i2;

//stage one
mux_4 m1(d[0],d[1],d[2],d[3],c[0],c[1],i1);
mux_4 m2(d[4],d[5],d[6],d[7],c[0],c[1],i2);

//stage two
mux_2 m3(i1,i2,c[2],y);

endmodule
