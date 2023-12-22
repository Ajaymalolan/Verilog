module up_down_counter(count, clk, rst, control);
  input rst, clk, control;
  output [7:0]count;
  reg [7:0]temp;
  always@(posedge clk)
    begin
      if (rst)
        temp <= 8'b0;
      else if(control)
        temp <= temp + 1;
      else
        temp <= temp - 1;
    end
  assign count = temp;
endmodule
