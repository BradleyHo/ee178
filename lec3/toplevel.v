`timescale 1ns / 1ps

module toplevel(
    input IN1,
    input IN2,
    input IN3,
    input IN4,
    output OUT
    );
    // define intermediate outputs OUT1 and OUT2
    wire OUT1, OUT2;
    and_gate U0(.A(IN1), .B(IN2), .X(OUT1)); // U0 name of module instantiation, can name it anything
    and_gate U1(.A(IN3), .B(IN4), .X(OUT2));
    or_gate U2(.A(OUT1), .B(OUT2), .X(OUT)); // refer to the lecture for diagram
endmodule
