`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2025 15:59:34
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
    input [3:0]Input,
    output [1:0]Y,
    output V
    );
    
    assign Y = {Input[3]|Input[2],Input[3]|Input[1]};
    assign V = |Input;
    
endmodule
