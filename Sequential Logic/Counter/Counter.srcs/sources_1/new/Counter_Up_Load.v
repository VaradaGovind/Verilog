`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2025 16:08:21
// Design Name: 
// Module Name: Counter_Up_Load
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


module Counter_Up_Load(
    input [7:0]Data,
    input Clk,
    input Reset,
    input Load,
    output [7:0]Count
    );
    
    reg [7:0] count_temp;
    
    always @(posedge Clk)
        if (!Reset)
            count_temp <= 8'd0;
        else if (Load)
            count_temp <= Data;
        else
            count_temp <= count_temp + 1;
                    
    assign Count = count_temp;
    
endmodule
