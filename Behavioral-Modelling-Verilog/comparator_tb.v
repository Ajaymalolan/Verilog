module comparator_tb;
  reg [15:0] in, thresh;
  reg clk;
  wire greater, lesser, equal;

  comparator mn (
    .in(in),
    .thresh(thresh),
    .greater(greater),
    .clk(clk),
    .lesser(lesser),
    .equal(equal)
  );

  always begin
    #5 clk = ~clk;
  end

  initial begin
    $dumpfile("comparator.vcd");
    $dumpvars(1);
    clk = 1'b1;
    in = 16'b01;
    thresh = 16'b01;
    #10;
    in = 16'b011;
    thresh = 16'b010;
    #10;
    in = 16'b010;
    thresh = 16'b011;
    #10;
    $finish;
  end
endmodule
