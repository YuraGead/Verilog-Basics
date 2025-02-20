
module uniter(
	input 		[7:0] in0,in1,in2,in3,
	output 		[31:0] out
);
wire [31:0] outTemp;

assign outTemp[7:0] = 	in0;
assign outTemp[15:8] = 	in1;
assign outTemp[23:16] = 	in2;
assign outTemp[31:24] = 	in3;

assign out = outTemp;
endmodule 