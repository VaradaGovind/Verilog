`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2025 23:55:09
// Design Name: 
// Module Name: Full_Adder_4bit
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


module Full_Adder_4bit(
    input [3:0]A,
    input [3:0]B,
    input Cin,
    output [3:0]Sum,
    output Cout
    );
    
    assign {Cout, Sum} = A + B + Cin;
    
endmodule
