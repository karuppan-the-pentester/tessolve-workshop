module tb;
  reg [1:0] sel;
  reg [3:0] a, b, c, d;
  wire [3:0] out;
  mux_4x1_dataflow dut (out, a, b, c, d, sel);
  
  initial begin
    a = 4'd1;
    b = 4'd2;
    c = 4'd3;
    d = 4'd4;
  end

  initial begin
    $monitor("%0t The output is %d and sel is %b", $time, out, sel);
    #5 sel = 2'b00;
    #5 sel = 2'b01;
    #5 sel = 2'b10;
    #5 sel = 2'b11;
  end

  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
    #100 $finish;
  end
endmodule
