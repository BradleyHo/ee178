`timescale 1ns / 1ps

module full_adder_join(fsum, fcarry_out, a, b, c);
    input a, b, c; // input signal names
    output fsum, fcarry_out; // output signal names
    
    wire ha_sum0, ha_carry0, ha_sum1, ha_carry1; // define 4 wires
    
    // instantiation of the first half-adder module
    half_adder my_ha0(.a(a), .b(b), .sum(ha_sum0), .carry(ha_carry0));
    // instantiation of the second half-adder module
    half_adder my_ha1(.a(ha_sum0), .b(c), .sum(ha_sum1), .carry(ha_carry1));
    
    assign fcarry_out = ha_carry0 | ha_carry1; // assign the final carry out value
    assign fsum = a ^ b ^ c; // assign the final sum value
endmodule
