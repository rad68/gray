module gray2bin
#(
  parameter DATA_WIDTH = 16
)(
  input         [DATA_WIDTH-1:0] gray,
  output logic  [DATA_WIDTH-1:0] bin
);

genvar i;
generate
for (i=0;i<DATA_WIDTH;i=i+1) begin
  assign bin[i] = ^gray[DATA_WIDTH-1:i];
end
endgenerate

endmodule
