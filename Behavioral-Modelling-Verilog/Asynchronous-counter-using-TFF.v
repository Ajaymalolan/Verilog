`include "Tff.v"
module 4bitARC(clk,q);
  input clk;
  output [3:0]q;
  Tff t1 (1'b1,clk,q[0]);
  Tff t2 (1'b1,q[0],q[1]);
  Tff t3 (1'b1,q[1],q[2]);
  Tff t4 (1'b1,q[2],q[3]);
endmodule
