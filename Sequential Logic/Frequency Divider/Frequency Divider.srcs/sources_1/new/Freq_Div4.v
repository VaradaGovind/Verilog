`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2025 22:06:34
// Design Name: 
// Module Name: Freq_Div4
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


module Freq_Div4(
    input Clk,
    input Reset,
    output reg Clk_Out
    );
     reg [1:0] count;

    always @(posedge Clk or posedge Reset) begin
        if (Reset) begin
            count <= 2'b00;
            Clk_Out <= 1'b0;
        end else begin
            count <= count + 1'b1;
            Clk_Out <= count[1]; 
        end
    end
endmodule
