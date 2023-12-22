module comparator(a,b,g,l,e);
  input [4:0]a,b;
  output reg g,l,e;
  always @ (a,b)
    begin
      if(a>b)
        begin
          g<=1;
          l<=0;
          e<=0;
        end
      else if (b>a)
        begin
          l<=1;
          g<=0;
          e<=0;
        end
      else
        begin
          e<=1;
          l<=0;
          g<=0;
        end
    end 
endmodule
