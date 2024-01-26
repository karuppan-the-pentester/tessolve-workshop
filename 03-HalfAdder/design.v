module half_adder (
  input wire a,
  input wire b,
  output reg sum,
  output reg carry
);

  always @(a or b) begin
    sum = a ^ b;
    carry = a & b;
  end

endmodule
