`include "bitAdder.v"
`include "shift.v"

module serialAdder(a, b, sum, carryIn, carryOut, bOut);

    input [7:0] a, b; 
    input carryIn;
    output [7:0] sum, bOut;
    output carryOut;
    wire bitSum;

    bitAdder u0(.a(a[0]), .b(b[0]), .carryIn(carryIn), .carryOut(carryOut), .sum(bitSum));
    shift shiftA(.in(a), .add(bitSum), .out(sum));
    shift shiftB(.in(b), .add(b[0]), .out(bOut));

endmodule