//data flow modeling.
//8 bit decoder.

//start module.
module decoder(a,s);

//declare i/o ports.
input [2:0]s;
output [7:0]a;

//assigning encoder.
assign a[0] = (~s[0]) & (~s[1]) & (~s[2]);
assign a[1] = (~s[0]) & (~s[1]) & s[2];
assign a[2] = (~s[0]) & s[1] & (~s[2]);
assign a[3] = (~s[0]) & s[1] & s[2];
assign a[4] = s[0] & (~s[1]) & (~s[2]);
assign a[5] = s[0] & (~s[1]) & s[2];
assign a[6] = s[0] & s[1] & (~s[2]);
assign a[7] = s[0] & s[1] & s[2];

//ending module
endmodule
