//switsh level modelling
// 2:1 MUX

//include inverter
`include "inverter.v"

//start module
module mux2(a,b,s,y);

//declare i/o ports
input a,b,s;
output y;

//declare wires
wire w1,w2,w3,w4,s1;

//declare supply and ground
supply1 vdd;
supply0 vss;

//inverted i/o values
inverter i1(s,s1);

//pull up network
pmos x1(w1,vdd,a);
pmos x2(w1,vdd,s1);
pmos x3(w4,w1,b);
pmos x4(w4,w1,s);

//pull down network
nmos y1(w2,vss,s1);
nmos y2(w3,vss,s);
nmos y3(w4,w2,a);
nmos y4(w4,w3,b);

//invert output
inverter i2(w4,y);

//end module
endmodule
