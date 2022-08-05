`include "serialAdder.v"

module serialAdder_tb();

    reg [7:0] a, b;
    reg carryIn;
    wire [7:0] sum, bOut;
    wire carryOut;
    integer i;

    serialAdder uut(a, b, sum, carryIn, carryOut, bOut);

    initial begin

        a = 8'd0;
        b = 8'd0;
        carryIn = 'b0;
        $display("%8b + %8b", a, b);
        for(i=0; i<7; i=i+1) begin
            #5;
            a = sum;
            b = bOut;
            carryIn = carryOut;
        end
        #5;
        $display(" = %8b",sum);  

        a = 8'd1;
        b = 8'd2;
        carryIn = 'b0;
        $display("%8b + %8b", a, b);
        for(i=0; i<7; i=i+1) begin
            #5;
            a = sum;
            b = bOut;
            carryIn = carryOut;
        end
        #5;
        $display(" = %8b",sum);  

        a = 8'd31;
        b = 8'd1;
        carryIn = 'b0;
        $display("%8b + %8b", a, b);
        for(i=0; i<7; i=i+1) begin
            #5;
            a = sum;
            b = bOut;
            carryIn = carryOut;
        end
        #5;
        $display(" = %8b",sum);  

        a = 8'd37;
        b = 8'd21;
        carryIn = 'b0;
        $display("%8b + %8b", a, b);
        for(i=0; i<7; i=i+1) begin
            #5;
            a = sum;
            b = bOut;
            carryIn = carryOut;
        end
        #5;
        $display(" = %8b",sum);  
    end
    
endmodule