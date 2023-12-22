//switch level model
//cmos Nand Gate

//start module
module NandGate(a,b,c);

//declare i/o ports
input a,b;
output c;

//declare supply and ground
supply1 vdd;
supply0 vss;

//declare wires
wire w;

//pull up network
pmos x1(c,vdd,a);
pmos x2(c,vdd,b);

//pull down network
nmos y1(c,w,a);
nmos y2(w,vss,b);

//end module
endmodule
