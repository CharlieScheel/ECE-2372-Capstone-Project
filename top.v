`include "complement.v"
`include "serialAdder.v"

module top(a, b, zFlag, c, nFlag);

    input [7:0] a, b;
    output zFlag, nFlag;
    output [7:0] c;
    wire [7:0] A1to2, A2to3, A3to4, A4to5, A5to6, A6to7, A7to8, B1to2, B2to3, B3to4, B4to5, B5to6, B6to7, B7to8, newB;
    wire C1to2, C2to3, C3to4, C4to5, C5to6, C6to7, C7to8;

    /* multiply by -1 */
    complement u0(.in(b), .out(newB));

    /* There is definitely a more elegant way to do this, but I was not sure how to do so */
    /* add the negative value to a */
    serialAdder u1(.a(a), .b(newB), .sum(A1to2), .carryIn(1'b0), .carryOut(C1to2), .bOut(B1to2));
    serialAdder u2(.a(A1to2), .b(B1to2), .sum(A2to3), .carryIn(C1to2), .carryOut(C2to3), .bOut(B2to3)); 
    serialAdder u3(.a(A2to3), .b(B2to3), .sum(A3to4), .carryIn(C2to3), .carryOut(C3to4), .bOut(B3to4));
    serialAdder u4(.a(A3to4), .b(B3to4), .sum(A4to5), .carryIn(C3to4), .carryOut(C4to5), .bOut(B4to5));
    serialAdder u5(.a(A4to5), .b(B4to5), .sum(A5to6), .carryIn(C4to5), .carryOut(C5to6), .bOut(B5to6));
    serialAdder u6(.a(A5to6), .b(B5to6), .sum(A6to7), .carryIn(C5to6), .carryOut(C6to7), .bOut(B6to7));
    serialAdder u7(.a(A6to7), .b(B6to7), .sum(A7to8), .carryIn(C6to7), .carryOut(C7to8), .bOut(B7to8));
    serialAdder u8(.a(A7to8), .b(B7to8), .sum(c), .carryIn(C7to8), .carryOut(), .bOut()); 

    assign zFlag = ~c;
    assign nFlag = c[7];
    
endmodule