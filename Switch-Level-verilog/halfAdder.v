//switch level model
//cmos half adder

//include inverter file
`include "inverter.v"

//start module
module halfAdder(a,b,c,s);

//declare i/o ports
input a,b;
output c,s;

//declare supply and ground
supply1 vdd;
supply0 vss;

//declare wires
wire a1,b1,w1,w2,w3,w4,w5;

//inverted i/o values
inverter i1(a,a1);
inverter i2(b,b1);

//sum circuit

//pull up network
pmos x1(w1,vdd,a1);
pmos x2(w1,vdd,b1);
pmos x3(s,w1,a);
pmos x4(s,w1,b);

//pull down network
nmos y1(s,w2,a);
nmos y2(w2,vss,b);
nmos y3(s,w3,a1);
nmos y4(w3,vss,b1);

//carry circuit

//pull up network
pmos x5(w5,vdd,a);
pmos x6(w5,vdd,b);

//pull down network
nmos y5(w4,vss,a);
nmos y6(w5,w4,b);

//carry output
inverter i3(w5,c);

//end module
endmodule
