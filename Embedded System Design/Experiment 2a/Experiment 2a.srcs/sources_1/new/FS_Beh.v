`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2025 15:46:09
// Design Name: 
// Module Name: FS_Beh
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


module FS_Beh(
    input A,
    input B,
    input Bin,
    output reg Diff,
    output reg Bout
    );
    
    always @(*) begin
        
        Diff = A ^ B ^ Bin;
        
        Bout = (~A & B) | (Bin & ~A) | (Bin & B);
    end

endmodule
