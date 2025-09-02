`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2025 15:18:16
// Design Name: 
// Module Name: FA_Gate
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


module FA_Gate(
    input A,
    input B,
    input Cin,
    output Sum,
    output Carry
    );
    
    wire N1, N2, N3, N4;
    
    xor x1(N1, A, B);        
    xor x2(Sum, N1, Cin);    
    
    and a1(N2, A, B);        
    and a2(N3, B, Cin);      
    and a3(N4, A, Cin);      
    
    or o1(Carry, N2, N3, N4);
    
endmodule
