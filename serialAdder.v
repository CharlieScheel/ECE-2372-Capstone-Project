`include "bitAdder.v"
`include "shift.v"

/* input: two 8-bit binary numbers and a carry
 * output: a and b are shifted to the right 1
           the bitsum of their lost values is stored in the opened value of a 
           b's lost value looped around
           whether there is a carry or not
 */
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