//gate level modelling
//nand gate

//start module
module nandGate(a,b,c);

//i/o ports
input a,b;
output c;

//intantiate primitive
nand o (c,a,b);

//end module
endmodule
