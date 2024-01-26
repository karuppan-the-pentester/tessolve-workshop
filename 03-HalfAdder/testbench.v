module tb;

  reg a, b;
  wire sum, carry;

  half_adder dut (a,b,sum,carry );

  initial begin
    $monitor("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);
    #5 a = 0; b = 0;
    #5 a = 0; b = 1;
    #5 a = 1; b = 0;
    #5 a = 1; b = 1;

    #10 $finish;
  end

endmodule
