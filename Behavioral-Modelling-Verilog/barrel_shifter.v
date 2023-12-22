module barrel_shifter(a,b,c,d);
  input [7:0]a;
  input [2:0]b;
  input c;
  output reg [7:0]d;
  always @(*)
    begin
      if(c)
        d=a<<b;
      else
        d=a>>b;
    end
endmodule
