`include "serialAdder.v"

module serialAdder_tb();

    reg [7:0] a;
    reg [7:0] b;
    reg clk;
    wire [7:0] sum;

    always
        #5 clk = ~clk;

    serialAdder uut(a, b, clk, sum);

    initial begin

        $monitor("%8b + %8b = %8b", a, b, sum);

        a = 8'd0;
        b = 8'd0;
        #10;

        $finish;
    end
    
endmodule