`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2025 15:34:39
// Design Name: 
// Module Name: Half_Adder_Gate
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


module Half_Adder_Gate(
    input A,
    input B,
    output Sum,
    output Carry
    );
    
    xor g1(Sum,A,B);
    and g2 (Carry,A,B);
    
endmodule
