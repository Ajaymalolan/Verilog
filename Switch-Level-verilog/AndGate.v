//switch level modelling
//And gate

//start module
module AndGate(a,b,c);

//i/o ports
input a,b;
output c;

//declare wires
wire w1,w2;

//declare supply and ground
supply1 vdd;
supply0 vss;

//stage one

//pull up network
pmos x1(w2,vdd,a);
pmos x2(w2,vdd,b);

//pull down network
nmos y1(w2,w1,a);
nmos y2(w1,vss,b);

//stage two

//pull up network
pmos x3(c,vdd,w2);

//pull down network
nmos y3(c,vss,w2);

//endmodule
endmodule
