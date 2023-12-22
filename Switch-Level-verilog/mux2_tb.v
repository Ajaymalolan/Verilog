//testbench for cmos 2:1 MUX

//start test bench
module mux2_tb;

//declare i/o ports
reg a,b,s;
wire y;

//instantiate source file
mux2 m(.a(a),.b(b),.s(s),.y(y));

//begin simulation
initial 
begin

//monitor variables
$monitor(a,b,s,y);

//dump variables and generate wave form
$dumpfile("mux2.vcd");
$dumpvars(0,mux2_tb);

//give simulation values
a=1'b1;
b=1'b0;
s=1'b0;
#10
a=1'b1;
b=1'b0;
s=1'b0;
#10
a=1'b1;
b=1'b0;
s=1'b1;
#10
a=1'b1;
b=1'b0;
s=1'b1;
#10

//end simulation
$finish;
end

//end testbench
endmodule
