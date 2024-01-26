module full_adder (
  input wire a,
  input wire b,
  input wire cin,
  output reg sum,
  output reg cout
);

  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (b & cin) | (cin & a);

endmodule
