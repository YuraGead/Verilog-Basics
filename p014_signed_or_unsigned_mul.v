// Non-parameterized signed multiplication of 4-bit numbers
// that produces 8-bit result

module signed_mul_4
(
  input  signed [3:0] a, b,
  output signed [7:0] res
);

  assign res = a * b;

endmodule

//----------------------------------------------------------------------------

// Parameterized unsigned multiplication of N-bit numbers
// that produces 2N-bit result

module unsigned_mul
# (
  parameter n = 8
)
(
  input  [    n - 1:0] a, b,
  output [2 * n - 1:0] res
);

  assign res = a * b;

endmodule

//----------------------------------------------------------------------------

module signed_or_unsigned_mul
# (
  parameter n = 8
)
(
  input  [    n - 1:0] a, b,
  input                sign,
  output [2 * n - 1:0] res
);

  // TODO

  // Implement a module that generates either signed or unsigned result
  // of the multiplication as requested by sign bit.
  
  reg [2 * n - 1:0] res_sign;
  reg [2 * n - 1:0] res_unsign;

  unsigned_mul inst1 
  (
  .a(a),
  .b(b),
  .res(res_unsign)
  );

  signed_mul_4 inst0 (
  .a(a),
  .b(b),
  .res(res_sign)
  );

  assign res = sign ? res_sign : res_unsign;
endmodule