`timescale 1ns / 1ps

// Sequence Detector is "10"

module Mealy(
    input Clk,
    input Reset,
    input In,
    output reg Out
    );

    // State encoding using parameters
    parameter S0 = 2'b00,
              S1 = 2'b01,
              S2 = 2'b10;

    reg [1:0] current_state, next_state;

    // State register
    always @(posedge Clk) begin
        if (Reset)
            current_state <= S0;
        else
            current_state <= next_state;
    end

    // Next-state and output logic (Mealy)
    always @(In,current_state) begin
        case (current_state)
            S0: begin
                if (In) begin
                    next_state = S1;
                    Out = 0;
                end else begin
                    next_state = S0;
                    Out = 0;
                end
            end

            S1: begin
                if (In) begin
                    next_state = S1;
                    Out = 0;
                end else begin
                    next_state = S2;
                    Out = 1;   // output triggered here
                end
            end

            S2: begin
                if (In) begin
                    next_state = S1;
                    Out = 0;
                end else begin
                    next_state = S0;
                    Out = 0;
                end
            end
        endcase
    end

endmodule
