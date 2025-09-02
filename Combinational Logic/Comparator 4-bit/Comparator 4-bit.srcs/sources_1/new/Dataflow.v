`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2025 19:41:42
// Design Name: 
// Module Name: Dataflow
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


module Dataflow(
    input [3:0]A,
    input [3:0]B,
    output Eq,
    output Gt,
    output Sm
    );
    
    assign Eq = (A==B);
    assign Gt = (A>B);
    assign Sm = (A<B);
    
endmodule
