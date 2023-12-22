module right_shiftReg(in,out,clk,rst);
  input clk,rst;
  input [7:0]in;
  output out;
  reg [7:0]temp;
  always @(posedge clk)
    begin
      if(rst)
        temp <= 8'b0;
      else
        temp <= {temp[6:0],in};
    end
  assign out = temp[7];
endmodule
