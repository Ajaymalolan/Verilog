module pos_fp_adder(a,b,c);
  input [15:0]a,b;
  output reg [15:0]c;
  wire l,g,e;
  wire [4:0]difi;
  wire [10:0]sumi;
  wire [9:0] temp;
  always @(a,b)
    begin
      comparator x1(.a(a[14:10]),.b(b[14:10]),.g(g),.l(l),.e(e));
      c[15] <= 1'b0;
      if(g)
        begin
          c[14:10] <= a[14:10];
          subtractor x2 (.a(a[14:10]),.b(b[14:10]),.c(difi));
          shifter x3 (.a(b[14:10]),.b(difi),.c(temp));
          adder_ten x4(.a(a),.b(temp),.c(sumi));
          c[9:0] <= sumi[9:0];
        end
      else if(l)
        begin
          c[14:10] <= b[14:10];
          subtractor x2 (.b(a[14:10]),.a(b[14:10]),.c(difi));
          shifter x3 (.a(a[14:10]),.b(difi),.c(temp));
          adder_ten x4(.a(temp),.b(b),.c(sumi));
          c[9:0] <= sumi[9:0];
        end
      else
        begin
          c[14:10] <= a[14:10];
          adder_ten x2(.a(a[9:0]),.b(b[9:0]),.c(sumi));
          c[9:0] <= sumi[9:0];
        end
      c[9:0] <= c[9:0] + sumi[10];
    end
endmodule
