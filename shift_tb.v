`include "shift.v"
`timescale 1ns / 1ns

module shift_tb();

reg [7:0] in;
reg add, clk;
wire [7:0] out;

always
    #3 clk = ~clk;

shift uut(in, add, out, clk);

initial begin

    clk = 0;

    in = 8'd0;
    add = 0;
    #6;
    $display("%b -> %b", in, out);

    in = 8'd2;
    add = 1;
    #6;
    $display("%b -> %b", in, out);

    in = 8'd63;
    add = 0;
    #6;
    $display("%b -> %b", in, out);

    $finish;

end

endmodule