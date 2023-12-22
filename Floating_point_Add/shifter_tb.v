module shifter_tb;
  reg [9:0]a;
  reg [4:0]b;
  wire [9:0]c;
  shifter x(.a(a),.b(b),.c(c));
  initial
    begin
      $monitor(a,b,c);
      $dumpfile("shifter.vcd");
      $dumpvars(1);
      a=10'b0000010011;
      b=5'b00001;
      #10;
      a=10'b1111100011;
      b=5'b00100;
      #10;
      a=10'b1111111111;
      b=5'b00011;
      #10;
      $finish;
    end
endmodule
