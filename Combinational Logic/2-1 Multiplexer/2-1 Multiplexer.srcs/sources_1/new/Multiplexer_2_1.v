`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2025 16:11:10
// Design Name: 
// Module Name: Multiplexer_2_1
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


module Multiplexer_2_1(
    input [1:0] Inputs,
    input Select,
    output Output
    );
    
    assign Output = Select ? Inputs[1] : Inputs[0];
    
endmodule
