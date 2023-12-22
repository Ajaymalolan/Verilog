//data flow modelling
//4:1 MUX

//start module
module mux_4(x1,x2,x3,x4,c1,c2,y);

//i/o ports
input x1,x2,x3,x4,c1,c2;
output y;

//interconnecting wire
wire i1,i2;

//assign stage one
assign i1 = c1 ? x1 : x2;
assign i2 = c1 ? x3 : x4; 

//assign stage two
assign y = c2 ? i1 : i2;

//end module
endmodule

