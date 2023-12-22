`include "halfadder.v"
`include "fulladder.v"
module Baugh-Wooley-signed-multiplier(a,b,p);
  input [3:0]a;
  output [7:0]p;
  wire [23:1] w;
  supply1 one;
  halfadder h1(a[1]&b[0],a[0]&b[1],p[1],w[1]);
  halfadder h2(a[2]&b[0],a[1]&b[1],w[2],w[3]);
  halfadder h3(a[3]&b[0],a[2]&b[1],w[4],w[5]);
  fulladder f1(w[2],w[1],a[0]&b[2],p[2],w[6]);
  fulladder f2(w[4],w[3],a[1]&b[2],w[7],w[8]);
  fulladder f3(w[5],a[2]&b[2],~(a[3]&b[1]),w[9],w[10]);
  fulladder f4(w[6],w[7],~(a[0]&b[3]),p[3],w[11]);
  fulladder f5(w[8],w[9],~(a[1]&b[3]),w[12],w[13]);
  fulladder f6(w[10],~(a[2]&b[3]),~(a[3]&b[2]),w[14],w[15]);
  fulladder f7(one,w[11],w[12],p[4],w[16]);
  halfadder h4(w[13],w[14],w[17],w[18]);
  halfadder h5(a[3]&b[3],w[15],w[19],w[20]);
  halfadder h6(w[16],w[17],p[5],w[21]);
  halfadder h7(w[18],w[19],w[22],w[23]);
  halfadder h8(w[21],w[22],p[7],p[6]);
endmodule
