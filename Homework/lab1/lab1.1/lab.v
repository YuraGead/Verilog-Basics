module lab
(
input [2:0] x, 		// свич
output [1:0] y, 		// зелёный светодиод
output [2:0] x_red 	// красный светодиод
);

assign x_red = x;

assign y[0] = (~x[0] && ~x[1] && x[2]) 
           || (~x[0] && x[1] && ~x[2]) 
			  || (x[0] && ~x[1] && ~x[2]) 
			  || (x[0] && x[1] && x[2]);   

assign y[1] = ~y[0];


endmodule 