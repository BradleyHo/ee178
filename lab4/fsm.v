// File: fsm.v
// This is the top level design for EE178 Lab #4.

// The `timescale directive specifies what the
// simulation time units are (1 ns here) and what
// the simulator time step should be (1 ps here).

`timescale 1 ns / 1 ps

// Declare the module and its ports. This is
// using Verilog-2001 syntax.

module fsm(
    input wire pause,
    input wire restart,
    input wire clk,
    output reg odd,
    output reg even,
    output reg terminal
    );
  
    localparam [1:0] FIRST  = 2'b11;
    localparam [1:0] SECOND = 2'b10;
    localparam [1:0] THIRD  = 2'b01;
    
    reg [1:0] state = FIRST;
    
    always @(posedge clk)
    begin
        case(state)
            FIRST:  if (restart || pause) state <= FIRST;
                    else state <= SECOND;
            SECOND: if (restart) state <= FIRST;
                    else if (pause) state <= SECOND;
                    else state <= THIRD;
            THIRD:  if (!restart && pause) state <= THIRD;
                    else state <= FIRST;
            default: state <= FIRST;
        endcase
    end
    
    always @*
    begin
        odd = (state == FIRST) || (state == THIRD);
        even = (state == SECOND);
        terminal = (state == THIRD) && (restart || !pause);
    end
endmodule
