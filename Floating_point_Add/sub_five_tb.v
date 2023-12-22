module subtractor_tb;
  reg [4:0]a,b;
  wire [4:0]c;
  subtractor x(.a(a),.b(b),.c(c));
  initial
    begin
      $monitor(a,b,c);
      $dumpfile("subtractor.vcd");
      $dumpvars(1);
      a=5'b10011;
      b=5'b10001;
      #10;
      a=5'b00011;
      b=5'b00011;
      #10;
      a=5'b11111;
      b=5'b00001;
      #10;
      $finish;
    end
endmodule
