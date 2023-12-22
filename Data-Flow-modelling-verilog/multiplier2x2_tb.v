//test bench for 2bit multiplier

//start test bench
module multiplier2x2_tb;

//declare i/o ports

reg [1:0]a;
reg [1:0]b;
wire [3:0]c;

//instantiate source file
multiplier2x2 m(.a(a),.b(b),.c(c));

//start simulation
initial
begin

//monitor desired variables
$monitor (a,b,c);

//generate output and waveform files
$dumpfile("multiplier2x2.vcd");
$dumpvars(0,multiplier2x2_tb);

//give simulation values

a=2'b00;
b=2'b00;
#10
a=2'b00;
b=2'b11;
#10
a=2'b01;
b=2'b11;
#10
a=2'b10;
b=2'b11;
#10
a=2'b10;
b=2'b10;
#10
a=2'b11;
b=2'b11;
#10

//end stimulation
$finish;
end

//end test bench
endmodule
