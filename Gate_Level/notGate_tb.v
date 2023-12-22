//test bench for not gate

//start module
module notGate_tb;

//i/o ports
reg a,b;
wire c;

//intantiate source code
notGate o(.a(a),.c(c));

//initialise simulation.
initial
begin
  
//monitor variables.
$monitor(a,c);

//dump variables and create waveform file.
$dumpfile("notGate.vcd");
$dumpvars(0,notGate_tb);
  
//inputs for simulation.
a=1'b0;
#10
a=1'b1;
#10

//end simulation
$finish;
end

//end module
endmodule
