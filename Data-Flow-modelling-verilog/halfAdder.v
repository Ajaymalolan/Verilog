//data flow modeling.
//half adder.

//start module.
module halfAdder(a,b,c,s);
    //declare i/o ports.
    input a,b;
    output c,s;
    
    //assigning sum and carry values.
    assign s= a ^ b;
    assign c= a & b;

//ending module
endmodule
