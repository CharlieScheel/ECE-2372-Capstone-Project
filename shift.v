module shift(in, add, out, clk);

input [7:0] in;
input add, clk;
output reg [7:0] out;

always @(posedge clk) begin
    out = in >> 1;
    out[7] = add;
end

endmodule