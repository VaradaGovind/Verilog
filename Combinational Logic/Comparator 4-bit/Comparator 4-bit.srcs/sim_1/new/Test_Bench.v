`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2025 19:45:43
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

    reg [3:0] A, B;
    wire Eq, Gt, Sm;

    Dataflow uut (
        .A(A),
        .B(B),
        .Eq(Eq),
        .Gt(Gt),
        .Sm(Sm)
    );

    initial begin
        $display("Time\tA\tB\tEq\tGt\tSm");
        $monitor("%0dns\t%b\t%b\t%b\t%b\t%b", $time, A, B, Eq, Gt, Sm);

        A = 4'b0000; B = 4'b0000; #10;
        A = 4'b0101; B = 4'b0011; #10;
        A = 4'b0010; B = 4'b1010; #10;
        A = 4'b1111; B = 4'b1111; #10;
        A = 4'b0001; B = 4'b0000; #10;
        A = 4'b0000; B = 4'b0001; #10;

        $finish;
    end

endmodule