`timescale 1ns / 1ps

// Defining an AND gate
module and_two_input(
    input in1,
    input in2,
    output result
    );
    
    wire temp;
    
    assign temp = in1 & in2; // Performing AND operation and assigning output to temp
    assign result = temp;
endmodule
