/* Computes the compliment of the Subtrahend */

module complement(in, out);

input [7:0] in;
output [7:0] out;

assign out = ~in + 8'd1;    // Flips bits and adds 1

endmodule