`timescale 1ns / 1ns
`include "complement.v"

module complement_tb();

/* declare variables */
reg [7:0] test;
wire [7:0] result;

/* testing compliment.v */
complement uut(.in(test), .out(result));

initial begin

    $monitor("%b -> %b", test, result);

    test = 8'd0;
    #10;

    test = 8'd10;
    #10;

    test = 8'd153;
    #10;
    
    test = 8'd127;
    #10;

    test = 8'd255;
    #10;

end

    
endmodule