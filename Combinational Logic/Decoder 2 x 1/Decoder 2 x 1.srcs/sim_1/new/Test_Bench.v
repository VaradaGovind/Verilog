`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2025 15:51:04
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


module Test_Bench();

    reg [1:0] Input;
    reg En;
    wire [3:0] Y;

    Dataflow uut (
        .Input(Input),
        .En(En),
        .Y(Y)
    );

    initial begin

        $display("Time\tEn\tInput\tY");
        $monitor("%0dns\t%b\t%2b\t%4b", $time, En, Input, Y);

        En = 0; Input = 2'b00; #10;
        En = 1; Input = 2'b00; #10;
        En = 1; Input = 2'b01; #10;
        En = 1; Input = 2'b10; #10;
        En = 1; Input = 2'b11; #10;
        En = 0; Input = 2'b11; #10;

        $finish;
    end

endmodule
