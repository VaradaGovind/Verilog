`timescale 1ns / 1ps

module Version1(
    input [7:0]Data,
    input [5:0]Read_addr,
    input [5:0]Write_addr,
    input Write_en,
    input Clk,
    output reg [7:0]Output
    );
    
    reg [7:0] ram[63:0];

    //Only One Write / One Read / One Write and Read is possible
    
    always @(posedge Clk) begin
        if (Write_en)
            ram[Write_addr] <= Data;
        if (Write_en && (Read_addr == Write_addr))
            Output <= Data;   // Write-through
        else
            Output <= ram[Read_addr];
    end
                     
endmodule
