module bitAdder (a, b, carryIn, carryOut, sum);

// pg. 653 on the txtbook, pg. 50 in verilog book

input a, b, carryIn;
output sum, carryOut;

assign sum = carryIn ^ (a ^ b);
assign carryOut = (carryIn & a) | (carryIn & b) | (a & b);
  
endmodule