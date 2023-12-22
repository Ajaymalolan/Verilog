module load_counter(count,clk,rst,data,load);
  input [7:0] data;
  input clk,rst,load;
  output [7:0]count;
  reg [7:0] temp;
  always @(posedge clk)
    begin
      if (rst)
        temp <= 8'b0;
      else if (load)
        temp <= data;
      else
        temp <= temp + 1;
    end
  assign count = temp;
endmodule
