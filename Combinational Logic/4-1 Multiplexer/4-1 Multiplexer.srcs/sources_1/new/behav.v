`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2025 00:03:15
// Design Name: 
// Module Name: behav
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


module behav(
    input [3:0]Inputs,
    input [1:0]Select,
    output reg Output
    );
    
    always @(Inputs,Select)
        case(Select)
            2'd0 : Output = Inputs[0];
            2'd1 : Output = Inputs[1];
            2'd2 : Output = Inputs[2];
            2'd3 : Output = Inputs[3];
            default : $display("error");
        endcase
            
endmodule
