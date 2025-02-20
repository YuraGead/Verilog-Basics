//цифровое устройство камень ножницы бумага

module lab
(
input [1:0]pl1, //левая часть
input [1:0]pl2, //правая
output reg [7:0] LEDG
);

//ничья - всё горит
//pl1 победил - левая горит
//pl2 победил - правая горит

// 00 = ничего 
// 01 = камень
// 10 = ножницы
// 11 = бумага

wire [3:0] in = {pl1, pl2};

always @ (*)
begin
	case(in)
	4'b0000 : LEDG = 8'b11111111;
	4'b0001 : LEDG = 8'b00001111;
	4'b0011 : LEDG = 8'b00001111;
	4'b0010 : LEDG = 8'b00001111;
	4'b0110 : LEDG = 8'b11110000;
	4'b0111 : LEDG = 8'b00001111;
	4'b0101 : LEDG = 8'b11111111;
	4'b0100 : LEDG = 8'b11110000;
	4'b1100 : LEDG = 8'b00001111;
	4'b1101 : LEDG = 8'b11110010;
	4'b1111 : LEDG = 8'b11111111;
	4'b1110 : LEDG = 8'b00001111;
	4'b1010 : LEDG = 8'b11111111;
	4'b1011 : LEDG = 8'b11110000;
	4'b1001 : LEDG = 8'b00001111;
	4'b1000 : LEDG = 8'b11110000;
	endcase 
end						 
						 
endmodule 