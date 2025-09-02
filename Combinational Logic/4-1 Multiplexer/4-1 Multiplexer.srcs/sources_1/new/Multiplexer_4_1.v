`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2025 13:17:57
// Design Name: 
// Module Name: Multiplexer_4_1
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


module Multiplexer_4_1(
    input [3:0] Inputs,
    input [1:0] Select,
    output Output
    );
    
    assign Output = Inputs[Select];
    
endmodule
