//testbench for cmos half Adder

//start test bench
module halfAdder_tb;

//declare i/o ports
reg a,b;
wire c,s;

//instantiate source file
halfAdder h(.a(a),.b(b),.c(c),.s(s));

//begin simulation
initial 
begin

//monitor variables
$monitor(a,b,c,s);

//dump variables and generate wave form
$dumpfile("halfAdder.vcd");
$dumpvars(0,halfAdder_tb);

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
