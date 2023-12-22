module comparator_tb;
  reg [4:0]a,b;
  wire g,l,e;
  comparator x(.a(a),.b(b),.g(g),.l(l),.e(e));
  initial
    begin
      $monitor(a,b,g,l,e);
      $dumpfile("comparator.vcd");
      $dumpvars(1);
      a=5'b00011;
      b=5'b00001;
      #10;
      a=5'b00011;
      b=5'b00011;
      #10;
      a=5'b00001;
      b=5'b00010;
      #10;
      $finish;
    end
endmodule
