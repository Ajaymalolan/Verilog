//data flow modelling
//8 bit subtractor

//include full subtractor file
`include "fsUhs.v"

//there is no need to include half subtractor since it's already been included in full subtractor file

//start module
module ebsUfs(a,b,c,d);

//declare i/o ports
input [7:0]a;
input [7:0]b;
output c;
output [7:0]d;

//declare intermediate wires
wire [7:0]ci;

//instantiate half subtractor
halfSubtractor s1 (.a(a[0]),.b(b[0]),.c(ci[0]),.d(d[0]));

//instantiate full subtractor
fsUhs s2 (.a(a[1]),.b(b[1]),.cin(ci[0]),.d(d[1]),.cout(ci[1]));
fsUhs s3 (.a(a[2]),.b(b[2]),.cin(ci[1]),.d(d[2]),.cout(ci[2]));
fsUhs s4 (.a(a[3]),.b(b[3]),.cin(ci[2]),.d(d[3]),.cout(ci[3]));
fsUhs s5 (.a(a[4]),.b(b[4]),.cin(ci[3]),.d(d[4]),.cout(ci[4]));
fsUhs s6 (.a(a[5]),.b(b[5]),.cin(ci[4]),.d(d[5]),.cout(ci[5]));
fsUhs s7 (.a(a[6]),.b(b[6]),.cin(ci[5]),.d(d[6]),.cout(ci[6]));
fsUhs s8 (.a(a[7]),.b(b[7]),.cin(ci[6]),.d(d[7]),.cout(c));

//end module
endmodule
