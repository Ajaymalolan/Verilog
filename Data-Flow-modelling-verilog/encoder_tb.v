//behavioral modelling.
//testbench for 8 bit encoder.

//start module.
module encoder_tb;

//declare i/o ports for simulation.
wire [2:0]s;
reg [7:0]a;

//instantiate source code module.
encoder e(.a(a),.s(s));

//initialise simulation.
initial
begin
  
//monitor variables.
$monitor(a,s);

//dump variables and create waveform file.
$dumpfile("encoder.vcd");
$dumpvars(0,encoder_tb);
  
//inputs for simulation.
a=8'b00000001;
#10
a=8'b00000010;
#10
a=8'b00000100;
#10
a=8'b00001000;
#10
a=8'b00010000;
#10
a=8'b00100000;
#10
a=8'b01000000;
#10
a=8'b10000000;
#10

//end simulation
$finish;
end
  
//end module
endmodule
