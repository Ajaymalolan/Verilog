`include "Dff.v"
`include "mux4:1.v"
module univ_shift_reg(q,i,d,s,clr,lsb,msb,clk);
input [3:0]d,i;
input [1:0]s;
input clk,lsb,msb;
output [3:0]q;
always @(posedge clk, negedge clr)
begin
  if clear==0
    q<=4'b0000;
  else
    case (s)
      2'b00 : q <= q;
      2'b01 : q <= {msb,[3:1]q};
      2'b10 : q <= {[2:0]q,lsb};
      2'b11 : q <= i;
    endcase
end
endmodule
