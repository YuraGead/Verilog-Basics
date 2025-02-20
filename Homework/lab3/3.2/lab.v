module lab
(
input [7:0] sw,
output reg [6:0] segm0, // для нулей
output reg [6:0] segm1,  // для единиц
output LEDG          // если 0 > 1 
);

reg [3:0] sum1;
reg [3:0] sum0;
always @(*)
begin
	sum1 = sw[0]+sw[1]+sw[2]+sw[3]+sw[4]+sw[5]+sw[6]+sw[7];
   sum0 = 8-sum1;
	
	case (sum0)
	4'b0000 : segm0 = ~7'b0111111;
	4'b0001 : segm0 = ~7'b0110000;
	4'b0010 : segm0 = ~7'b1011011;
	4'b0011 : segm0 = ~7'b1001111;
	4'b0100 : segm0 = ~7'b1100110;
	4'b0101 : segm0 = ~7'b1101101;
	4'b0110 : segm0 = ~7'b1111101;
	4'b0111 : segm0 = ~7'b0000111;
	4'b1000 : segm0 = ~7'b1111111;
	endcase
	
	case (sum1)
	4'b0000 : segm1 = ~7'b0111111;
	4'b0001 : segm1 = ~7'b0110000;
	4'b0010 : segm1 = ~7'b1011011;
	4'b0011 : segm1 = ~7'b1001111;
	4'b0100 : segm1 = ~7'b1100110;
	4'b0101 : segm1 = ~7'b1101101;
	4'b0110 : segm1 = ~7'b1111101;
	4'b0111 : segm1 = ~7'b0000111;
	4'b1000 : segm1 = ~7'b1111111;
	endcase
end

assign LEDG = (sum0 > sum1) ? 1 : 0;
 
endmodule 