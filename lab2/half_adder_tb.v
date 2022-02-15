`timescale 1ns / 1ns 

module half_adder_tb;
    wire t_sum, t_carry; 
    reg t_a, t_b; 
    
    half_adder my_design(.a(t_a), .b(t_b), .sum(t_sum), .carry(t_carry)); 
    
    initial 
    begin // 1 
        t_a = 1'b0; 
        t_b = 1'b0; 

        #5 //2 
        t_a = 1'b0; 
        t_b = 1'b1; 
        
        #5 //3 
        t_a = 1'b1; 
        t_b = 1'b0; 
        
        #5 //4 
        t_a = 1'b1; 
        t_b = 1'b1; 
    end 
endmodule
