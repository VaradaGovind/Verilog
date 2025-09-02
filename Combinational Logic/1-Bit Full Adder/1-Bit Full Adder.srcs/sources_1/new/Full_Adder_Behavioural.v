`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2025 23:32:54
// Design Name: 
// Module Name: Full_Adder_Behavioural
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


module Full_Adder_Behavioural(
    input A,
    input B,
    input Cin,
    output reg Sum,
    output reg Cout
    );
    
    always @ (A,B,Cin)
    begin
        Sum = A ^ B ^ Cin;
        Cout = (A & B)|(B & Cin)|(Cin & A);
    end
    
endmodule
