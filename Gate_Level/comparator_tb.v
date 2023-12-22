//behavioral modelling.
//testbench for comparator.

//start module.
module comparator_tb;

//declare i/o ports for simulation.
reg a,b;
wire [2:0]c;

//instantiate source code module.
comparator d(.a(a),.b(b),.c(c));

//initialise simulation.
initial
begin
  
//monitor variables.
$monitor(a,b,c);

//dump variables and create waveform file.
$dumpfile("comparator.vcd");
$dumpvars(0,comparator_tb);
  
//inputs for simulation.
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
  
//end module
endmodule
