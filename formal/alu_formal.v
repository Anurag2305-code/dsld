// ============================================================
// alu_formal.v
// Formal harness for alu_core.  Inputs are universally quantified
// by the solver, so a passing proof covers every (a, b, op_en)
// combination, not just the values used in the simulation.
// ============================================================
module alu_formal (
    input wire clk
);

    reg         rst_n;
    reg  [3:0]  a, b;
    reg  [7:0]  op_en;
    reg         out_en;

    wire [4:0]  result;
    wire [7:0]  op_mask;
    wire        fcarry, fzero, fovf, fneg;

    initial rst_n = 1'b0;
    always @(posedge clk) rst_n <= 1'b1;

    alu_core #(.W(4)) dut (
        .clk(clk), .rst_n(rst_n),
        .a(a), .b(b), .op_en(op_en), .out_en(out_en),
        .result(result), .op_mask(op_mask),
        .flag_carry(fcarry), .flag_zero(fzero),
        .flag_overflow(fovf), .flag_negative(fneg)
    );

    // ---------------------------------------------------------
    // Previous-cycle inputs: registered outputs correspond to the
    // inputs sampled at the last rising edge.
    // ---------------------------------------------------------
    reg [3:0] pa, pb;
    reg [7:0] pop;
    reg       pout;
    reg       past;
    reg       prst;      // reset state during the sampled cycle

    initial begin past = 1'b0; pa = 4'b0; pb = 4'b0; pop = 8'b0; pout = 1'b0; prst = 1'b0; end

    always @(posedge clk) begin
        past <= 1'b1;
        pa   <= a;
        pb   <= b;
        pop  <= op_en;
        pout <= out_en;
        prst <= rst_n;
    end

    // ---------------------------------------------------------
    // Specification
    // ---------------------------------------------------------
    function [2:0] prio;
        input [7:0] op;
        begin
            if      (op[0]) prio = 3'd0;
            else if (op[1]) prio = 3'd1;
            else if (op[2]) prio = 3'd2;
            else if (op[3]) prio = 3'd3;
            else if (op[4]) prio = 3'd4;
            else if (op[5]) prio = 3'd5;
            else if (op[6]) prio = 3'd6;
            else            prio = 3'd7;
        end
    endfunction

    function [4:0] spec;
        input [7:0] op;
        input [3:0] aa;
        input [3:0] bb;
        begin
            case (prio(op))
                3'd0: spec = {1'b0, (aa & bb)};
                3'd1: spec = {1'b0, (aa | bb)};
                3'd2: spec = {1'b0, (aa ^ bb)};
                3'd3: spec = {1'b0, aa} + {1'b0, bb};
                3'd4: spec = {1'b0, aa} - {1'b0, bb};
                3'd5: spec = {1'b0, (aa >> 1)};
                3'd6: spec = {1'b0, (aa << 1)};
                default: spec = {1'b0, ~(aa ^ bb)};
            endcase
        end
    endfunction

    // ---------------------------------------------------------
    // Properties
    // ---------------------------------------------------------
    always @(posedge clk) begin
        if (past && prst && pout) begin
            assert(result == spec(pop, pa, pb));   // datapath equivalence
            assert(op_mask == pop);                // every enable is reported
            assert(fzero == (spec(pop, pa, pb) == 5'b0)); // zero flag
        end
    end

endmodule
