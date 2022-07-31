module bitAdder (a, b, carryIn, carryOut, sum, clk);

// pg. 653 on the txtbook, pg. 50 in verilog book

input a, b, carryIn, clk;
output reg sum, carryOut;

always @(posedge clk) begin
    sum = carryIn ^ (a ^ b);
    carryOut = (carryIn & a) | (carryIn & b) | (a & b);
end
  
endmodule