//behavioral modelling.
//testbench for 8 bit encoder.

//start module.
module decoder_tb;

//declare i/o ports for simulation.
reg [2:0]s;
wire [7:0]a;

//instantiate source code module.
decoder d(.a(a),.s(s));

//initialise simulation.
initial
begin
  
//monitor variables.
$monitor(a,s);

//dump variables and create waveform file.
$dumpfile("decoder.vcd");
$dumpvars(0,decoder_tb);
  
//inputs for simulation.
s=3'b000;
#10
s=3'b001;
#10
s=3'b010;
#10
s=3'b011;
#10
s=3'b100;
#10
s=3'b101;
#10
s=3'b110;
#10
s=3'b111;
#10



//end simulation
$finish;
end
  
//end module
endmodule
