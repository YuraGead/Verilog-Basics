module posedge_detector (
  input clk, rst, a, 
  output detected
);

  reg a_r;

  always @ (posedge clk)
    if (rst)
      a_r <= '0;
    else
      a_r <= a;

  assign detected = ~ a_r & a;

endmodule

//----------------------------------------------------------------------------

module one_cycle_pulse_detector (
  input clk, rst, a, 
  output detected
);

  reg a_r, a_r1;

  always @ (posedge clk)
    if (rst) begin
      a_r <= 1'b0;
      a_r1 <= 1'b0;
    end else begin
      a_r1 <= a_r;
      a_r <= a;
    end

  assign detected = (~a_r1 & a_r & ~a);


endmodule 