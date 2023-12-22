//test bench for nor gate

//start module
module norGate_tb;

//i/o ports
reg a,b;
wire c;

//intantiate source code
norGate o(.a(a),.b(b),.c(c));

//initialise simulation.
initial
begin
  
//monitor variables.
$monitor(a,b,c);

//dump variables and create waveform file.
$dumpfile("norGate.vcd");
$dumpvars(0,norGate_tb);
  
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
