module simple_fft(a,b,c,d,fa,fb,fb1,fc,fd,fd1);
  input [4:0]a,b,c,d;
  output reg [5:0]fa,fb,fb1,fc,fd,fd1;
  always @ (a,b,c,d)
    begin
      fa <= a + b + c + d;
      fb <= a - c;
      fb1 <= d - b;
      fc <= a + c - (b + d);
      fd <= a - c;
      fd1 <= b - d;
    end
endmodule
