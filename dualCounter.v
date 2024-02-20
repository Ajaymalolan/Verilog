// Code your design here
module dualCounter (
  input clk,
  input rst,
  output reg [7:0] out,
  output reg [3:0] count1,
  output reg [3:0] count2
);

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      count1 <= 4'b0;
      count2 <= 4'b0;
    end
    else if (count1 == 4'hF & count2 == 4'hF) begin
      count1 <= 4'b0;
      count2 <= 4'b0;
    end
    else if (count1 == 4'hF) begin
      count1 <= 4'b0;
      count2 <= count2 + 4'b01;
    end
    else begin
      count1 <= count1 + 4'b01;
    end

    out <= {count2, count1};
  end

endmodule



// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps

module tb_dualCounter;

  reg clk;
  reg rst;
  wire [7:0] out;
  wire [3:0] count1,count2;

  dualCounter uut (
    .clk(clk),
    .rst(rst),
    .out(out),
    .count1(count1),
    .count2(count2)
    
  );

  // Clock generation
  always begin
    #1 clk = ~clk;
  end

  // Stimulus
  initial begin
    $dumpfile("file.vcd");
    $dumpvars(1);
    clk = 0;
    rst = 1;
    #10 rst = 0; // Assert reset for 10 time units
    #1000; // Run for additional 100 time units
    $stop; // Stop simulation
  end

endmodule
