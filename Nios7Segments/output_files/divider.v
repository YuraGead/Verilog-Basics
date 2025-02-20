// десятичка в двоичку


module divider(
	input 		[31:0] in,
	output 		[3:0] out0, out1, out2, out3
);
wire [3:0] f0 = in[3:0];
wire [3:0] f1 = in[7:4];
wire [3:0] f2 = in[11:8];
wire [3:0] f3 = in[15:12];


assign out0 = f0;
assign out1 = f1;
assign out2 = f2;
assign out3 = f3;

endmodule 