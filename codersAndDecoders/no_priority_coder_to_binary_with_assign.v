module no_priority_coder_to_binary_with_assign
(
input [15:0] in,
output [27:0] out,
input enable
);
wire a = (in[1] | in[3] | in[5] | in[7] | in[9] | 
in[11] | in[13] | in[15]) & enable;
wire b =(in[2] | in[3] | in[6] | in[7] | in[10] | 
in[11] | in[14] | in[15]) & enable;
wire c = (in[4] | in[5] | in[6] | in[7] | in[12] | 
in[13] | in[14] | in[15]) & enable;
wire d = (in[8] | in[9] | in[10] | in[11] | in[12] 
| in[13] | in[14] | in[15]) & enable;
assign out[0] = a;
assign out[1] = ~ 1'b1;
assign out[2] = ~ 1'b1;
assign out[3] = a;
assign out[4] = a;
assign out[5] = a;
assign out[6] = ~ 1'b0;
assign out[7] = b;
assign out[8] = ~ 1'b1;
assign out[9] = ~ 1'b1;
assign out[10] = b;
assign out[11] = b;
assign out[12] = b;
assign out[13] = ~ 1'b0;
assign out[14] = c;
assign out[15] = ~ 1'b1;
assign out[16] = ~ 1'b1;
assign out[17] = c;
assign out[18] = c;
assign out[19] = c;
assign out[20] = ~ 1'b0;
assign out[21] = d;
assign out[22] = ~ 1'b1;
assign out[23] = ~ 1'b1;
assign out[24] = d;
assign out[25] = d;
assign out[26] = d;
assign out[27] = ~ 1'b0;
endmodule 