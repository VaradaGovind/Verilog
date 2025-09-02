`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2025 15:46:09
// Design Name: 
// Module Name: FS_Data
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


module FS_Data(
    input A,
    input B,
    input Bin,
    output Diff,
    output Bout
    );
    
    assign Diff = A ^ B ^ Bin;
    
    assign Bout = (~A & B) | (Bin & ~A) | (Bin & B);

endmodule
