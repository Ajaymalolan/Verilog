module Dff_neg_rst(d,q,clk,rst,set);
  input d,clk,rst,set;
  output q;
  always @(posedge clk or posedge rst or posedge set)
    if(rst)
      q <= 1'b0;
  else if(set)
      q<=1'b1;
  else
    q<d;
endmodule
