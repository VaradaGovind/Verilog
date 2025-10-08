`timescale 1ns / 1ps

module Controller (
    input wire clk,
    input wire rst,          // Active-high reset
    input wire Sa,           // Sensor on Road A
    input wire Sb,           // Sensor on Road B
    input wire emergency_A,  // Emergency vehicle on Road A
    input wire emergency_B,  // Emergency vehicle on Road B
    output reg Ra, Rb,       // Red lights
    output reg Ya, Yb,       // Yellow lights
    output reg Ga, Gb        // Green lights
);

    // State encoding
    parameter S_A_GREEN  = 4'd0;
    parameter S_A_YELLOW = 4'd1;
    parameter S_B_GREEN  = 4'd2;
    parameter S_B_YELLOW = 4'd3;
    parameter S_EMERG_A  = 4'd4;
    parameter S_EMERG_B  = 4'd5;

    reg [3:0] state, next_state;

    // State update
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S_A_GREEN;
        else
            state <= next_state;
    end

    // Next-state and Outputs)
    always @(*) begin
        // Default outputs (all red)
        Ra = 1; Rb = 1;
        Ya = 0; Yb = 0;
        Ga = 0; Gb = 0;
        next_state = state;

        case (state)
            // ---------- NORMAL MODE ----------
            S_A_GREEN: begin
                Ga = 1; Rb = 1;
                if (emergency_A)
                    next_state = S_EMERG_A;
                else if (emergency_B)
                    next_state = S_EMERG_B;
                else if (Sb)
                    next_state = S_A_YELLOW;
            end

            S_A_YELLOW: begin
                Ya = 1; Rb = 1;
                next_state = S_B_GREEN;
            end

            S_B_GREEN: begin
                Gb = 1; Ra = 1;
                if (emergency_B)
                    next_state = S_EMERG_B;
                else if (emergency_A)
                    next_state = S_EMERG_A;
                else if (Sa)
                    next_state = S_B_YELLOW;
            end

            S_B_YELLOW: begin
                Yb = 1; Ra = 1;
                next_state = S_A_GREEN;
            end

            // ---------- EMERGENCY MODE ----------
            S_EMERG_A: begin
                Ga = 1; Rb = 1;
                if (!emergency_A)
                    next_state = S_A_YELLOW;  // resume normal
            end

            S_EMERG_B: begin
                Gb = 1; Ra = 1;
                if (!emergency_B)
                    next_state = S_B_YELLOW;  // resume normal
            end

            default: next_state = S_A_GREEN;
        endcase
    end
endmodule