//gate level model
//exor gate

//start module
module exorGate(a,b,c);

//declare i/o ports
input a,b;
output c;

//instantiate primitive
xor (c,a,b);

//end module
endmodule
