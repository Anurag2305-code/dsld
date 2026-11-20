// ============================================================
// hybrid_ring_counter.v
// Parameterized hybrid ring counter:
//   mode 00 : straight (one-hot) ring  -> N patterns
//   mode 01 : twisted  (Johnson) ring  -> 2N patterns
//   mode 10 : static   (pattern held)  -> any pattern, for
//             simultaneous multi-operation tests
// Includes illegal-state detection and automatic recovery.
// ============================================================
`timescale 1ns/1ps

module hybrid_ring_counter #(
    parameter N = 8
)(
    input  wire         clk,
    input  wire         rst_n,
    input  wire [1:0]   mode,
    input  wire         halt,      // 1 = freeze the pattern
    input  wire         load,      // 1 = load seed (if state legal)
    input  wire [N-1:0] seed,
    output reg  [N-1:0] pattern,
    output wire         valid,     // current pattern is a legal state
    output reg          recovered  // 1-cycle pulse: recovery happened
);

    localparam [N-1:0] STRAIGHT_SEED = {{(N-1){1'b0}}, 1'b1}; // 00..01
    localparam [N-1:0] TWISTED_SEED  = {1'b0, {(N-1){1'b1}}}; // 01..11

    // ---------------------------------------------------------
    // Population count (used by both validity checks)
    // ---------------------------------------------------------
    function integer popcount;
        input [N-1:0] v;
        integer i;
        begin
            popcount = 0;
            for (i = 0; i < N; i = i + 1)
                popcount = popcount + v[i];
        end
    endfunction

    wire [N-1:0] rotl  = {pattern[N-2:0], pattern[N-1]};
    wire [N-1:0] trans = pattern ^ rotl;

    // Straight ring: exactly one '1' (one-hot).
    wire straight_ok = (popcount(pattern) == 1);

    // Twisted ring (Johnson), right shift with inverted-LSB feedback
    //   next = {~pattern[0], pattern[N-1:1]}
    // The 2N states reachable that way are exactly
    //   0, 1, 3, 7, ... (2^k - 1)      and
    //   2^N - 1, 2^N - 2, ... (2^N - 2^k)
    // i.e. a single contiguous block of ones aligned to either end.
    // Checked with the standard power-of-two tricks:
    //   pattern + 1 is a power of two, or its two's complement is.
    wire [N-1:0] p_plus_one = pattern + {{(N-1){1'b0}}, 1'b1};
    wire [N-1:0] neg_pattern = (~pattern) + {{(N-1){1'b0}}, 1'b1};

    wire twisted_ok = ((pattern & p_plus_one) == {N{1'b0}}) ||
                      ((neg_pattern & (neg_pattern - {{(N-1){1'b0}}, 1'b1})) == {N{1'b0}});

    assign valid = (mode == 2'b00) ? straight_ok :
                   (mode == 2'b01) ? twisted_ok  : 1'b1;

    // ---------------------------------------------------------
    // Next-state logic
    // ---------------------------------------------------------
    reg [N-1:0] next_pattern;
    reg         do_recover;

    always @(*) begin
        next_pattern = pattern;
        do_recover   = 1'b0;

        if (!valid) begin
            next_pattern = (mode == 2'b01) ? TWISTED_SEED : STRAIGHT_SEED;
            do_recover   = 1'b1;
        end
        else if (load) begin
            next_pattern = seed;
        end
        else if (!halt) begin
            case (mode)
                2'b00   : next_pattern = rotl;                        // one-hot rotates
                2'b01   : next_pattern = {~pattern[0], pattern[N-1:1]}; // Johnson shift
                default : next_pattern = seed;                         // static: force seed pattern
            endcase
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pattern   <= STRAIGHT_SEED;
            recovered <= 1'b0;
        end
        else begin
            pattern   <= next_pattern;
            recovered <= do_recover;
        end
    end

endmodule
