`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2025 21:43:19
// Design Name: 
// Module Name: Frequency_Div2
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


module Frequency_Div2(
    input Clk,
    input Reset,
    output reg Clk_Out
    );
    
    always @(posedge Clk)
        if(!Reset)
            Clk_Out <= 0;
        else
            Clk_Out <= ~ Clk_Out;    
    
endmodule
