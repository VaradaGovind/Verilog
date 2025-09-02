`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2025 21:41:32
// Design Name: 
// Module Name: Basic_Counter
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


module Basic_Counter(
    input Clk,
    input Reset,
    output [7:0] Count
    );
    
    reg [7:0] count_temp;
    
    always @(posedge Clk)
        if(!Reset)
            count_temp <= 8'd0;
        else
            count_temp <= count_temp + 1;    
    
    assign Count = count_temp;
    
endmodule
