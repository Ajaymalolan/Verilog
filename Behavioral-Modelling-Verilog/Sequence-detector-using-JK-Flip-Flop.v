`include "JKFF.v"
module sequencedetector(y,x, clk);
  input x;
  output y;
  wire x1, q0, q1, q11, q0x, q1x;
  assign x1= !x;
  assign q11= !q1;
  assign q0x = q0 & x;
  assign q1x = q11 & x;
  JKFF j(q0,x,q1x,clk);
  JKFF j(q1,q0x,x1,clk);
endmodule
