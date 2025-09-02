`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2025 00:27:47
// Design Name: 
// Module Name: With_Reset
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


module With_Reset(
    input En,
    input D,
    input Reset,
    output reg Q
    );
    
    always @(En,Q,Reset)
        if(Reset)
            Q = 1'b0;
        else if(En)
            Q = D;
    
endmodule
