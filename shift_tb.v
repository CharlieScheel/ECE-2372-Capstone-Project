`include "shift.v"

module shift_tb();

reg [7:0] in;
reg add;
wire [7:0] out;

shift uut(in, add, out);

initial begin

    in = 8'd0;
    add = 0;
    #5;
    $display("%b -> %b", in, out);

    in = 8'd2;
    add = 1;
    #5;
    $display("%b -> %b", in, out);

    in = 8'd63;
    add = 0;
    #5;
    $display("%b -> %b", in, out);

    in = 8'd255;
    add = 1;
    #5;
    $display("%b -> %b", in, out);

end

endmodule