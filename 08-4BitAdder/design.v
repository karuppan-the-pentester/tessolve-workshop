module add_4bit (
  input wire [3:0] a,
  input wire [3:0] b,
  output reg [3:0] sum
);

  function [3:0] add_4bit_function;
    input [3:0] a, b;
    add_4bit_function = a + b;
  endfunction

  always @* begin
    sum = add_4bit_function(a, b);
  end

endmodule
