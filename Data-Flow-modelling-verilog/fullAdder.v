//data flow modeling.
//full adder.

//start module.
module fullAdder(a,b,cin,cout,s);

//declare i/o ports.
input a,b,cin;
output cout,s;

//assigning sum and carry values.
assign s= (a^b)^cin;
assign cout=(a&b)|cin;

//ending module
endmodule
