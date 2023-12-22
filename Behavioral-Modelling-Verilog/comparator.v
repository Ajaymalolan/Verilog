// Code your design here
module comparator(a,b,clk,rst,great,less,equal);
  input [0:15]a;
  input [0:15]b;
  input clk,rst;
  output reg great,less,equal;
  always@(posedge clk)
    begin
      if(posedge rst)
        begin
          great<=1'b0;
          less<=1'b0;
          equal<=1'b0;
        end
      else
        begin
          if(a>b)
            begin
              equal<=1'b0;
              less<=1'b0;
              great<=1'b1;
            end
          else if(a<b)
            begin
              equal<=1'b0;
              less<=1'b1;
              great<=1'b0;
            end
          else
            begin
              equal<=1'b1;
              less<=1'b0;
              great<=1'b0;
            end
        end
    end
endmodule
