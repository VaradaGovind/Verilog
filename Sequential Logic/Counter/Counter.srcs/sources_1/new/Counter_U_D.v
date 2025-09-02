`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2025 21:10:58
// Design Name: 
// Module Name: Counter_U_D
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


module Counter_U_D(
    input Clk,
    input Reset,
    input [7:0]Data,
    input Load,
    input U_D,
    output [7:0]Counter
    );
    
    reg [7:0]count_temp;
    
    always @(posedge Clk)
        if(!Reset)
            count_temp <= 8'd0;
        else if(Load)
            count_temp <= Data;
        else if(U_D)
            count_temp <= count_temp + 1;
        else
            count_temp <= count_temp - 1;
     
    assign Counter = count_temp;            
                         
endmodule
