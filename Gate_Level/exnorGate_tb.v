//testbench for exnor gate

//start test bench
module exnorGate_tb;

//declare i/o ports
reg a,b;
wire c;

//instantiate source code
exnorGate x(.a(a),.b(b),.c(c));

//start simulation
initial
begin

//monitor variables
$monitor(a,b,c);

//dump variables and create waveform file
$dumpfile("exnorGate.vcd");
$dumpvars(0,exnorGate_tb);

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
