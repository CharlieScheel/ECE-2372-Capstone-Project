`include "serialAdder.v"
`timescale 1ns / 1ns

module serialAdder_tb();

    reg [7:0] a, b;
    reg clk, carry;
    wire [7:0] sum;
    integer i;

    always
        #3 clk = ~clk;

    serialAdder uut(a, b, clk, sum, carry);

    initial begin
        
        clk = 0;
        carry = 0;

        a = 8'd0;
        b = 8'd0;
        for(i=0; i<8; i=i+1) begin
            #6;
            $display("%8b + %8b = %8b", a, b, sum); 
        end 

        a = 8'd1;
        b = 8'd2;
        for(i=0; i<8; i=i+1) begin
            #6;
            $display("%8b + %8b = %8b", a, b, sum); 
        end

        a = 8'd31;
        b = 8'd1;
        for(i=0; i<8; i=i+1) begin
            #6;
            $display("%8b + %8b = %8b", a, b, sum); 
        end

        a = 8'd37;
        b = 8'd21;
        for(i=0; i<8; i=i+1) begin
            #6;
            $display("%8b + %8b = %8b", a, b, sum); 
        end

        $finish;
    end
    
endmodule