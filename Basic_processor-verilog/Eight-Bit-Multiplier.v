module EightBitMultiplier(
    input wire [7:0] a,
    input wire [7:0] b,
    output wire [15:0] p
);

wire [7:0] partial_products [0:63];

assign partial_products[0]  = a[0] & b[0];
assign partial_products[1]  = a[1] & b[0];
assign partial_products[2]  = a[2] & b[0];
assign partial_products[3]  = a[3] & b[0];
assign partial_products[4]  = a[4] & b[0];
assign partial_products[5]  = a[5] & b[0];
assign partial_products[6]  = a[6] & b[0];
assign partial_products[7]  = a[7] & b[0];
assign partial_products[8]  = a[0] & b[1];
assign partial_products[9]  = a[1] & b[1];
assign partial_products[10] = a[2] & b[1];
assign partial_products[11] = a[3] & b[1];
assign partial_products[12] = a[4] & b[1];
assign partial_products[13] = a[5] & b[1];
assign partial_products[14] = a[6] & b[1];
assign partial_products[15] = a[7] & b[1];
assign partial_products[16] = a[0] & b[2];
assign partial_products[17] = a[1] & b[2];
assign partial_products[18] = a[2] & b[2];
assign partial_products[19] = a[3] & b[2];
assign partial_products[20] = a[4] & b[2];
assign partial_products[21] = a[5] & b[2];
assign partial_products[22] = a[6] & b[2];
assign partial_products[23] = a[7] & b[2];
assign partial_products[24] = a[0] & b[3];
assign partial_products[25] = a[1] & b[3];
assign partial_products[26] = a[2] & b[3];
assign partial_products[27] = a[3] & b[3];
assign partial_products[28] = a[4] & b[3];
assign partial_products[29] = a[5] & b[3];
assign partial_products[30] = a[6] & b[3];
assign partial_products[31] = a[7] & b[3];
assign partial_products[32] = a[0] & b[4];
assign partial_products[33] = a[1] & b[4];
assign partial_products[34] = a[2] & b[4];
assign partial_products[35] = a[3] & b[4];
assign partial_products[36] = a[4] & b[4];
assign partial_products[37] = a[5] & b[4];
assign partial_products[38] = a[6] & b[4];
assign partial_products[39] = a[7] & b[4];
assign partial_products[40] = a[0] & b[5];
assign partial_products[41] = a[1] & b[5];
assign partial_products[42] = a[2] & b[5];
assign partial_products[43] = a[3] & b[5];
assign partial_products[44] = a[4] & b[5];
assign partial_products[45] = a[5] & b[5];
assign partial_products[46] = a[6] & b[5];
assign partial_products[47] = a[7] & b[5];
assign partial_products[48] = a[0] & b[6];
assign partial_products[49] = a[1] & b[6];
assign partial_products[50] = a[2] & b[6];
assign partial_products[51] = a[3] & b[6];
assign partial_products[52] = a[4] & b[6];
assign partial_products[53] = a[5] & b[6];
assign partial_products[54] = a[6] & b[6];
assign partial_products[55] = a[7] & b[6];
assign partial_products[56] = a[0] & b[7];
assign partial_products[57] = a[1] & b[7];
assign partial_products[58] = a[2] & b[7];
assign partial_products[59] = a[3] & b[7];
assign partial_products[60] = a[4] & b[7];
assign partial_products[61] = a[5] & b[7];
assign partial_products[62] = a[6] & b[7];
assign partial_products[63] = a[7] & b[7];

// Sum up the partial products
assign p = 
    {8'b0, partial_products[0]} + 
    {8'b0, partial_products[1] << 1} +
    {8'b0, partial_products[2] << 2} +
    {8'b0, partial_products[3] << 3} +
    {8'b0, partial_products[4] << 4} +
    {8'b0, partial_products[5] << 5} +
    {8'b0, partial_products[6] << 6} +
    {8'b0, partial_products[7] << 7} +
    {8'b0, partial_products[8] << 8} +
    {8'b0, partial_products[9] << 9} +
    {8'b0, partial_products[10] << 10} +
    {8'b0, partial_products[11] << 11} +
    {8'b0, partial_products[12] << 12} +
    {8'b0, partial_products[13] << 13} +
    {8'b0, partial_products[14] << 14} +
    {8'b0, partial_products[15] << 15} +
    {8'b0, partial_products[16] << 16} +
    {8'b0, partial_products[17] << 17} +
    {8'b0, partial_products[18] << 18} +
    {8'b0, partial_products[19] << 19} +
    {8'b0, partial_products[20] << 20} +
    {8'b0, partial_products[21] << 21} +
    {8'b0, partial_products[22] << 22} +
    {8'b0, partial_products[23] << 23} +
    {8'b0, partial_products[24] << 24} +
    {8'b0, partial_products[25] << 25} +
    {8'b0, partial_products[26] << 26} +
    {8'b0, partial_products[27] << 27} +
    {8'b0, partial_products[28] << 28} +
    {8'b0, partial_products[29] << 29} +
    {8'b0, partial_products[30] << 30} +
    {8'b0, partial_products[31] << 31} +
    {8'b0, partial_products[32] << 32} +
    {8'b0, partial_products[33] << 33} +
    {8'b0, partial_products[34] << 34} +
    {8'b0, partial_products[35] << 35} +
    {8'b0, partial_products[36] << 36} +
    {8'b0, partial_products[37] << 37} +
    {8'b0, partial_products[38] << 38} +
    {8'b0, partial_products[39] << 39} +
    {8'b0, partial_products[40] << 40} +
    {8'b0, partial_products[41] << 41} +
    {8'b0, partial_products[42] << 42} +
    {8'b0, partial_products[43] << 43} +
    {8'b0, partial_products[44] << 44} +
    {8'b0, partial_products[45] << 45} +
    {8'b0, partial_products[46] << 46} +
    {8'b0, partial_products[47] << 47} +
    {8'b0, partial_products[48] << 48} +
    {8'b0, partial_products[49] << 49} +
    {8'b0, partial_products[50] << 50} +
    {8'b0, partial_products[51] << 51} +
    {8'b0, partial_products[52] << 52} +
    {8'b0, partial_products[53] << 53} +
    {8'b0, partial_products[54] << 54} +
    {8'b0, partial_products[55] << 55} +
    {8'b0, partial_products[56] << 56} +
    {8'b0, partial_products[57] << 57} +
    {8'b0, partial_products[58] << 58} +
    {8'b0, partial_products[59] << 59} +
    {8'b0, partial_products[60] << 60} +
    {8'b0, partial_products[61] << 61} +
    {8'b0, partial_products[62] << 62} +
    {8'b0, partial_products[63] << 63};

endmodule
