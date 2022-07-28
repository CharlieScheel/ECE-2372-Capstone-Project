`timescale 1ns / 1ns
`include "bitAdder.v"

module bitAdder_tb();
    
    reg a, b;
    wire sum, carry;

    bitAdder u0(a, b, carry, sum);

    initial begin

        /* initialize inputs */
        a <= 0; 
        b <= 0;

        $monitor("%b + %b = %b (carry = %b)", a, b, sum, carry);

        /* test possible combinations */
        for(integer i=0; i<4; i=i+1) begin  
            {a, b} = i;
            #10;
        end
    end

endmodule