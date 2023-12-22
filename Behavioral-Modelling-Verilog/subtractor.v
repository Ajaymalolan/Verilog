// Code your design here
module subtractor(a,b,clk,rst,sub);
  input [0:15]a;
  input [0:15]b;
  input clk,rst;
  output reg [0:15]sub;
  
  always@(posedge clk)
    begin
      if(rst)
        sub<=16'b0;
      else
        sub<=a-b;
    end
endmodule
