//data flow modeling.
//8 bit encoder.

//start module.
module encoder(a,s);

//declare i/o ports.
input [7:0]a;
output [2:0]s;
    
//assigning encoder.
assign s[0]= a[1] | a[3] | a[5] | a[7];
assign s[1]= a[2] | a[3] | a[6] | a[7];
assign s[2]= a[4] | a[6] | a[5] | a[7];

//ending module
endmodule
