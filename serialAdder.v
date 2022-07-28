`include "bitAdder.v"

module serialAdder(a, b, clk, sum);

    input [7:0] a;
    input [7:0] b;
    input clk;
    output [7:0] sum;
    reg A, B, carry, sum;

    bitAdder uut(a, b, carry, sum);

    always @(posedge clk) begin
        A = a[0];
        B = b[0];
        a = a <<< 1;
        b = b <<< 1;
    end

    assign sum = A;

endmodule