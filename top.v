`include "complement.v"
`include "serialAdder.v"

module top(a, b, zFlag, c);

    input [7:0] a, b;
    output zFlag;
    output [7:0] c;
    reg carry;

    complement u0(.in(b), .out(b));
    serialAdder u1(.a(a), .b(b), .sum(c), .carry(carry));

    initial begin
        carry = 0;
    end

    assign zFlag = ~c;
    
endmodule