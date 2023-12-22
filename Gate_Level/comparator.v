//gate level model
//comparator

//start module
module comparator(a,b,c);

//declare i/o ports
input a,b;
output [2:0]c;

//intermediate wires
wire a1,b1;

//inverted inputs
not n1(a1,a);
not n2(b1,b);

//implement gates
xnor x(c[0],a,b);
and l(c[1],a,b1);
and m(c[2],a1,b);

//end module
endmodule
