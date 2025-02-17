module t_latch
(
	input wire clk,
	output reg q
);
	initial q = 0;
	always @(posedge clk)
		begin
			q = ~q;
		end
endmodule 