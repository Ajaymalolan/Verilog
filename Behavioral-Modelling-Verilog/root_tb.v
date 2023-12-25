// Code your testbench here
// or browse Examples
module root_tb;

  reg [15:0] a;
  wire [15:0] b;

  SquareRoot l (
    .a(a),
    .b(b)
  );

  initial begin
    $dumpfile("root.vcd");
    $dumpvars(1);

    // Test case 1
    a = 16'b010000;
    #20;

    // Test case 2
    a = 16'b01001;
    #20;

    // Test case 3
    a = 16'b01;
    #20;

    // Test case 4
    a = 16'b011;
    #20;

    $finish;
  end
endmodule
