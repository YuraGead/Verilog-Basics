module fibonacci (
  input             clk,
  input             rst,
  output reg [15:0] num
);

  reg [15:0] num2;

  always @ (posedge clk)
    if (rst)
      { num, num2 } <= { 16'd1, 16'd1 };
    else
      { num, num2 } <= { num2, num + num2 };

endmodule

//----------------------------------------------------------------------------

module fibonacci_2 (
  input             clk,
  input             rst,
  output reg [15:0] num,
  output reg [15:0] num2
);

  always @(posedge clk)
    if (rst) 
      { num, num2 } <= { 16'd1, 16'd1 };
    else 
      { num, num2 } <= { num + num2, num2 + num2 + num };

endmodule
