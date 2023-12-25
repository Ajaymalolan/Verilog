module SquareRoot (
  input [15:0] a,
  output reg [15:0] b
);
  reg [15:0] app, app1;

  always @* begin
    app = a;
    repeat(10) begin
      app1 = (app + a / app) >> 1;
      app = app1;
    end
    b = app;
  end
endmodule
