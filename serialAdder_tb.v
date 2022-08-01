`include "serialAdder.v"

module serialAdder_tb();

    reg [7:0] a, b;
    reg carry;
    wire [7:0] sum;

    serialAdder uut(a, b, sum, carry);

    initial begin
        
        carry = 0;

        a = 8'd0;
        b = 8'd0;
        #5;
        $display("%8b + %8b = %8b", a, b, sum);  

        a = 8'd1;
        b = 8'd2;
        #5;
        $display("%8b + %8b = %8b", a, b, sum); 

        a = 8'd31;
        b = 8'd1;
        #5;
        $display("%8b + %8b = %8b", a, b, sum); 

        a = 8'd37;
        b = 8'd21;
        #5;
        $display("%8b + %8b = %8b", a, b, sum); 
    end
    
endmodule