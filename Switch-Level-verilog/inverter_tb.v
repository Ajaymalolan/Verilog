//testbench for cmos inverter

//start test bench
module inverter_tb;

//i/o ports
reg i;
wire o;

//instantiate source file
inverter m(.i(i),.o(o));

//begin simulation
initial 
begin

//monitor variables
$monitor(i,o);

//dump variables and generate wave form
$dumpfile("inverter.vcd");
$dumpvars(0,inverter_tb);

//give simulation values
i=1'b0;
#10
i=1'b1;
#10
i=1'b0;
#10
i=1'b1;
#10

//end simulation
$finish;
end

//end testbench
endmodule
