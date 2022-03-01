module disp_mux(
	   input wire clk, reset,
	   input [3:0] in0, in1, in2, in3,
	   output reg [3:0] an,
	   output reg [6:0] sseg,
	   output wire dp
	   );

    assign dp = 1'b1; // turn dp off
    
	// constant declaration
	// refresh rate
	localparam N = 18;
	
	// signal declaration
	reg [N-1:0] regN = 0;
	
	always@(posedge clk)
	begin
		regN = regN + 1;
	end
	
	// 2 MSB ofcounter to control 4-to-1 multiplexing
	always@ *
	begin
        case(regN[N-1:N-2])// refresh rate: 2 most sig. bits and hold data 
            2'b00: begin
                // separate case statement for in
                case(in0)
                    4'h0: sseg[6:0] = 7'b0000001;
                    4'h1: sseg[6:0] = 7'b1001111;
                    4'h2: sseg[6:0] = 7'b0010010;
                    4'h3: sseg[6:0] = 7'b0000110;
                    4'h4: sseg[6:0] = 7'b1001100;
                    4'h5: sseg[6:0] = 7'b0100100;
                    4'h6: sseg[6:0] = 7'b0100000;
                    4'h7: sseg[6:0] = 7'b0001111;
                    4'h8: sseg[6:0] = 7'b0000000;
                    4'h9: sseg[6:0] = 7'b0000100;
                    4'ha: sseg[6:0] = 7'b0001000;
                    4'hb: sseg[6:0] = 7'b1100000;
                    4'hc: sseg[6:0] = 7'b0110001;
                    4'hd: sseg[6:0] = 7'b1000010;
                    4'he: sseg[6:0] = 7'b0110000;
                    default: sseg[6:0] = 7'b0111000;  // 4'hf
                endcase
            end
            
			2'b01: begin
                case(in1)
                    4'h0: sseg[6:0] = 7'b0000001;
                    4'h1: sseg[6:0] = 7'b1001111;
                    4'h2: sseg[6:0] = 7'b0010010;
                    4'h3: sseg[6:0] = 7'b0000110;
                    4'h4: sseg[6:0] = 7'b1001100;
                    4'h5: sseg[6:0] = 7'b0100100;
                    4'h6: sseg[6:0] = 7'b0100000;
                    4'h7: sseg[6:0] = 7'b0001111;
                    4'h8: sseg[6:0] = 7'b0000000;
                    4'h9: sseg[6:0] = 7'b0000100;
                    4'ha: sseg[6:0] = 7'b0001000;
                    4'hb: sseg[6:0] = 7'b1100000;
                    4'hc: sseg[6:0] = 7'b0110001;
                    4'hd: sseg[6:0] = 7'b1000010;
                    4'he: sseg[6:0] = 7'b0110000;
                    default: sseg[6:0] = 7'b0111000;  // 4'hf
                endcase
            end
        
            2'b10: begin
                case(in2)
                    4'h0: sseg[6:0] = 7'b0000001;
                    4'h1: sseg[6:0] = 7'b1001111;
                    4'h2: sseg[6:0] = 7'b0010010;
                    4'h3: sseg[6:0] = 7'b0000110;
                    4'h4: sseg[6:0] = 7'b1001100;
                    4'h5: sseg[6:0] = 7'b0100100;
                    4'h6: sseg[6:0] = 7'b0100000;
                    4'h7: sseg[6:0] = 7'b0001111;
                    4'h8: sseg[6:0] = 7'b0000000;
                    4'h9: sseg[6:0] = 7'b0000100;
                    4'ha: sseg[6:0] = 7'b0001000;
                    4'hb: sseg[6:0] = 7'b1100000;
                    4'hc: sseg[6:0] = 7'b0110001;
                    4'hd: sseg[6:0] = 7'b1000010;
                    4'he: sseg[6:0] = 7'b0110000;
                    default: sseg[6:0] = 7'b0111000;  // 4'hf
                endcase
            end
            
            2'b11: begin
                case(in3)
                    4'h0: sseg[6:0] = 7'b0000001;
                    4'h1: sseg[6:0] = 7'b1001111;
                    4'h2: sseg[6:0] = 7'b0010010;
                    4'h3: sseg[6:0] = 7'b0000110;
                    4'h4: sseg[6:0] = 7'b1001100;
                    4'h5: sseg[6:0] = 7'b0100100;
                    4'h6: sseg[6:0] = 7'b0100000;
                    4'h7: sseg[6:0] = 7'b0001111;
                    4'h8: sseg[6:0] = 7'b0000000;
                    4'h9: sseg[6:0] = 7'b0000100;
                    4'ha: sseg[6:0] = 7'b0001000;
                    4'hb: sseg[6:0] = 7'b1100000;
                    4'hc: sseg[6:0] = 7'b0110001;
                    4'hd: sseg[6:0] = 7'b1000010;
                    4'he: sseg[6:0] = 7'b0110000;
                    default: sseg[6:0] = 7'b0111000;  // 4'hf
                endcase
            end
        endcase
    end
    
    // decoder: only deals with an
	always@ *
	begin
        case(regN[N-1:N-2])
            // use case statement
            2'b00: begin
                an = 4'b1110;
            end
            
            2'b01: begin
                an = 4'b1101;
            end
            
            2'b10: begin
                an = 4'b1011;
            end
        
            2'b11: begin
                an = 4'b0111;
            end
            
            default: an = 4'b1111;
        endcase
    end
    
endmodule
