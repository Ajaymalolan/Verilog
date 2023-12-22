//data flow modelling
//half subtractor
module halfSubtractor(a,b,c,d);

//declare i/o ports
input a,b;
output c,d;

//assign difference and borrow
assign d = a ^ b;
assign c = (~a) & b;

//end module
endmodule
