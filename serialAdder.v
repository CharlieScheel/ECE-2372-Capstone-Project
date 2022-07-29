`include "bitAdder.v"

module serialAdder(a, b, clk, sum, getNewSum);

    input [7:0] a, b;
    input clk, getNewSum;
    output [7:0] sum;
    reg a0, b0;
    reg [7:0] A, B;
    wire carry, bitSum;

    bitAdder uut(.a(a0), .b(b0), .carry(carry), .sum(bitSum));

    always @(posedge clk) begin

        a0 = A[0];
        b0 = B[0];
        A[7] = bitSum;

        A = A >> 1;
        B = B >> 1;

    end

    always @(getNewSum) begin

        A = a;
        B = b;

    end

    assign sum = A;

endmodule