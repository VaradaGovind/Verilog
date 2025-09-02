`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2025 15:34:39
// Design Name: 
// Module Name: Half_Sub_Beh
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


module Half_Sub_Beh(
    input A,
    input B,
    output reg Difference,
    output reg Borrow
    );
    
    always @(A or B)begin
        assign Difference = A ^ B;
        assign Borrow = ~A & B;
    end
        
endmodule
