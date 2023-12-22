module JKFF(q,j,k,clk);
  input j,k,clk;
  output reg q;
  always@(posedge)
    case({j,k})
      2'b00 : q<=q;
      2'b01 : q<=0;
      2'b10 : q<=1;
      2'b11 : q<=!q;
endmodule
