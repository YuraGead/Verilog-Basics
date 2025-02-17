module mux
(
  input  d0, d1,
  input  sel,
  output y
);

  assign y = sel ? d1 : d0;

endmodule

//----------------------------------------------------------------------------

module or_gate_using_mux
(
    input  a,
    input  b,
    output o
);

  // TODO

  // Implement or gate using instance(s) of mux,
  // constants 0 and 1, and wire connections

  wire sel;
  mux inst0
  (
    .d0(b),
    .d1(a),
    .sel(a),
    .y(sel)
  );

  mux inst1
  (
    .d0(1'b0),
    .d1(1'b1),
    .sel(sel),
    .y(o)
  );



endmodule
