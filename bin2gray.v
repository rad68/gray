module bin2gray
#(
  parameter DATA_WIDTH = 4
)(
  input                         clk,
  input                         resetn,
  output logic [DATA_WIDTH-1:0] gray
);

reg [DATA_WIDTH-1:0] cnt;

always @(posedge clk)
if (!resetn)  cnt <= 0;
else          cnt <= cnt + 1;

genvar i;
generate
for (i=0;i<DATA_WIDTH;i=i+1) begin
  if (i==DATA_WIDTH-1)
    assign gray[i] = cnt[i];
  else
  assign gray[i] = cnt[i] ^ cnt[i+1];
end
endgenerate

endmodule
