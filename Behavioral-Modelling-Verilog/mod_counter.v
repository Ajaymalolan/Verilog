module mod_counter(clk,rst,count);
  input rst,clk;
  output [7:0]counter;
  reg [7:0]temp;
  always @(posedge clk)
    begin
      if (rst or temp = 8'b11111111)
        temp <=8'b0;
      else
        temp <= temp + 1;
    end
  assign count = temp;
endmodule
