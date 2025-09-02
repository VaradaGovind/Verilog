`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2025 23:55:09
// Design Name: 
// Module Name: Full_Adder_1bit
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


module Full_Adder_1bit(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    
    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B)|(B & Cin)|(Cin & A);
endmodule
