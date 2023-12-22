//gate level model
//exnor gate

//start module
module exnorGate(a,b,c);

//declare i/o ports
input a,b;
output c;

//instantiate primitive
xnor (c,a,b);

//end module
endmodule
