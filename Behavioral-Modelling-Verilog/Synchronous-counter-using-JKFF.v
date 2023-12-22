`include "JKFF.v"
module 3bitSRC(clk,q);
  input clk;
  output [2:0]q;
  wire k;
  assign k = q[0] & q[1];
  JKFF j1 (q[0],1'b1,1'b1,clk);
  JKFF j2 (q[1],q[0],q[0],clk);
  JKFF j3 (k,q[1],q[1],clk);
endmodule
