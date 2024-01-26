module arithmetic_adder #(parameter WIDTH=8)(
  input wire [WIDTH-1:0] a,
  input wire [WIDTH-1:0] b,
  output reg [WIDTH:0] sum,
  output reg carry
);

  reg [WIDTH:0] temp_sum;
  reg temp_carry;

  always @* begin
    temp_sum = a + b;
    temp_carry = 0;
    
    for (int i = 0; i < WIDTH; i=i+1) 
    begin
      if (temp_sum[i] == 2'b10) 
      begin
        temp_sum[i] = 0;
        temp_carry = 1;
      end

      else if (temp_sum[i] == 2'b11) 
      begin
        temp_sum[i] = 1;
        temp_carry = 1;
      end
    end
  end

  assign sum = temp_sum;
  assign carry = temp_carry;

endmodule
