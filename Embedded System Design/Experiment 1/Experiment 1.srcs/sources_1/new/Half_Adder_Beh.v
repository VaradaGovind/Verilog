`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2025 15:34:39
// Design Name: 
// Module Name: Half_Adder_Beh
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


module Half_Adder_Beh(
    input A,
    input B,
    output reg Sum,
    output reg Carry
    );
    
    always @(A or B)begin
        Sum = A ^ B;
        Carry = A & B;
    end
            
endmodule
