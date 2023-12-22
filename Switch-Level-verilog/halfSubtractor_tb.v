//testbench for cmos half Subtractor

//start test bench
module halfSubtractor_tb;

//declare i/o ports
reg a,b;
wire c,s;

//instantiate source file
halfSubtractor h(.a(a),.b(b),.c(c),.s(s));

//begin simulation
initial 
begin

//monitor variables
$monitor(a,b,c,s);

//dump variables and generate wave form
$dumpfile("halfSubtractor.vcd");
$dumpvars(0,halfSubtractor_tb);

//give simulation values
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

//end testbench
endmodule
