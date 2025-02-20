//	int num0,num1,num2,num3;
//	num0 = num%10;
//	num1 = num%100/10;
//	num2 = num%1000/100;
//	num3 = num%10000/1000;

//	int sum = num3<<12 | num2<<8 | num1<<4 | num0;

module DecToTwo(
	input 		[31:0] in0,
	output 		[31:0] out
);

wire [31:0]outTemp;
wire [31:0] inTemp = in0;
wire [3:0] n0 = inTemp%10;
wire [3:0] n1 = inTemp%100/10;
wire [3:0] n2 = inTemp%1000/100;
wire [3:0] n3 = inTemp%10000/1000;
	
assign outTemp[3:0] = 	n0;
assign outTemp[7:4] = 	n1;
assign outTemp[11:8] = 	n2;
assign outTemp[15:12] = 	n3;


assign out = outTemp;
endmodule 