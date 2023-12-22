module ram_single_port1(data,read,write,we,clk,q);
  input [7:0]data;
  input [5:0]read,write;
  input we,clk;
  output reg [7:0]q;
  reg [7:0]ram[63:0];
  always @(posedge clk)
    begin
      if(we)
        ram[write] <=data;
      e <= ram[read];
    end
endmodule
