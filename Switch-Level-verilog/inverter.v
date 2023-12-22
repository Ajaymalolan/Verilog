//switch level modelling
//cmos inverter

//begin module
module inverter(i,o);

//declare input and output ports
input i;
output o;

//declare supply and gnd
supply1 vdd;
supply0 vss;

//cmos logic
pmos t1(o,vdd,i);
nmos t2(o,vss,i);

//endmodule
endmodule

