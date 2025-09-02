`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2025 17:01:04
// Design Name: 
// Module Name: Version_2
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


module Version_2(
    input [7:0]Data,
    input [5:0]Address,
    input Write_en,
    input Clk,
    output [7:0]Output
    );

    //Simultaneous Read and Write not possible
    
    reg [7:0] ram[63:0];
    reg [5:0] Address_reg;
    
    always @(posedge Clk)begin
        if(Write_en)
            ram[Address] <= Data;
        Address_reg <= Address;
    end
    
    assign Output = ram[Address_reg];
                        
endmodule
