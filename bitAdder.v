/* input: one bit of data, plus a carry
 * outputs sum, plus a carry
 */

module bitAdder (a, b, carryIn, carryOut, sum);

input a, b, carryIn;
output sum, carryOut;

assign sum = carryIn ^ (a ^ b);
assign carryOut = (carryIn & a) | (carryIn & b) | (a & b);
  
endmodule