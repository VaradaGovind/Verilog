`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2025 23:24:39
// Design Name: 
// Module Name: Test_Bench
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


module Test_Bench;
    reg A,B;
    wire Sum,Carry;
    
Half_Adder uut (
        .Sum(Sum),
        .Carry(Carry),
        .A(A),
        .B(B)
        );
    
    initial begin
        A = 0; B = 0;
     #1 A = 0; B = 1;
     #1 A = 1; B = 0;
     #1 A = 1; B = 1;
     #1
 
        $finish;

    end
    
endmodule