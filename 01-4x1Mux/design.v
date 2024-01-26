module mux_4x1_dataflow (
  output reg [3:0] out,
  input reg [3:0] a, b, c, d,
  input reg [1:0] sel
);
  always @* begin
    case(sel)
      2'b00: out = a;
      2'b01: out = b;
      2'b10: out = c;
      2'b11: out = d;
      default: out = 4'bxxxx;
    endcase
  end
endmodule
