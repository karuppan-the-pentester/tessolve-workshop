module tb;

  reg [3:0] a, b;
  wire [3:0] sum;

  add_4bit dut (a,b,sum);

  initial begin

    $monitor("a=%b, b=%b, sum=%b", a, b, sum);

    #5 a = 4'b0101; b = 4'b0011;
    #5 a = 4'b1100; b = 4'b1010;
    #5 a = 4'b1111; b = 4'b0001;

    #10 $finish;
  end

endmodule
