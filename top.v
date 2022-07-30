`include "complement.v"
`include "serialAdder.v"

module top(a, b);

    reg [7:0] result, clk;

    always
        #5 clk = ~clk;
    
endmodule