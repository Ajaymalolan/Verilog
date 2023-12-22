//test bench for and gate

//start module
module andGate_tb;

//i/o ports
reg a,b;
wire c;

//intantiate source code
andGate o(.a(a),.b(b),.c(c));

//initialise simulation.
initial
begin
  
//monitor variables.
$monitor(a,b,c);

//dump variables and create waveform file.
$dumpfile("andGate.vcd");
$dumpvars(0,andGate_tb);
  
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
