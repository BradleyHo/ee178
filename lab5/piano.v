// File: piano.v 
// This is the top level design for EE178 Lab #5. 
// The `timescale directive specifies what the 
// simulation time units are (1 ns here) and what 
// the simulator time step should be (1 ps here). 
 
`timescale 1 ns / 1 ps 
 
// Declare the module and its ports. This is 
// using Verilog-2001 syntax.

module piano(
    input wire clk,
    input wire hush,
    input wire [3:0] note,
    output wire speaker
    );
    
    // declare reg to implement the up couner, to create 16 different notes 
    localparam N = 17;
    reg [N-1:0] counter;
    reg [N-1:0] val;
    reg clkout;
    
    // initialize clkout at 0, counter also 0 at 17-bit
    initial
    begin
        counter = 17'b00000000000000000;
        clkout = 1'b0;
    end
    
    always @ (posedge clk) // always execute the following at positive edge of clock
    begin 
        case(note)
            // implement decoder for 16 different notes 
            4'h0: val = 17'b11011101111100011; // bitwise 113635 count
            4'h1: val = 17'b11010001011110100; // bitwise 107252 count
            4'h2: val = 17'b11000101101110101; // bitwise 101237 count
            4'h3: val = 17'b10111010101000011; // bitwise 95555 count
            4'h4: val = 17'b10110000001010000; // bitwise 90192 count
            4'h5: val = 17'b10100110010001010; // bitwise 85130 count
            4'h6: val = 17'b10011100111100000; // bitwise 80352 count
            4'h7: val = 17'b10010100001000010; // bitwise 75842 count
            4'h8: val = 17'b10001011110100001; // bitwise 71585 count
            4'h9: val = 17'b10000011111110000; // bitwise 67568 count
            4'ha: val = 17'b01111100100011111; // bitwise 63775 count
            4'hb: val = 17'b01110101100100100; // bitwise 60196 count
            4'hc: val = 17'b01101110111110001; // bitwise 56817 count
            4'hd: val = 17'b01101000101111100; // bitwise 53628 count
            4'he: val = 17'b01100010110111010; // bitwise 50618 count
            4'hf: val = 17'b01011101010100001; // bitwise 47777 count    
        endcase
    end
    
    always @ (posedge clk) // always execute the following at positive edge of clock
    begin
        // implement up counter
        // and check for hush to mute the audio
        counter = counter + 1;
        if((counter == val) && (!hush)) 
        begin
            clkout = ~clkout;
            counter = 0;
        end
    end

    // use assign to connect the a reg variable to the output speaker
    assign speaker = clkout;

endmodule
