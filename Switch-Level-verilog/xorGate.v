//switch level modelling
//XOR gate

//include inverter
`include "inverter.v"

//start module
module xorGate(a,b,c);

//i/o ports
input a,b;
output c;

//declare wires
wire w1,w2,w3,w4,a1,b1;

//inverted i/o values
inverter i1(a,a1);
inverter i2(b,b1);

//declare supply and ground
supply1 vdd;
supply0 vss;

//pull up network
pmos x1(w1,vdd,b1);
pmos x2(c,w1,a);
pmos x3(w2,vdd,b);
pmos x4(c,w2,a1);

//pull down network
nmos y1(w3,vss,a);
nmos y2(c,w3,b);
nmos y3(w4,vss,a1);
nmos y4(c,w4,b1);

//endmodule
endmodule
