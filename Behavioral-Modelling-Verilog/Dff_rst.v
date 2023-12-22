module dff(q,d,clk);
  output reg q;
  input d,clk;
  always (posedge clk, posedge rst)
    if(rst) 
      d<=1'b0;
    else if(clk) 
      d<=q;
endmodule
