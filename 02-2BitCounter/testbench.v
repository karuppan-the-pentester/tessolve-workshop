module tb;

  reg clk;
  reg rst;
  wire [1:0] count;

  Two_bit_upcounter dut (clk, rst, count);

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    rst = 1;
    #5 rst = 0;
    $monitor("%d count = %b",$time, count);
  end

  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
    #50 $finish;
  end

endmodule
