module dff(q,d,clk);
  output reg q;
  input d,clk;
  always (posedge clk)
    if(clk) 
      d<=q;
endmodule
