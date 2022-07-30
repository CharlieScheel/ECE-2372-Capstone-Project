`include "bitAdder.v"
`include "shift.v"

module serialAdder(a, b, clk, sum);

    input [7:0] a, b;
    input clk;
    output [7:0] sum;
    wire carryOut, bitSum;

    bitAdder u0(.a(a[0]), .b(b[0]), .carryIn(carryOut), .carryOut(carryOut), .sum(bitSum));
    shift shiftA(.in(a), .add(bitsum), .out(a), .clk(clk));
    shift shiftB(.in(b), .add(b[0]), .out(b), .clk(clk));

    assign sum = a;

endmodule