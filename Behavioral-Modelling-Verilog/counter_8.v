module counter_8(c,rst,clk);
  input rst,clk;
  output [7:0]c;
  reg [7:0]temp;
  always @ (posedge clk)
    begin
      if(rst)
        temp <= 8'b0;
      else
        temp <= temp + 1;
    end
  assign c = temp;
endmodule
