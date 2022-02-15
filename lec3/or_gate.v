`timescale 1ns / 1ps

module or_gate(
    input A,
    input B,
    output X
    );
    
    assign X = A | B;
endmodule
