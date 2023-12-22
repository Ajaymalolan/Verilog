//switch level model
//cmos Nor Gate

//start module
module NorGate(a,b,c);

//declare i/o ports
input a,b;
output c;

//declare supply and ground
supply1 vdd;
supply0 vss;

//declare wires
wire w;

//pull up network
pmos x1(w,vdd,a);
pmos x2(c,w,b);

//pull down network
nmos y1(c,vss,a);
nmos y2(c,vss,b);

//end module
endmodule
