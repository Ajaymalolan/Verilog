// Code your testbench here
// or browse Examples
`timescale 1ns/1ps  // Adjust the timescale as needed

module subtractor_tb;

  // Inputs
  reg [15:0] a, b;
  reg clk, rst;

  // Output
  wire [15:0] sub;

  // Instantiate the subtractor module
  subtractor uut (
    .a(a),
    .b(b),
    .clk(clk),
    .rst(rst),
    .sub(sub)
  );

  // Clock generation
  always begin
    #1 clk = ~clk;  // Toggle the clock every 5 time units
  end

  // Initial block for test case setup
  initial begin
    $dumpfile("sub.vcd");
    $dumpvars(0);
    // Initialize inputs
    a = 8'h0A;
    b = 8'h05;
    clk = 0;
    rst = 1;  // Assert reset initially

    // Apply reset for a few clock cycles
    #10 rst = 0;

    // Test case 1: a > b
    #10 a = 8'h0F;  // Change a to a value greater than b
    #10;

    // Test case 2: a < b
    #10 b = 8'h0C;  // Change b to a value greater than a
    #10;

    // Test case 3: a = b
    #10 a = 8'h08;  // Change a to a value equal to b
    #10;

    // Test case 4: Random values
    #10 a = 8'h0D;
    #10 b = 8'h02;
    #10;

    // Add more test cases as needed

    $stop;  // Stop simulation
  end

endmodule
