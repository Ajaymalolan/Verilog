//test bench for full subtractor
module fsUhs_tb;

//declare i/o ports
reg a,b,cin;
wire d,cout;

//instantiate source code module
fsUhs s(.a(a),.b(b),.cin(cin),.d(d),.cout(cout));

//initiate simulation
initial
begin

//monitor variables
$monitor(a,b,cin,d,cout);

//dump variables and create wave form file
$dumpfile("b_fsuhs.vcd");
$dumpvars(0,fsUhs_tb);

//give values for simulation
a=1'b0;
b=1'b0;
cin=1'b1;
#10
a=1'b0;
b=1'b1;
cin=1'b1;
#10
a=1'b1;
b=1'b0;
cin=1'b1;
#10
a=1'b1;
b=1'b1;
cin=1'b0;
#10

//end simulation
$finish;
end
endmodule
