module testbench;
    reg t_A, t_B, t_C, t_D;
    wire t_X;
    
    toplevel test(.A(t_A), .B(t_B), .C(t_C), .D(t_D), .X(t_X)); // one method of signals connection with ports not in order
    // and_gate test(t_A, t_B, t_X); // the other method to map module ports with the test bench signals but in order

    // inputs n = 4, 2^n => 2^4 = 16 possible cases
    // executes sequentially once
    initial // always block used to design module, intial block used in simulation source
    begin
        #5 // delay 5 ns
        t_A = 1'b0;
        t_B = 1'b0;
        t_C = 1'b0;
        t_D = 1'b0;
       
        #5
        t_A = 1'b0;
        t_B = 1'b1;

        
        #5
        t_A = 1'b1;
        t_B = 1'b0;
        
        #5
        t_A = 1'b1;
        t_B = 1'b1;
    end
endmodule
