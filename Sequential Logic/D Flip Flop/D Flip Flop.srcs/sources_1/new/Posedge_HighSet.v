`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2025 23:13:19
// Design Name: 
// Module Name: Posedge_HighSet
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


module Posedge_HighSet(
    input D,
    input Clk,
    input Reset,
    input Set,
    output reg Q
    );
    
    always @ (posedge Clk, negedge Reset, posedge Set)
        if (!Reset)
            Q <= 1'b0;
        else if (Set)
            Q <= 1'b1;
        else
            Q <= D;         
    
endmodule
