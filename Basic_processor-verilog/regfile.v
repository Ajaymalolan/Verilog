module regfile(ip,op1,op2,si,so1,so2,rd,wt,rst,en,clk);
input [31:0] ip;
input  rst,en,rd,wt,clk
output reg [31:0] op1,op2;
reg [31:0] rfile [0:15]
integer i;
wire aclk;
assign aclk = clk || rst;
always @ (posedge aclk)
begin
if (en == 1)
begin
if(rst == 1)
begin
for (i==0;i < 16; i = i+1)
begin
rfile[i]=32'h0;
end
op1=32'hx;
op2=32'hx;
end
else if(rst==0)
begin
case({rd,wt})
2'b00:
begin
end
2'b01:
begin
rfile[si]=ip;
end
2'b10:
begin
op1=rfile[so1];
op2=rfile[so2];
end
2'b11:
begin
op1=rfile[so1];
op2=rfile[so2];
rfile[si]=ip;
end
endcase
end
else;
end
else;
end
endmodule
