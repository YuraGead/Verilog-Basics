module add
(
  input  [3:0] a, b,
  output [3:0] sum
);

  assign sum = a + b;

endmodule

//----------------------------------------------------------------------------

module signed_add_with_overflow
(
  input  [3:0] a, b,
  output [3:0] sum,
  output       overflow
);

  // TODO

  // Write code for the overflow logic,
  // i.e. the detection of the case
  // when the sum (either positive or negative)
  // does not fit into 4 bits

  reg over;
  always @*
    begin
    if (a[3] ^ b[3])
      over = 1'b0;
    else
      begin 
      if (a[3] == 1'b1)
	over = (sum[3] == 1'b0) ? 1'b1 : 1'b0;
      else
        over = (sum[3] == 1'b1) ? 1'b1 : 1'b0;
      end
    end

  assign overflow = over;

  add inst0
  (
    .a(a),
    .b(b),
    .sum(sum)
  );

endmodule
