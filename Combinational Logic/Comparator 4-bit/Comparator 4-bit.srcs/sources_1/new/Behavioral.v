`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2025 19:41:42
// Design Name: 
// Module Name: Behavioral
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


module Behavioral(
    input [3:0]A,
    input [3:0]B,
    output reg Eq,
    output reg Gt,
    output reg Sm
    );
    
    always @(*) begin
        Eq = (A==B);
        Gt = (A>B);
        Sm = (A<B);
    end
        
endmodule
