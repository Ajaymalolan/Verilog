module fbc(a,b,e,g,l);
  input [3:0]a,b;
  output reg e,g,l;
  always@(a,b)
    if(a==b)
      e=1,g=0,l=0;
  else if(a>b)
    e=0,g=1,l=0;
  	else
      e=0,g=0,l=1;
endmodule
