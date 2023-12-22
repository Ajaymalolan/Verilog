module mealy_non_overlapping_seq_det(det,in,clk,rst);
  input in,clk,rst;
  output reg det;
  reg [1:0]pr_state,nx_state;
  parameter s1 = 2'b00,s2 = 2'b01,s3 = 2'b10; 
  always@(posedge clk)
    begin
      if(rst)
        pr_state <= s1;
      else
        pr_state <= nx_state;
    end
  always@(ip,pr_state)
    begin
      case (pr_state)
        s1:
          begin
            if(ip) nx_state=s2;
            else nx_state = s1;
          end
        s2:
          begin
            if(ip) nx_state=s2;
            else nx_state = s3;
          end

        s3:
          begin
          nx_state = s1;
          end
        default: nx_state = s1;
      endcase
    end
  always@(ip,pr_state)
    begin
      case (pr_state)
        s1: det = 1'b0;
        s2: det = 1'b0;
        s3: 
          begin 
            if(ip)
              det = 1'b1;
            else
              det = 1'b0;
          end
      endcase
    end
endmodule
