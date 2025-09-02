`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2025 16:47:26
// Design Name: 
// Module Name: Test_Bench
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


module Test_Bench;

    reg [1:0] Inputs;
    reg Select;
    wire Output;

    Multiplexer_2_1 uut (
        .Inputs(Inputs),
        .Select(Select),
        .Output(Output)
    );
    
 initial begin

        Inputs = 2'b00; Select = 0; #10;
        
        Inputs = 2'b01; Select = 0; #10;
        
        Inputs = 2'b00; Select = 1; #10;
        
        Inputs = 2'b01; Select = 1; #10;

        $finish;
    end

endmodule
