`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2025 15:34:08
// Design Name: 
// Module Name: FA_Beh
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


module FA_Beh(
    input A,
    input B,
    input Cin,
    output reg Sum,
    output reg Cout
    );
    
    always @ (*)begin
        Sum = A ^ B ^ Cin;
        Cout = (A & B) | (B & Cin) | (A & Cin); 
    end
    
endmodule
