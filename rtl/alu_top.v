// ============================================================
// alu_top.v - Top-level module for Silicluster v3 compatible ALU
// ============================================================
`timescale 1ns/1ps

module alu_top #(
    parameter W = 4,           // ALU data width (4 bits)
    parameter N = 8,           // Ring counter width (8 bits)
    parameter STATIC_PATTERN = 8'b1000_0001  // Static pattern (AND + XNOR)
) (
    input wire         clk,
    input wire         rst_n,
    input wire [W-1:0] a,
    input wire [W-1:0] b,
    input wire [1:0]   mode,
    input wire         halt,
    output wire [W:0]  result,
    output wire [7:0]  op_mask,
    output wire        zero
);

// Internal wires
wire [N-1:0] pattern;
wire         pattern_valid;
wire         pattern_recovered;

// Instantiate hybrid ring counter
hybrid_ring_counter #(.N(N)) u_counter (
    .clk(clk),
    .rst_n(rst_n),
    .mode(mode),
    .halt(halt),
    .load(1'b0),
    .seed(STATIC_PATTERN),
    .pattern(pattern),
    .valid(pattern_valid),
    .recovered(pattern_recovered)
);

// Instantiate ALU core
 alu_core #(.W(W)) u_alu (
    .clk(clk),
    .rst_n(rst_n),
    .a(a),
    .b(b),
    .op_en(pattern[7:0]),
    .out_en(pattern_valid && !halt),
    .result(result),
    .op_mask(op_mask),
    .flag_carry(),
    .flag_zero(zero),
    .flag_overflow(),
    .flag_negative()
);

endmodule
