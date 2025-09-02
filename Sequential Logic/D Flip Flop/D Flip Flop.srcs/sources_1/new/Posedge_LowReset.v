`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2025 23:13:19
// Design Name: 
// Module Name: Posedge_LowReset
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


module Posedge_LowReset(
    input D,
    input Clk,
    input Reset,
    output reg Q
    );
    
    always @(posedge Clk, negedge Reset)
        if (!Reset)
            Q <= 1'b0;
        else    
            Q <= D;    
    
endmodule
