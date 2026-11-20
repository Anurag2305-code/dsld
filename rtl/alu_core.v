// ============================================================
// alu_core.v
// Parameterized ALU, 8 operations selected by a one-hot/multi-hot
// enable bus coming from the ring counter.  Results are registered
// and gated by out_en, so the output is always a stable hardware
// value (never an 'undefined' state).
//
// op_en bit map (same as the base paper):
//   [0] AND   [1] OR    [2] XOR   [3] ADD
//   [4] SUB   [5] SHR   [6] SHL   [7] XNOR
// ============================================================
`timescale 1ns/1ps

module alu_core #(
    parameter W = 4
)(
    input  wire           clk,
    input  wire           rst_n,
    input  wire [W-1:0]   a,
    input  wire [W-1:0]   b,
    input  wire [7:0]     op_en,     // enables from the counter
    input  wire           out_en,    // global output enable
    output reg  [W:0]     result,    // W+1 bits: carry/borrow in [W]
    output reg  [7:0]     op_mask,   // which operations fired this cycle
    output reg            flag_carry,
    output reg            flag_zero,
    output reg            flag_overflow,
    output reg            flag_negative
);

    // ---------------------------------------------------------
    // All operations computed in parallel (that is the point of
    // the counter-driven scheme: no op-select mux tree in front
    // of the datapath).
    // ---------------------------------------------------------
    wire [W:0] r_and  = {1'b0, (a & b)};
    wire [W:0] r_or   = {1'b0, (a | b)};
    wire [W:0] r_xor  = {1'b0, (a ^ b)};
    wire [W:0] r_xnor = {1'b0, ~(a ^ b)};
    wire [W:0] r_add  = {1'b0, a} + {1'b0, b};
    wire [W:0] r_sub  = {1'b0, a} - {1'b0, b};
    wire [W:0] r_shr  = {1'b0, (a >> 1)};
    wire [W:0] r_shl  = {1'b0, (a << 1)};

    // ---------------------------------------------------------
    // Priority select: lowest index wins when several bits are high.
    // op_mask still reports every operation that was enabled.
    // ---------------------------------------------------------
    reg [2:0] sel;
    always @(*) begin
        if      (op_en[0]) sel = 3'd0;
        else if (op_en[1]) sel = 3'd1;
        else if (op_en[2]) sel = 3'd2;
        else if (op_en[3]) sel = 3'd3;
        else if (op_en[4]) sel = 3'd4;
        else if (op_en[5]) sel = 3'd5;
        else if (op_en[6]) sel = 3'd6;
        else if (op_en[7]) sel = 3'd7;
        else               sel = 3'd7; // no-op: XNOR of 0 is fine, masked by out_en
    end

    reg [W:0] res_n;
    reg       c_n, o_n, n_n;

    always @(*) begin
        res_n = {W+1{1'b0}};
        c_n   = 1'b0;
        o_n   = 1'b0;
        n_n   = 1'b0;
        case (sel)
            3'd0: res_n = r_and;
            3'd1: res_n = r_or;
            3'd2: res_n = r_xor;
            3'd3: begin
                res_n = r_add;
                c_n   = r_add[W];
                o_n   = (~(a[W-1] ^ b[W-1])) & (r_add[W-1] ^ a[W-1]);
            end
            3'd4: begin
                res_n = r_sub;
                c_n   = r_sub[W];          // borrow
                o_n   = (a[W-1] ^ b[W-1]) & (r_sub[W-1] ^ a[W-1]);
            end
            3'd5: res_n = r_shr;
            3'd6: res_n = r_shl;
            3'd7: res_n = r_xnor;
        endcase
        n_n = res_n[W-1];
    end

    // ---------------------------------------------------------
    // Registered output stage
    // ---------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            result        <= {W+1{1'b0}};
            op_mask       <= 8'h00;
            flag_carry    <= 1'b0;
            flag_zero     <= 1'b0;
            flag_overflow <= 1'b0;
            flag_negative <= 1'b0;
        end
        else if (out_en) begin
            result        <= res_n;
            op_mask       <= op_en;
            flag_carry    <= c_n;
            flag_overflow <= o_n;
            flag_negative <= n_n;
            flag_zero     <= (res_n == {W+1{1'b0}});
        end
    end

endmodule
