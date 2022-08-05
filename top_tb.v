`include "top.v"

module top_tb;

/* declare variables here */
wire zFlag,      // Equals 1 if the result of the subtraction operation is 0x00
     nFlag,      // Equals 1 if the result of the subtraction is negative
     vFlag;      // Equals 1 if the subtraction operation results in an overflow
reg [7:0] a;    // Accumulator
reg [7:0] b;    // Subtrahend register
wire [7:0] c;   // Result

top uut(a, b, zFlag, c, nFlag);

initial begin
    
    a = 8'd1;
    b = 8'd1;
    #5;
    $display("%8b - %8b = %8b (zFlag = %d) (nFlag = %d)", a, b, c, zFlag, nFlag);

    a = 8'd10;
    b = 8'd5;
    #5;
    $display("%8b - %8b = %8b (zFlag = %d) (nFlag = %d)", a, b, c, zFlag, nFlag);

    a = 8'd100;
    b = 8'd45;
    #5;
    $display("%8b - %8b = %8b (zFlag = %d) (nFlag = %d)", a, b, c, zFlag, nFlag);

    a = 8'd127;
    b = 8'd8;
    #5;
    $display("%8b - %8b = %8b (zFlag = %d) (nFlag = %d)", a, b, c, zFlag, nFlag);

end

endmodule