`timescale 1ns / 1ns
`include "bitAdder.v"

module bitAdder_tb();
    
    reg a, b, carryIn;
    wire sum, carryOut;

    bitAdder u0(a, b, carryIn, carryOut, sum);

    initial begin

        /* initialize inputs */
        a <= 0; 
        b <= 0;
        carryIn <= 0;

        $monitor("%b + %b + %b = %b (carry = %b)", a, b, carryIn, sum, carryOut);

        /* test possible combinations */
        for(integer i=0; i<8; i=i+1) begin  
            {a, b, carryIn} = i;
            #10;
        end
    end

endmodule