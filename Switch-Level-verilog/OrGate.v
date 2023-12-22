//switch level modelling
//OR gate

//start module
module OrGate(a,b,c);

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
pmos x1(w1,vdd,a);
pmos x2(w2,w1,b);

//pull down network
nmos y1(w2,vss,a);
nmos y2(w2,vss,b);

//stage two

//pull up network
pmos x3(c,vdd,w2);

//pull down network
nmos y3(c,vss,w2);

//endmodule
endmodule
