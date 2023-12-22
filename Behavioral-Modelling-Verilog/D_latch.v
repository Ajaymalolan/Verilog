module D_latch(d,q,clk);
  input d,clk;
  output reg q;
  always @(clk,q)
    if(clk) q<=d;
endmodule
