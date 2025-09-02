`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2025 15:46:09
// Design Name: 
// Module Name: FS_Gate
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


module FS_Gate(
    input A,
    input B,
    input Bin,
    output Diff,
    output Bout
    );
    
    wire nA, x1, nX1, x2, x3;

    xor(x1, A, B);
    xor(Diff, x1, Bin);

    not(nA, A);
    not(nX1, x1);
    and(x2, nA, B);
    and(x3, Bin, nX1);
    or(Bout, x2, x3);
       
endmodule
