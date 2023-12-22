//data flow modelling
//2:1 MUX

//start module
module mux_2(x1,x2,c,y);

//i/o ports
input x1;
input x2;
input c;
output y;

//assign values
assign y = c ? x1 : x2;

//endmodule
endmodule
