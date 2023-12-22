module ram_single_port2(clk,address,data,q);
  input [5:0]address;
  input [7:0]data;
  output reg [7:0]q;
  reg [7:0]ram[63:0];
  reg [5:0] temp;
  always @(posedge clk)
    begin
      if(we)
        ram[address] <= data;
      temp <= address;
    end
  assign q = ram[temp];
endmodule
