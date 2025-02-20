// десятичка в двоичку


module decoder(
	input 		[3:0] decoder_in,
	output reg 	[7:0] decoder_out
);

always @(*)
begin
		case(decoder_in)
		4'b0000 : decoder_out = ~8'b00111111; //0
		4'b0001 : decoder_out = ~8'b00000110; //1
		4'b0010 : decoder_out = ~8'b01011011; //2
		4'b0011 : decoder_out = ~8'b01001111; //3
		4'b0100 : decoder_out = ~8'b01100110; //4
		4'b0101 : decoder_out = ~8'b01101101; //5
		4'b0110 : decoder_out = ~8'b01111101; //6
		4'b0111 : decoder_out = ~8'b00000111; //7
		4'b1000 : decoder_out = ~8'b01111111; //8
		4'b1001 : decoder_out = ~8'b01101111; //9
//		4'b1010 : decoder_out = ~8'b01110111; //A
//		4'b1011 : decoder_out = ~8'b01111100; //B
//		4'b1100 : decoder_out = ~8'b00111001; //C
//		4'b1101 : decoder_out = ~8'b01011110; //D
//		4'b1110 : decoder_out = ~8'b01111011; //E
//		4'b1111 : decoder_out = ~8'b01110001; //F
		endcase
end

endmodule 