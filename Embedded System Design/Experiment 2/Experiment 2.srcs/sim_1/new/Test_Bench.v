`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2025 15:39:09
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

    reg A;
    reg B;
    reg Cin;
    wire Sum;
    wire Cout;

    
    FA_Data FA (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin

        A=0; B=0; Cin=0; #10; 
        A=0; B=0; Cin=1; #10; 
        A=0; B=1; Cin=0; #10; 
        A=0; B=1; Cin=1; #10; 
        A=1; B=0; Cin=0; #10; 
        A=1; B=0; Cin=1; #10; 
        A=1; B=1; Cin=0; #10; 
        A=1; B=1; Cin=1; #10; 

        $finish;
    end
    
endmodule
