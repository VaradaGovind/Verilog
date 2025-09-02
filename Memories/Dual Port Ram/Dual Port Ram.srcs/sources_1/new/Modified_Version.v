`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2025 20:21:11
// Design Name: 
// Module Name: Modified_Version
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


module Modified_Version(
    input [7:0]Data_a,
    input [7:0]Data_b,
    input [5:0]Addr_a,
    input [5:0]Addr_b,
    input Write_en_a,
    input Write_en_b,
    input Clk,
    output reg [7:0]Output_a,
    output reg [7:0]Output_b
    );
    
    reg [7:0] ram[63:0];
    
    always @(posedge Clk) begin
        // Port A
        if (Write_en_a)
            ram[Addr_a] <= Data_a;
        Output_a <= ram[Addr_a];

        // Port B
        if (Write_en_b)
            ram[Addr_b] <= Data_b;
        Output_b <= ram[Addr_b];
    end

endmodule
