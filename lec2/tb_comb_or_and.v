`timescale 1ns / 1ps

module tb_comb_or_and;
    reg t_a, t_b, t_c; // t means test bench signal
    wire t_x;

    comb_or_and my_comb_ckt(.a(t_a), .b(t_b), .c(t_c), .x(t_x)); // connect test bench signals to the ports
    
    initial begin
        $monitor(t_a, t_b, t_c, t_x); // keeps track of inputs and outputs
    
        // 8 possible cases
        // give these test bench signals initial values in binary
        #5 // 5 ns time delay until execution of next line
        t_a = 1'b0;
        t_b = 1'b0;
        t_c = 1'b0;
    
        #5
        t_a = 1'b0;
        t_b = 1'b0;
        t_c = 1'b1;
    
        #5
        t_a = 1'b0;
        t_b = 1'b1;
        t_c = 1'b0;
    
        #5
        t_a = 1'b0;
        t_b = 1'b1;
        t_c = 1'b1;
    
        #5
        t_a = 1'b1;
        t_b = 1'b0;
        t_c = 1'b0;
    
        #5
        t_a = 1'b1;
        t_b = 1'b0;
        t_c = 1'b1;
    
        #5
        t_a = 1'b1;
        t_b = 1'b1;
        t_c = 1'b0;
    
        #5
        t_a = 1'b1;
        t_b = 1'b1;
        t_c = 1'b1;
    end
endmodule
