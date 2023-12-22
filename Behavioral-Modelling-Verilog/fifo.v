module fifo(clk,buf_in,buf_out,rd_en,wt_en,buf_empty,buf_full,count);
  input clk, rd_en, wt_en;
  input [7:0]buf_in;
  output reg [7:0]buf_out,count;
  output reg buf_empty, buf_full;
  reg [3:0]bottom,top;
  always@(counter)
    begin
      buf_empty = (counter == 0);
      buf_full = (counter == 64);
    end
  always@(posedge clk)
    begin
      if(!buf_full && wt_en) && (!buf_empty && rd_en)
        counter <= counter;
      else if(!buf_full && wt_en)
        counter <= counter + 1;
      else if(!buf_empty && rd_en)
        counter <= counter - 1;
      else
        counter <= counter;
    end
  always@(posedge clk)
    begin
      if(!buf_empty && rd_en)
        buf_out <= buf_mem[bottom];
      else
        buf_out <= buf_out;
    end
  always@(posedge clk)
    begin
      if(!buf_full && wt_en)
        buf_mem[top] <= buf_in;
      else
        buf_mem[top] <= buf_mem[top];
    end
  always@(posedge clk)
    begin
      if(buf_full && wt_en)
        top <= top + 1;
      else
        top <= top;
      if(buf_empty && rd_en)
        bottom <= bottom + 1;
      else
        bottom <= bottom; 
    end
endmodule
