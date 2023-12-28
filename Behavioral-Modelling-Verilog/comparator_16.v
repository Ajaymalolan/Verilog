module comparator(in,thresh,greater, clk, lesser,equal);
input [0:15]in, thresh;
input clk;
output reg greater, lesser, equal;
always@(posedge clk)
begin
    if (in>thresh) begin
        greater<=1'b1;
        lesser<=1'b0;
        equal<=1'b0;
    end
    else if (in<thresh) begin
        greater<=1'b0;
        lesser<=1'b1;
        equal<=1'b0;
    end
    else begin
        greater<=1'b0;
        lesser<=1'b0;
        equal<=1'b1;
    end
end

endmodule
