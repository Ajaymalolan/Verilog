module adder_ten_tb;
  reg [9:0]a,b;
  wire [10:0]c;
  adder_ten x (.a(a),.b(b),.c(c));
  initial
    begin
      $dumpfile("adder_ten.vcd");
      $dumpvars(1);
      a=10'b0000000001;
      b=10'b0000000001;
      #10
      a=10'b1111111111;
      b=10'b0000000001;
      #10
      a=10'b1111111111;
      b=10'b1111111111;
      #10
      $finish;
    end
endmodule
