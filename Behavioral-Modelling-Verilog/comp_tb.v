// Code your testbench here
// or browse Examples
module testbench;

  // Inputs
  reg [15:0] a, b;
  reg clk, rst;

  // Outputs
  wire great, less, equal;

  comparator uut (
    .a(a),
    .b(b),
    .clk(clk),
    .rst(rst),
    .great(great),
    .less(less),
    .equal(equal)
  );

  always begin
    #5 clk = ~clk;  
  end

  initial begin
    $dumpfile("com.vcd");
    $dumpvars(0);
    a = 8'h0A;
    b = 8'h05;
    clk = 0;
    rst = 1; 

    #10 rst = 0;

    // Test case 1: 
    #10 a = 8'h0F; 
    #10;

    // Test case 2: 
    #10 a = 8'h03; 
    #10;

    // Test case 3:
    #10 a = 8'h05; 
    #10;

    

    $stop;  
  end

endmodule
