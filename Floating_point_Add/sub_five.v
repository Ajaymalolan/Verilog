module subtractor(a,b,c);
  input [4:0]a,b;
  output reg [4:0]c;
  always @ (a,b)
    begin
      c <= a - b;
    end
endmodule
