`include "bitAdder.v"
`include "shift.v"

module serialAdder(a, b, sum, carry);

    input [7:0] a, b;
    input carry;
    output [7:0] sum;
    wire bitSum;

    bitAdder u0(.a(a[0]), .b(b[0]), .carryIn(carry), .carryOut(carry), .sum(bitSum));
    shift shiftA(.in(a), .add(bitsum), .out(a));
    shift shiftB(.in(b), .add(b[0]), .out(b));

    assign sum = a;

endmodule