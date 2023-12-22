  `timescale 1ns/1ps
module sRAM_tb;
  reg [7:0] add, din;
  reg en,clk,wt,rd,clk;
  wire [7:0] dout;
  sRAM ram (.din(din),.dout(dout),.add(add),.clk(clk),.rd(rd),.wt(wt),.en(en));
  initial
    begin
      din = 8'h0;
      add = 8'h0;
      en = 1'b0;
      wt = 1'b0;
      rd = 1'b0;
      clk = 1'b0;
      #20;
      din = 8'h0;
      add = 8'h0;
      en = 1'b1;
      wt = 1'b1;
      rd = 1'b0;
      #20;
      din = 8'h1;
      add = 8'h01;
      #20;
      din = 8'h2;
      add = 8'h2;
      #20;
      din = 8'h7;
      add = 8'h14;
      #20;
      wt = 1'b0;
      rd = 1'b1;
      add = 8'h0;
      #20;
      add = 8'h01;
      #20;
      add = 8'h2;
      #20;
      add = 8'h14;
    end
  always  #10 clk = ~clk;
endmodule
