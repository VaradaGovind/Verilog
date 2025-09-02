`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2025 23:46:42
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
    reg A,B,Cin;
    wire Sum,Cout;
    
Full_Adder_1bit uut (
        .Sum(Sum),
        .Cout(Cout),
        .A(A),
        .B(B),
        .Cin(Cin)
        );
    
    initial begin
        A = 0; B = 0; Cin = 0;
     #1 A = 0; B = 0; Cin = 1;
     #1 A = 0; B = 1; Cin = 0;
     #1 A = 0; B = 1; Cin = 1;
     #1 A = 1; B = 0; Cin = 0;
     #1 A = 1; B = 0; Cin = 1;
     #1 A = 1; B = 1; Cin = 0;
     #1 A = 1; B = 1; Cin = 1;
 
        $finish;

    end
    
endmodule

