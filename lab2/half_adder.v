`timescale 1ns / 1ps

module half_adder(sum, carry, a, b);
    input a, b;
    output sum, carry;
    xor sum1(sum, a, b);
    and carry1(carry, a, b);
endmodule
