module lab //голосование
(
input [2:0] sw,
output [2:0] sw_red, //~sw
output [2:0] gr
);


assign gr = {3{(sw[2] && sw[1])
				|| (sw[1] && sw[0])
				|| (sw[0] && sw[2])}};

assign sw_red = ~sw;

endmodule 