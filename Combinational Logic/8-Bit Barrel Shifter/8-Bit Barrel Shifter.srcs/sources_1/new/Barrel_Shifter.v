`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2025 01:21:05
// Design Name: 
// Module Name: Barrel_Shifter
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


module Barrel_Shifter(
    input [7:0]In,
    input [2:0]n,
    input LR,
    output reg [7:0]Out
    );
    
    always @(*)begin
        if(LR)
            Out = In << n;
        else 
            Out = In >> n;
    end            
    
endmodule
