module D_latch(d,q,rst,clk);
  input d,clk,rst;
  output reg q;
  always @(clk,q)
    if (rst)
      q<=1'b0;
    else if(clk)
      q<=d;
endmodule
