module async_counter_2bit (
  input wire clk,
  input wire rst,
  output reg [1:0] count
);

  always @(posedge clk or posedge rst) begin
    if (rst)
      count <= 2'b00;
    else
      count <= count + 1;
  end

endmodule
