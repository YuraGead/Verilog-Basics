module left_shift_of_8_by_3_using_left_shift_operation (input  [7:0] a, output [7:0] res);

  assign res = a << 3;

endmodule

module left_shift_of_8_by_3_using_concatenation (input  [7:0] a, output [7:0] res);

  assign res = { a [4:0], 3'b0 };

endmodule

module left_shift_of_8_by_3_using_for_inside_always (input  [7:0] a, output logic [7:0] res);

  always @*
    for (int i = 0; i < 8; i ++)
      res [i] = i < 3 ? 1'b0 : a [i - 3];

endmodule

module left_shift_of_8_by_3_using_for_inside_generate (input  [7:0] a, output [7:0] res);

  genvar i;

  generate
    for (i = 0; i < 8; i ++)
      if (i < 3)
        assign res [i] = 1'b0;
      else
        assign res [i] = a [i - 3];
  endgenerate

endmodule

//----------------------------------------------------------------------------

module right_shift_of_N_by_S_using_right_shift_operation
# (parameter N = 8, S = 3)
(input  [N - 1:0] a, output [N - 1:0] res);

  // TODO
  assign res = a >> 3;

endmodule

module right_shift_of_N_by_S_using_concatenation
# (parameter N = 8, S = 3)
(input  [N - 1:0] a, output [N - 1:0] res);

  // TODO
  assign res = { {S {1'b0}}, a [N - 1:S]  };

endmodule

module right_shift_of_N_by_S_using_for_inside_always
# (parameter N = 8, S = 3)
(input  [N - 1:0] a, output logic [N - 1:0] res);

  // TODO
    always @*
    for (int i = 0; i < N; i ++)
      res [i] = i < N-S ? a [i + S] : 1'b0;

endmodule

module right_shift_of_N_by_S_using_for_inside_generate
# (parameter N = 8, S = 3)
(input  [N - 1:0] a, output [N - 1:0] res);

  // TODO
  
  genvar i;

  generate
    for (i = 0; i < N; i ++)
      if (i < N-S)
        assign res [i] = a [i + S];
      else
        assign res [i] = 1'b0;
  endgenerate


endmodule
