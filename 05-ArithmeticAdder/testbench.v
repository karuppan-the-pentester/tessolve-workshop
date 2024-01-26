module tb;

  reg [3:0] a, b;
  wire [4:0] sum;
  wire carry;

  arithmetic_adder #(4) dut (a,b,sum,carry);

  initial begin
    
    $monitor("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);
    #5 a = 4'b0101; b = 4'b0011;
    #5 a = 4'b1100; b = 4'b1010;
    #5 a = 4'b1111; b = 4'b0001;

    #10 $finish;
  end

endmodule
