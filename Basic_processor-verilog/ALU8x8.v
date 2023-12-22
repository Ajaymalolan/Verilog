module ALU8x8(a,b,c,o,r,z);
input [7:0]a,b;
input [2:0]o;
output reg [15:0]r=16'b0;
output reg c=1'b0,z=1'b0;
parameters
[2:0]Add = 3'b000,
Sub = 3'b001,
Mul = 3'b010,
And = 3'b011,
Or = 3'b100,
Nand = 3'b101,
Nor = 3'b110,
Xor = 3'b111;
always @ (o or a or b)
begin
case (o)
Add: begin
r = a + b;
z = (r==16'b0);
c = r[8];
end
Sub: begin
r = a - b;
z = (r==16'b0);
c = r[8];
end
Mul: begin
r = a * b;
z = (r==16'b0);
end
And: begin
r = a & b;
z = (r==16'b0);
end
Or: begin
r = a | b;
z = (r==16'b0);
end
Nand: begin
r = !(a & b);
z = (r==16'b0);
end
Nor: begin
r = !(a | b);
z = (r==16'b0);
end
Xor: begin
r = a ^ b;
z = (r==16'b0);
end
default: begin
r = 16'b0;
z = 1'b0;
c = 1'b0;
end
endcase
end
endmodule
