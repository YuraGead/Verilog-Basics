module decoder_from_grey_with_case (
input [3:0] binary_in,
output reg [15:0] decoder_out,
input enable
);
always @ (*)
begin
decoder_out = 0;
if (enable) begin
case (binary_in)
4'b0000 : decoder_out = 15'b000000000000000;
4'b0001 : decoder_out = 15'b000000000000001;
4'b0011 : decoder_out = 15'b000000000000010;
4'b0010 : decoder_out = 15'b000000000000100;
4'b0110 : decoder_out = 15'b000000000001000;
4'b0111 : decoder_out = 15'b000000000010000;
4'b0101 : decoder_out = 15'b000000000100000;
4'b0100 : decoder_out = 15'b000000001000000;
4'b1100 : decoder_out = 15'b000000010000000;
4'b1101 : decoder_out = 15'b000000100000000;
4'b1111 : decoder_out = 15'b000001000000000;
4'b1110 : decoder_out = 15'b000010000000000;
4'b1010 : decoder_out = 15'b000100000000000;
4'b1011 : decoder_out = 15'b001000000000000;
4'b1001 : decoder_out = 15'b010000000000000;
4'b1000 : decoder_out = 15'b100000000000000;
endcase
end
end
endmodule