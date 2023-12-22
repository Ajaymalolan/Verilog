//behavioral modelling.
//testbench for half adder.

//start module.
module halfAdder_tb;

//declare i/o ports for simulation.
wire c_o,s_o;
reg a_i,b_i;

//instantiate source code module.
halfAdder half(
.a(a_i), 
.b(b_i), 
.c(c_o), 
.s(s_o)
);
  
//initialise simulation.
initial
begin
  
//dump variables and create waveform file.
$display(a_i,b_i,c_o,s_o);
$dumpfile("halfAdder.vcd");
$dumpvars(0,halfAdder_tb);
  
//inputs for simulation.
a_i=1'b0;
b_i=1'b0;
#10
a_i=1'b0;
b_i=1'b1;
#10
a_i=1'b1;
b_i=1'b0;
#10
a_i=1'b1;
b_i=1'b1;
#10

//end simulation
$finish;
end
  
//end module
endmodule
