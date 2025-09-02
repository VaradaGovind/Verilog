`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2025 23:32:54
// Design Name: 
// Module Name: Full_Adder_Structural
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


module Full_Adder_Structural(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    
    wire N1,N2,N3;
    
    Half_Adder HA1(
        .A(A),
        .B(B),
        .Sum(N1),
        .Carry(N2)
        );
    Half_Adder HA2(
        .A(N1),
        .B(Cin),
        .Sum(Sum),
        .Carry(N3)
        );
    assign Cout = N3|N2;
            
endmodule
