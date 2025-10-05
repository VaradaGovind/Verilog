
`timescale 1ns / 1ps


module Machine(
    input clk,
    input rst,
    input [2:0] coin_in,   // One-hot: {25,10,5}
    input sel_valid,       // 1-cycle pulse when item selected
    input [1:0] sel,       // Selected item index
    output reg dispense,   // 1-cycle pulse (Mealy output)
    output reg [7:0] change,
    output reg [7:0] balance,
    output reg ready       // High when idle / accepting coins
);

parameter PRICE0 = 8'd35, PRICE1 = 8'd50, PRICE2 = 8'd65, PRICE3 = 8'd100;


// COIN DECODER
    wire [7:0] coin_value;
    coin_decoder dec(.coin_in(coin_in), .coin_value(coin_value));


// PRICE LOOKUP
    reg [7:0] price;
    always @(*) begin
        case (sel)
            2'b00: price = PRICE0;
            2'b01: price = PRICE1;
            2'b10: price = PRICE2;
            2'b11: price = PRICE3;
            default: price = 8'd0;
        endcase
    end


// NEXT BALANCE CALCULATION (avoid double-counting)

    reg [7:0] next_balance;
    always @(*) begin
        next_balance = balance;
        if (coin_value != 8'd0)
            next_balance = balance + coin_value;
    end


// MAIN SEQUENTIAL BLOCK

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            balance  <= 8'd0;
            change   <= 8'd0;
            dispense <= 1'b0;
            ready    <= 1'b1;
        end else begin
            // Default values
            dispense <= 1'b0;
            change   <= 8'd0;
            ready    <= 1'b1;
            balance  <= next_balance;

            // Selection event - Mealy behavior (immediate check)
            if (sel_valid) begin
                if (next_balance >= price) begin
                    // Enough balance -> dispense
                    dispense <= 1'b1;
                    change   <= next_balance - price;
                    balance  <= 8'd0;           // reset after transaction
                    ready    <= 1'b1;
                end else begin
                    // Not enough money
                    dispense <= 1'b0;
                    change   <= 8'd0;
                    ready    <= 1'b0;           // busy collecting more
                end
            end
        end
    end
endmodule


// SUPPORT MODULE: COIN DECODER

module coin_decoder(
    input [2:0] coin_in,   // {25, 10, 5}
    output reg [7:0] coin_value
);
    always @(*) begin
        case (coin_in)
            3'b001: coin_value = 8'd5;
            3'b010: coin_value = 8'd10;
            3'b100: coin_value = 8'd25;
            default: coin_value = 8'd0;
        endcase
    end
endmodule
