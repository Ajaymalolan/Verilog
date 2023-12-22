module ram_dual_port(we,data,q,wclk,rclk,radd,wadd);
  input [7:0]data;
  input [5:0]radd,wadd;
  input we,wclk,rclk;
  output reg q;
  reg [7:0]ram[63:0];
  always @(posedge rclk)
    begin
      q <= ram[radd];
    end
  always @(posedge wclk)
    begin
      if(we)
        ram[wadd] <= data;
    end
endmodule
