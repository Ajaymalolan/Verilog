module Dlatch(q,d,clk);
  input d,clk;
  output q;
  assign q=clk?d:q;
endmodule
