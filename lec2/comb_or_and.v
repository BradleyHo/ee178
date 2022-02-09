`timescale 1ns / 1ps

module comb_or_and(
    input a, b, c,
    output x
    ); // can also change this formatting to another style, check lecture
    
    // wire temp;
    // assign temp = a |b;
    // assign x = temp & c;
    
    assign x = (a | b) & c; // method 2, method 1 is above
    // notes: speed grade is how fast the FPGA development board can operate
    // higher frequency will execute code faster
    // -1 could mean that the board is faster than its -2 and -3 variants
endmodule
