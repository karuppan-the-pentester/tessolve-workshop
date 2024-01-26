module tb_async_counter_2bit;

  reg clk;
  reg rst;
  wire [1:0] count;

  async_counter_2bit dut (clk,rst,count);

  initial begin
    clk = 0;
    rst = 1;
    #10 rst = 0; 

    #5 $monitor("%d Count = %b", $time, count);
    
    #50 $finish;
  end

  always #5 clk =~clk;

endmodule
