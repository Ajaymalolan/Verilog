//testbench for cmos xnor Gate

//start test bench
module xnorGate_tb;

//declare i/o ports
reg a,b;
wire c;

//instantiate source file
xnorGate n(.a(a),.b(b),.c(c));

//begin simulation
initial 
begin

//monitor variables
$monitor(a,b,c);

//dump variables and generate wave form
$dumpfile("xnorGate.vcd");
$dumpvars(0,xnorGate_tb);

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
