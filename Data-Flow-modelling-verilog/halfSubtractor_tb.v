//test bench for half subtractor
module halfSubtractor_tb;

//declare i/o ports
reg a,b;
wire c,d;

//instantiate source code module
halfSubtractor s(.a(a),.b(b),.c(c),.d(d));

//initiate simulation
initial 
begin

//monitor variables
$monitor(a,b,c,d);

//dump variables and create wave form file
$dumpfile("b_HS.vcd");
$dumpvars(0,halfSubtractor_tb);

//give values for simulation
a=1'b0;
b=1'b0;
#10
a=1'b0;
b=1'b1;
#10
a=1'b1;
b=1'b0;
#10
a=1'b1;
b=1'b1;
#10

//end simulation
$finish;
end
endmodule
