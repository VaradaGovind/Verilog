`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2025 15:34:39
// Design Name: 
// Module Name: Half_Sub_Gate
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


module Half_Sub_Gate(
    input A,
    input B,
    output Difference,
    output Borrow
    );
    
    xor g1(Difference,A,B);
    and g2(Borrow,~A,B);
    
endmodule
