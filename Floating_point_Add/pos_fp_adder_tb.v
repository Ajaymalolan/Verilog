module pos_fp_adder_tb;
  reg [15:0]a,b;
  wire [15:0]c;
  pos_fp_adder x (.a(a),.b(b),.c(c));
  initial
    begin
      $dumpfile("pos_fp_adder.vcd");
      $dumpvars(1);
      a=16'bF;
      b=16'bFF;
      #10
      a=16'bFFFF;
      b=16'b0;
      #10
      a=16'b1FFF;
      b=16'b01;
      #10
      $finish;
    end
endmodule
