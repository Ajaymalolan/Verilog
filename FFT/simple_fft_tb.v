module simple_fft_tb;
  reg [4:0]a,b,c,d;
  wire [5:0]fa,fb,fb1,fc,fd,fd1;
  simple_fft x ( .a(a),.b(b),.c(c),.d(d),.fa(fa),.fb(fb),.fb1(fb1),.fc(fc),.fd(fd),.fd1(fd1) );
  initial
    begin
      $dumpfile("FFt.vcd");
      $dumpvars(1);
      a=5'b00001;
      b=5'b00001;
      c=5'b00001;
      d=5'b00001;
      #10
      a=5'b00010;
      b=5'b00010;
      c=5'b00010;
      d=5'b00010;
      #10
      a=5'b00010;
      b=5'b00001;
      c=5'b00010;
      d=5'b00100;
      #10
      a=5'b11111;
      b=5'b00010;
      c=5'b00100;
      d=5'b10000;
      #10
      $finish;
    end
endmodule
