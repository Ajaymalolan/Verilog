//test bench for 2:1 MUX
module mux_2_tb;

//i/o ports
reg x1;
reg x2;
reg c;
wire y;

//instantiate source code
mux_2 m (.x1(x1),.x2(x2),.c(c),.y(y));

//initiate simulation
initial 
begin

//dump variables and create wave form file
$dumpfile("b_tm.vcd");
$dumpvars(0,mux_2_tb);

//monitor signals
$monitor(x1,x2,y,c);

//assign different values for simulation
x1=1'b0;
x2=1'b1;
c=1'b0;
#40
x1=1'b0;
x2=1'b1;
c=1'b1;
#40

//end simulation
$finish;
end

//end testbench
endmodule
