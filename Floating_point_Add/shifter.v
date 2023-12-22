module shifter(a,b,c);
  input [9:0]a;
  input [4:0]b;
  output reg [9:0]c;
  always @(a)
    begin
      c <= a>>b;
    end
endmodule
