`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2025 15:37:48
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
    
    reg Clk,Reset;
    wire [7:0]Count;
    
    Basic_Counter c0(.Clk(Clk), .Reset(Reset), .Count(Count));
    
    always #5 Clk = ~Clk;
    
    initial begin
        Clk = 0;
        Reset = 1;
        
        #10 Reset = 0;
        #20 Reset = 1;
        #100 $stop;
    end
        
endmodule
