//gate level modelling
//Or gate

//start module
module orGate(a,b,c);

//i/o ports
input a,b;
output c;

//intantiate primitive
or o (c,a,b);

//end module
endmodule
