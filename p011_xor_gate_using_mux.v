module mux
(
  input  d0, d1,
  input  sel,
  output y
);

  assign y = sel ? d1 : d0;

endmodule

//----------------------------------------------------------------------------

module xor_gate_using_mux
(
    input  a,
    input  b,
    output o
);

  // TODO

  // Implement xor gate using instance(s) of mux,
  // constants 0 and 1, and wire connections
  wire or_;
  wire and_;
  wire nAnd_;

  mux inst0
  (
    .d0(b),
    .d1(a),
    .sel(a),
    .y(or_)
  );

  mux inst1
  (
    .d0(a),
    .d1(b),
    .sel(a),
    .y(and_)
  );

  mux inst2
  (
    .d0(1'b1),
    .d1(1'b0),
    .sel(and_),
    .y(nAnd_)
  ); 

  mux inst3
  (
    .d0(or_),
    .d1(nAnd_),
    .sel(a),
    .y(o)
  );




endmodule
