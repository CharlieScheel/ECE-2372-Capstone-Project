module shift(in, add, out);

input [7:0] in;
input add;
output [7:0] out;

assign out[6:0] = in >> 1;
assign out[7] = add;

endmodule