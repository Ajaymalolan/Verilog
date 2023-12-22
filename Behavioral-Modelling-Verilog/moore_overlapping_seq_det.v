module moore_overlapping_seq_det(det, inp,c,rst);
  input clk,rst,inp;
  output reg det;
  reg ps_state,nxt_state;
  parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
  always @(posedge clk)
    begin
      if(reset)
        ps_state <= s0;
      else
        ps_state <= nxt_state;
    end
  always @(inp,ps_state)
    begin
      case (ps_state)
        s0:
          begin
            if(inp)
              nxt_state <= s1;
            else
              nxt_state <= s0;
          end
        s1:
          begin
            if(inp)
              nxt_state <= s1;
            else
              nxt_state <= s2;
          end
        s2:
          begin
            if(inp)
              nxt_state <= s3;
            else
              nxt_state <= s0;
          end
        s3:
          begin
            if(inp)
              nxt_state <= s1;
            else
              nxt_state <= s2;
          end
        default: nxt_state <= s0;
      endcase
    end
  always @(ps_state)
    begin
      case (ps_state)
        s0: det <= 0;
        s1: det <= 0;
        s2: det <= 0;
        s3: det <= 1;
        default: det <=0;
      endcase
    end
endmodule
