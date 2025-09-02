`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2025 23:16:45
// Design Name: 
// Module Name: Half_Adder_Behavioural
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


module Half_Adder_Behavioural(
    input A,
    input B,
    output reg Sum,
    output reg Carry
    );
    
    always @(A,B)
    begin
        Sum = A ^ B;
        Carry = A & B;     
    end   
endmodule
