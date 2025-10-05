`timescale 1ns / 1ps

//Sequence Detector for "101"
//Overlapping Supported

module Moore(
    input Clk,
    input Reset,
    input In,
    output reg Out
);

    // State encoding
    parameter S0 = 2'b00,
              S1 = 2'b01,
              S2 = 2'b10,
              S3 = 2'b11;

    reg [1:0] current_state, next_state;

    // State register
    always @(posedge Clk or posedge Reset) begin
        if (Reset)
            current_state <= S0;
        else
            current_state <= next_state;
    end

    // Next-state logic
    always @(*) begin
        case (current_state)
            S0: begin
                if (In)
                    next_state = S1;
                else
                    next_state = S0;
            end

            S1: begin
                if (In)
                    next_state = S1;
                else
                    next_state = S2;
            end

            S2: begin
                if (In)
                    next_state = S3;
                else
                    next_state = S0;
            end

            S3: begin
                if (In)
                    next_state = S1;   // Overlapping detection (last 1)
                else
                    next_state = S2;   // Got '10' again
            end

            default: next_state = S0;
        endcase
    end

    // Output logic (depends on current state)
    always @(*) begin
        case (current_state)
            S3: Out = 1;
            default: Out = 0;
        endcase
    end

endmodule

