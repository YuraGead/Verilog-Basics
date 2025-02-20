
module nios_segments (
	clk_clk,
	reset_reset_n,
	segm_export,
	switch_export);	

	input		clk_clk;
	input		reset_reset_n;
	output	[31:0]	segm_export;
	input	[31:0]	switch_export;
endmodule
