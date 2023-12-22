module ram_true_dual_port(d1,d2,q1,q2,clk,we1,we2,add1,add2);
  input [7:0]d1,d2;
  input [5:0]add1,add2;
  input we1,we2,clk;
  output reg [7:0]q1,q2;
  reg [7:0]ram[63:0];
  always @(posedge clk)
    begin
      if(we1)
        begin
          ram[add1]<=d1;
          q1<=d1;
        end
      else
        q1<=ram[add1]
    end
  always @(posedge clk)
    begin
      if(we2)
        begin
          ram[add2]<=d2;
          q2<=d2;
        end
      else
        q2<=ram[add2]
    end
endmodule
