`timescale 1ns / 1ps

module tb_and_two_input;

    wire t_result;
    reg t_in1, t_in2;

    // Module instantiation, 2 ways

    // and_two_input my_and_gate(t_in1, t_in2, t_result); // sequence cannopt be changed, as how the design parameters are listed in order

    and_two_input my_and_gate(.in2(t_in2), .in1(t_in1), .result(t_result)); // here is better since you can "move" parameters around bc it's already explicitly defined/connected

    initial begin
        $monitor(t_in1, t_in2, t_result);
        #2 // 2 ns delay
        t_in1 = 1'b0; // 1 bit in binary of 0 initial value
        t_in2 = 1'b0;
        #5
        // when simulating, don't give output a value, it should be simulated from the input values!
    
        t_in1 = 1'b0; // 1 bit in binary of 0 initial value
        t_in2 = 1'b1;
        #5 
    
        t_in1 = 1'b1; // 1 bit in binary of 1 initial value
        t_in2 = 1'b0;
        #5 
    
        t_in1 = 1'b1; // 1 bit in binary of 1 initial value
        t_in2 = 1'b1;
    end
endmodule
