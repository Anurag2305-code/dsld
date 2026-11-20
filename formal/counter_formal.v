// ============================================================
// counter_formal.v
// Safety proof for the ring counter, one mode per proof task.
//
// Invariants (all inductive):
//   I1  a legal state moves to a legal state
//   I2  an illegal state is corrected on the next edge (recovered
//       pulse plus the mode-specific seed)
//   I3  straight mode: the pattern rotates by one position
//   I4  twisted mode: the pattern is a Johnson shift
//   I5  halt holds the pattern
// ============================================================
module counter_formal (
    input wire clk
);

    parameter [1:0] MODE = 2'b00;

    reg         rst_n;
    reg         halt;
    wire [7:0]  pattern;
    wire        valid;
    wire        recovered;

    initial rst_n = 1'b1;   // no reset: the starting pattern is free

    hybrid_ring_counter #(.N(8)) dut (
        .clk(clk), .rst_n(rst_n), .mode(MODE), .halt(halt),
        .load(1'b0), .seed(8'b0),
        .pattern(pattern), .valid(valid), .recovered(recovered)
    );

    reg        past;
    reg        prev_valid;
    reg        prev_halt;
    reg [7:0]  prev_pattern;

    initial begin
        past = 1'b0;
        prev_valid = 1'b1;
        prev_halt = 1'b0;
        prev_pattern = 8'b0;
    end

    always @(posedge clk) begin
        past         <= 1'b1;
        prev_valid   <= valid;
        prev_halt    <= halt;
        prev_pattern <= pattern;
    end

    localparam [7:0] SEED = (MODE == 2'b01) ? 8'b01111111 : 8'b00000001;

    always @(posedge clk) begin
        if (past) begin
            if (prev_valid) begin
                // I1: legality is preserved
                assert(valid);
                if (prev_halt) begin
                    // I5
                    assert(pattern == prev_pattern);
                end
                else if (MODE == 2'b00) begin
                    // I3
                    assert(pattern == {prev_pattern[6:0], prev_pattern[7]});
                end
                else if (MODE == 2'b01) begin
                    // I4
                    assert(pattern == {~prev_pattern[0], prev_pattern[7:1]});
                end
            end
            else begin
                // I2: illegal state is repaired immediately
                assert(recovered);
                assert(pattern == SEED);
                assert(valid);
            end
        end
    end

endmodule
