`include "bitAdder.v"
`include "shift.v"

module serialAdder(a, b, sum);

    input [7:0] a, b;
    output [7:0] sum;
    wire bitSum, carry;
    wire [7:0] B;

    genvar i;
    generate
        assign sum = a;
        assign B = b;
        for(i=0; i<8; i=i+1) begin
            if(i==0)
                bitAdder u0(.a(sum[0]), .b(B[0]), .carryIn(1'b0), .carryOut(carry), .sum(bitSum));
            else
                bitAdder u0(.a(sum[0]), .b(B[0]), .carryIn(carry), .carryOut(carry), .sum(bitSum));

            shift shiftA(.in(sum), .add(bitsum), .out(sum));
            shift shiftB(.in(B), .add(B[0]), .out(B));
        end
    endgenerate
endmodule