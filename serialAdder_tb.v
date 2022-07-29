`include "serialAdder.v"

module serialAdder_tb();

    reg [7:0] a, b;
    reg clk, getNewSum;
    wire [7:0] sum;

    always
        #5 clk = ~clk;

    serialAdder uut(a, b, clk, sum, getNewSum);

    initial begin

        clk = 0;
        getNewSum = 1;
        a = 8'd0;
        b = 8'd0;
        getNewSum = 0;
        #80;
        $display("%8b + %8b = %8b", a, b, sum);

        clk = 0;
        getNewSum = 1;
        a = 8'd1;
        b = 8'd2;
        getNewSum = 0;
        #80;
        $display("%8b + %8b = %8b", a, b, sum);

        clk = 0;
        getNewSum = 1;
        a = 8'd31;
        b = 8'd1;
        getNewSum = 0;
        #80;
        $display("%8b + %8b = %8b", a, b, sum);

        $finish;
    end
    
endmodule