module priority_coder_to_hex_with_if
(
input [15:0] encoder_in,
output reg [6:0] segments,
input enable
);
always @ (*)
begin
segments = 0;
if (enable) begin
if (encoder_in[0] == 1'b1)
segments = ~ 7'b0111111;
else if (encoder_in[1] == 1'b1)
segments = ~7'b0000110;
else if (encoder_in[2] == 1'b1)
segments = ~7'b1011011;
else if (encoder_in[3] == 1'b1)
segments = ~7'b1001111;
else if (encoder_in[4] == 1'b1)
segments = ~7'b1100110;
else if (encoder_in[5] == 1'b1)
segments = ~7'b1101101;
else if (encoder_in[6] == 1'b1)
segments = ~7'b1111101;
else if (encoder_in[7] == 1'b1)
segments = ~7'b0000111;
else if (encoder_in[8] == 1'b1)
segments = ~7'b1111111;
else if (encoder_in[9] == 1'b1)
segments = ~7'b1101111;
else if (encoder_in[10] == 1'b1)
segments = ~7'b1110111;
else if (encoder_in[11] == 1'b1)
segments = ~7'b1111100;
else if (encoder_in[12] == 1'b1)
segments = ~7'b0111001;
else if (encoder_in[13] == 1'b1)
segments = ~7'b1011110;
else if (encoder_in[14] == 1'b1)
segments = ~7'b1111011;
else if (encoder_in[15] == 1'b1)
segments = ~7'b1110001;
else segments = ~7'b0000000;
end
end
endmodule