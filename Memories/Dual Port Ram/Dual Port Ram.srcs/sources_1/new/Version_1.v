`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2025 17:21:17
// Design Name: 
// Module Name: Version_1
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


module Version_1(
    input [7:0]Data,
    input [5:0]Read_addr,
    input [5:0]Write_addr,
    input Write_en,
    input Write_Clk,
    input Read_Clk,
    output reg [7:0]Output
    );
    
    //There is a one clock delay as we are using a different clock
    //This is a not a True Dual Port
    
    reg [7:0] ram[63:0];
    reg [5:0] Read_addr_reg;
    
    always @(posedge Write_Clk)
        if(Write_en)
            ram[Write_addr] <= Data;

    always @(posedge Read_Clk) begin
        Read_addr_reg <= Read_addr;
        Output <= ram[Read_addr_reg];
    end            
    
endmodule
