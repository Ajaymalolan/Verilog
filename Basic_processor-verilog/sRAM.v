module sRAM(din,dout,add,clk,rd,wt,en);
  input [7:0] add, din;
  input wt,rd,clk,en;
  output reg [7:0]dout;
  reg [7:0] sram [7:0];
  always @ (posedge clk)
    begin
      if (en==1'b1)
        begin
          if(wt==1'b1 && rd==1'b0)
            begin
              sram[add]=din;
            end
          else if (rd==1'b1 && wt == 1'b0)
            begin
              dout=sram[add];
            end
          else;
        end
      else;
    end
endmodule
