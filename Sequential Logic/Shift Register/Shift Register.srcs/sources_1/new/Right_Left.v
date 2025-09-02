`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2025 20:42:17
// Design Name: 
// Module Name: Right_Left
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


module Right_Left(
    input SI,
    input Clk,
    input Reset,
    output SO
    );
    
    reg [4:0]SR;
    
    always @(posedge Clk,negedge Reset)
        if(!Reset)
            SR <= 5'd0;
        else 
            SR <= {SR[3:0],SI};
    
    assign SO = SR[4];
    
endmodule
