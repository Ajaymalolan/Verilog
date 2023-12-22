`include "DFF.v"
module Tff(t,clk,q);
  output q;
  input t,clk;
  wire d;
  assign d=t^q;
  DFF X (q,d,clk);
endmodule
