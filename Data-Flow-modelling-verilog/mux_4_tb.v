//test bench for 4:1 MUX
module mux_4_tb;

//i/o ports
reg x1,x2,x3,x4;
reg c1,c2;
wire y;

//instantiate source code
mux_4 m(.x1(x1),.x2(x2),.x3(x3),.x4(x4),.c1(c1),.c2(c2),.y(y));

//initiate simulation
initial 
begin

//dump variables and create wave form file
$dumpfile("b_fm.vcd");
$dumpvars(0,mux_4_tb);

//monitor signals
$monitor(x1,x2,x3,x4,c1,c2,y);

//assign different values for simulation
x1=1'b0;
x2=1'b1;
x3=1'b0;
x4=1'b1;
c1=1'b0;
c2=1'b0;
#10

x1=1'b0;
x2=1'b1;
x3=1'b0;
x4=1'b1;
c1=1'b0;
c2=1'b1;
#10

x1=1'b0;
x2=1'b1;
x3=1'b0;
x4=1'b1;
c1=1'b1;
c2=1'b0;
#10

x1=1'b0;
x2=1'b1;
x3=1'b0;
x4=1'b1;
c1=1'b1;
c2=1'b1;
#10

//end simulation
$finish;
end

//end testbench
endmodule
