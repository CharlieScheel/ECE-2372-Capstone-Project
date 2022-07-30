`include "serialAdder.v"
`timescale 1ns / 1ns

module serialAdder_tb();

    reg [7:0] a, b;
    reg clk, getNewSum;
    wire [7:0] sum;

    always
        #3 clk = ~clk;

    serialAdder uut(a, b, clk, sum);

    initial begin
        
        clk = 0;

        a = 8'd0;
        b = 8'd0;
        #48;
        $display("%8b + %8b = %8b", a, b, sum); 

        a = 8'd1;
        b = 8'd2;
        #48;
        $display("%8b + %8b = %8b", a, b, sum);

        a = 8'd31;
        b = 8'd1;
        #48;
        $display("%8b + %8b = %8b", a, b, sum);

        a = 8'd37;
        b = 8'd21;
        #48;
        $display("%8b + %8b = %8b", a, b, sum);

        $finish;
    end
    
endmodule