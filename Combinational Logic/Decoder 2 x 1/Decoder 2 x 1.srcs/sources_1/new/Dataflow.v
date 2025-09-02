`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2025 15:39:57
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
    input [1:0]Input,
    input En,
    output [3:0]Y
    );
    
    assign Y = {En & Input[1] & Input[0],
                En & Input[1] & ~Input[0],
                En & ~Input[1] & Input[0],
                En & ~Input[1] & ~Input[0]};
    
endmodule
