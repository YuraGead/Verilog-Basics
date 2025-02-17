module bin_to_dec (
input [3:0] binary_in,
output reg [13:0] decoder_out,
input enable
);
always @ (*)
begin
decoder_out = 0;
if (enable) begin
case (binary_in)
4'b0000 : decoder_out = ~14'b01111110000000;
4'b0001 : decoder_out = ~14'b00001100000000;
4'b0010 : decoder_out = ~14'b10110110000000;
4'b0011 : decoder_out = ~14'b10011110000000;
4'b0100 : decoder_out = ~14'b11001100000000;
4'b0101 : decoder_out = ~14'b11011010000000;
4'b0110 : decoder_out = ~14'b11111010000000;
4'b0111 : decoder_out = ~14'b00001110000000;
4'b1000 : decoder_out = ~14'b11111110000000;
4'b1001 : decoder_out = ~14'b11011110000000;
4'b1010 : decoder_out = ~14'b00001100111111;
4'b1011 : decoder_out = ~14'b00001100000110;
4'b1100 : decoder_out = ~14'b00001101011011;
4'b1101 : decoder_out = ~14'b00001101001111;
4'b1110 : decoder_out = ~14'b00001101100110;
4'b1111 : decoder_out = ~14'b00001101101101;

endcase
end
end
endmodule