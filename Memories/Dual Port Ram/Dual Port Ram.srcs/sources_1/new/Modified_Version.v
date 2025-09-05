`timescale 1ns / 1ps

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
        
        //Better Version
        
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
