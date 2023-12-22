`include "Baugh-Wooley-multiplier.v"
module iir_filter(clk,rst,a,x,y);
  input [3:0]a,x;
  input clk,rst;
  output [3:0]y; 
  reg [3:0]y_val;
  wire [7:0]prod;
  Baugh-Wooley-multiplier m(.a(a),.b(y_val),.p(pro));
  always @(posedge clk, rst, x, a)
    begin
      if(rst)
        begin
          y_val <= x;
        end
      else 
        begin
          y_val <= x+ prod[3:0]
        end
    end
  assign y = y_val;
endmodule
