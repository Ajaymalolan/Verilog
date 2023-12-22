module iir_filter_tb;
  reg [3:0]a,x;
  wire [3:0]y;
  iir_filter i(.clk(clk),.rst(rst),.a(a),.x(x),.y(y));
  $display(clk,a,x,y);
  $dumpvars();
  initial
    begin
      clk = 0;
    end
  always
    #5 clk = !clk;
  initial
    begin
      rst = 1;
      a=4'd2;
      x=4'd2;
      #10
      rst = 0;
      a=4'd2;
      x=4'd1;
      #10
      rst = 1;
      a=4'd7;
      x=4'd10;
      $finish;
    end
endmodule
