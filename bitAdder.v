module bitAdder (a, b, carry, sum);

// pg. 653 on the txtbook, pg. 50 in verilog book

input a, b;
output sum, carry;

assign sum = a ^ b;
assign carry = a & b;
  
endmodule