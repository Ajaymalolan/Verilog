module freq_div_2(clk, rst, cout);
  input clk,rst;
  output reg cout;
  always@(posedge clk)
    begin
      if(rst)
        cout <= 1'b0;
      else
        cout <= ~cout;
    end
endmodule
