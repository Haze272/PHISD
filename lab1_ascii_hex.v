`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 20:48:06
// Design Name: 
// Module Name: BS_DEV_ASCII_HEX
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BS_DEV_ASCII_HEX(
    input [7:0] ASCII,
    output reg [3:0] HEX,
    output reg HEX_FLG
);

    
assign HEX_FLG =   (ASCII == 8'h30) |
                   (ASCII == 8'h31) | 
                   (ASCII == 8'h32) | 
                   (ASCII == 8'h33) | 
                   (ASCII == 8'h34) | 
                   (ASCII == 8'h35);

always@(*)
    case(ASCII)
        8'h30: begin
            HEX = 4'h0;
            HEX_FLG = 1'b1;
        end
        
        8'h31: begin
            HEX = 4'h0;
            HEX_FLG = 1'b1;
        end
        
        8'h41, 8'h61: begin
            HEX = 4'hA;
            HEX_FLG = 1'b1;
        end

        default: begin
            HEX_FLG = 1'b0;
            HEX = 4'hF;
        end
    endcase

endmodule
