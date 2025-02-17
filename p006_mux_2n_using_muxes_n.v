module mux_2_1
(
  input  [3:0] d0, d1,
  input        sel,
  output [3:0] y
);

  assign y = sel ? d1 : d0;

endmodule

//----------------------------------------------------------------------------

module mux_4_1
(
  input  [3:0] d0, d1, d2, d3,
  input  [1:0] sel,
  output [3:0] y
);

  // TODO

  // Implement mux_4_1 using three instances of mux_2_1
  //mux_2_1 mux
  //(
  //.d0(sel[1] ? d2 : d0),
  //.d1(sel[1] ? d3 : d1),
  //.sel(sel[0]),
  //.y(y)
  //);

  wire [3:0] out0;
  wire [3:0] out1;

  mux_2_1 mux0
  (
  .d0(d0),
  .d1(d1),
  .sel(sel[0]),
  .y(out0)
  );

  mux_2_1 mux1
  (
  .d0(d2),
  .d1(d3),
  .sel(sel[0]),
  .y(out1)
  );

  mux_2_1 mux2
  (
  .d0(out0),
  .d1(out1),
  .sel(sel[1]),
  .y(y)
  );
	

endmodule
