module full_adder (
  input wire a,
  input wire b,
  input wire cin,
  output reg sum,
  output reg cout
);

  assign ha1_sum = a ^ b;
  assign ha1_carry = a & b;

  assign ha2_sum = ha1_sum ^ cin;
  assign ha2_carry = ha1_sum & cin;

  assign cout = ha1_carry | ha2_carry;

  assign sum = ha2_sum;

endmodule