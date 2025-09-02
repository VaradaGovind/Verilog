`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2025 16:16:40
// Design Name: 
// Module Name: Multiplexer_Behavioural
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


module Multiplexer_Behavioural(
    input [1:0] Inputs,
    input Select,
    output reg Output
    );
    
    always @ (*)
    if (Select)
        Output = Inputs[1];
    else
        Output = Inputs[0];
    
endmodule
