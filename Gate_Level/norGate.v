//gate level modelling
//nor gate

//start module
module norGate(a,b,c);

//i/o ports
input a,b;
output c;

//intantiate primitive
nor o (c,a,b);

//end module
endmodule
