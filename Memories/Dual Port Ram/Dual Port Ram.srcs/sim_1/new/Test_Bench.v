`timescale 1ns / 1ps

module Test_Bench;


    reg [7:0] Data_a, Data_b;
    reg [5:0] Addr_a, Addr_b;
    reg Write_en_a, Write_en_b;
    reg Clk;
    wire [7:0] Output_a, Output_b;

    Modified_Version dut (
        .Data_a(Data_a),
        .Data_b(Data_b),
        .Addr_a(Addr_a),
        .Addr_b(Addr_b),
        .Write_en_a(Write_en_a),
        .Write_en_b(Write_en_b),
        .Clk(Clk),
        .Output_a(Output_a),
        .Output_b(Output_b)
    );

    always #5 Clk = ~Clk;

    initial begin
        Clk = 0;
        Data_a = 0; Data_b = 0;
        Addr_a = 0; Addr_b = 0;
        Write_en_a = 0; Write_en_b = 0;
        #10;

        Addr_a = 6'd5; Data_a = 8'hAA; Write_en_a = 1;
        #10; Write_en_a = 0;

        Addr_b = 6'd10; Data_b = 8'h55; Write_en_b = 1;
        #10; Write_en_b = 0;

        #10; Addr_a = 6'd5; Addr_b = 6'd10;

        #20;

        Addr_a = 6'd15; Data_a = 8'hF0; Write_en_a = 1;
        Addr_b = 6'd20; Data_b = 8'h0F; Write_en_b = 1;
        #10;
        Write_en_a = 0; Write_en_b = 0;

        #10; Addr_a = 6'd15; Addr_b = 6'd20;
        #20;

        $display("Read Data at Addr 5 (Port A): %h", Output_a);
        $display("Read Data at Addr 10 (Port B): %h", Output_b);
        $display("Read Data at Addr 15 (Port A): %h", Output_a);
        $display("Read Data at Addr 20 (Port B): %h", Output_b);

        $stop;
    end

endmodule
