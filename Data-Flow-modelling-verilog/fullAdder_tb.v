//testbech for fullAdder_tb.v to simulate it.
module fullAdder_tb;

//i/o ports for simulation.
reg a_i,b_i,cin_i;
wire cout_o,s_o;
  
//instantiate fullAdder.
fullAdder f (.a(a_i), .b(b_i), .cin(cin_i), .cout(cout_o), .s(s_o));
  
//initiate simulation.
initial
begin
  
//dumping variable and creating output wave form file.
$dumpfile("b_fa.vcd");
$dumpvars(0,fullAdder_tb);

//monitoring i/o waveforms.
$monitor(a_i,b_i,cin_i,s_o,cout_o);
  
//simulating different i/o values.
a_i=1'b0;
b_i=1'b0;
cin_i=1'b0;
#10
a_i=1'b0;
b_i=1'b0;
cin_i=1'b1;
#10
a_i=1'b0;
b_i=1'b1;
cin_i=1'b0;
#10
a_i=1'b0;
b_i=1'b1;
cin_i=1'b1;
#10
a_i=1'b1;
b_i=1'b0;
cin_i=1'b0;
#10
a_i=1'b1;
b_i=1'b0;
cin_i=1'b1;
#10
a_i=1'b1;
b_i=1'b1;
cin_i=1'b0;
#10
a_i=1'b1;
b_i=1'b1;
cin_i=1'b1;
#10
a_i=1'b0;
b_i=1'b0;
cin_i=1'b0;
#10
  
//ending simulation
$finish;
end

//ending module.
endmodule

