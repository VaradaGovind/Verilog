`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2025 21:36:19
// Design Name: 
// Module Name: Count_Range_U_D
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


// Range is 10 to 40 for this counter

module Count_Range_U_D(
    input Clk,
    input Reset,
    input [7:0]Data,
    input Load,
    input U_D,
    output [7:0]Counter
    );
    
    reg [7:0]count_temp;
    
    always @(posedge Clk)
        if(!Reset | count_temp > 8'd40 | count_temp < 8'd10)
            count_temp <= 8'd10;
        else if(Load)
            count_temp <= Data;
        else if(U_D)
            count_temp <= (count_temp >= 40)? 8'd10: count_temp + 1;
        else
            count_temp <= (count_temp >= 40)? 8'd10: count_temp - 1;
                
    assign Counter = count_temp;
    
endmodule
