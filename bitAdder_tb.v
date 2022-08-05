`timescale 1ns / 1ns
`include "bitAdder.v"

module bitAdder_tb();
    
    /* declare variables */
    reg a, b, carryIn;
    wire sum, carryOut;

    /* testing bitAdder.v */
    bitAdder uut(a, b, carryIn, carryOut, sum);

    initial begin

        /* initialize inputs */
        a = 0; 
        b = 0;
        carryIn = 0;

        /* test possible combinations */
        for(integer i=0; i<8; i=i+1) begin  
            {a, b, carryIn} = i;
            #6;
            $display("%b + %b + %b = %b (carry = %b)", a, b, carryIn, sum, carryOut);
        end
    end
    
endmodule