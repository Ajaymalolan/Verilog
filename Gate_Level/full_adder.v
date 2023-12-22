module full_adder(a,b,cin,s,c);
  input a,b,cin;
  output c, s;
  wire [3:0]N;
  xor x1(N[1],a,b);
  xor x2(s,N[1],cin);
  and x3(N[2],a,b);
  and x4(N[3],b,cin);
  and x5(N[4],a,cin);
  or x6(c,N[2],N[3],N[4]);
endmodule
