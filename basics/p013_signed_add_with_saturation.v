module add
(
  input  [3:0] a, b,
  output [3:0] sum
);

  assign sum = a + b;

endmodule

//----------------------------------------------------------------------------

module signed_add_with_saturation
(
  input  [3:0] a, b,
  output [3:0] sum
);

  // TODO

  // Implement addition with saturation,
  // i.e. if the result does not fit
  // the maximum or minimum values should be used
  reg [3:0] temp;
  reg [3:0] sum2;
  add inst0
  (
    .a(a),
    .b(b),
    .sum(temp)
  );

  reg over;
  always @*
  begin
    if (a[3] ^ b[3])
    begin
      over = 1'b0;
      sum2 = temp;
    end

    else 
    begin
      if (a[3] == 1'b1)
	sum2 = ((temp[3] == 1'b0) ? 1'b1 : 1'b0) ? 4'b1000 : temp;
      else
        sum2 = ((temp[3] == 1'b1) ? 1'b1 : 1'b0) ? 4'b0111 : temp;
    end
  end

  assign sum = sum2;


endmodule
