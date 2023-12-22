//testbench
module ebsUfs_tb;

//declare i/o ports
reg [7:0]a;
reg [7:0]b;
wire c;
wire [7:0]d;

//instantiate source code
ebsUfs s (.a(a),.b(b),.c(c),.d(d));

//initiate simulation
initial 
begin

//dump variables and create wave form file
$dumpfile("b_ebsUfs.vcd");
$dumpvars(0,ebsUfs_tb);

//monitor signals
$monitor(a,b,c,d);

//assign different values for simulation
a=8'b00000001;
b=8'b00000001;
#10 
a=8'b11111111;
b=8'b00000000;
#10 
a=8'b11111111;
b=8'b00000001;
#10 
a=8'b00000010;
b=8'b11111011;
#10 
a=8'b00011000;
b=8'b00010000;
#10 
a=8'b00100101;
b=8'b00100010;
#10 
a=8'b10010001;
b=8'b10010000;
#10 
a=8'b00000001;
b=8'b00000100;
#10
a=8'b11111111;
b=8'b11111111;
#10

//end simulation
$finish;
end

//end testbench
endmodule
