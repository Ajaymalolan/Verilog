module freq_div_2(clk,rst,cout);
  input clk,rst;
  output cout;
  reg [1:0]pos_count,neg_count;
  always @(posedge clk)
    begin
      if(reset)
        pos_count <=0;
      else if(pos_count==2)
        pos_count <=0;
      else
        pos_count <= pos_count + 1;
    end
  always @(negedge clk)
    begin
      if(reset)
        neg_count <=0;
      else if(neg_count==2)
        neg_count <=0;
      else
        neg_count <= neg  _count + 1;
    end
  assign cout= pos_count | neg_count;
endmodule
