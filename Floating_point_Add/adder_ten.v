module adder_ten(a,b,c);
  input [9:0]a,b;
  output reg [10:0]c;
  always @(a,b)
    begin
      c <= a + b;
    end
endmodule
