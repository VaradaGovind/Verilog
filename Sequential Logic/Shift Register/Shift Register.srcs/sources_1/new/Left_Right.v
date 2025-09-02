`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2025 20:38:16
// Design Name: 
// Module Name: Left_Right
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


module Left_Right(
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
            SR <= {SI,SR[4:1]};
    
    assign SO = SR[0];
    
endmodule
