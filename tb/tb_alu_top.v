// ============================================================
// tb_alu_top.v
// Self-checking testbench. No free-running waits: every check is
// driven by the clock, so a failure can never hang the simulation.
// ============================================================
`timescale 1ns/1ps

module tb_alu_top;

    localparam W = 4;
    localparam N = 8;

    reg         clk;
    reg         rst_n;
    reg  [3:0]  a, b;
    reg  [1:0]  mode;
    reg         halt;

    wire [4:0]  result;
    wire [7:0]  op_mask;
    wire        zero;

    integer errors;
    integer checks;
    integer i;
    reg [7:0] pat_prev;

    // ---------------------------------------------------------
    // VCD dump
    // ---------------------------------------------------------
    initial begin
        $dumpfile("tb_alu_top.vcd");
        $dumpvars(0, tb_alu_top);
    end

    // ---------------------------------------------------------
    // DUT
    // ---------------------------------------------------------
    alu_top #(.W(W), .N(N)) dut (
        .clk(clk), .rst_n(rst_n),
        .a(a), .b(b), .mode(mode), .halt(halt),
        .result(result), .op_mask(op_mask), .zero(zero)
    );

    // ---------------------------------------------------------
    // Clock
    // ---------------------------------------------------------
    initial clk = 1'b0;
    always #5 clk = ~clk;

    // ---------------------------------------------------------
    // Reference model
    // ---------------------------------------------------------
    function [4:0] exp_result;
        input [2:0] op;
        input [3:0] aa, bb;
        begin
            case (op)
                3'd0: exp_result = {1'b0, (aa & bb)};
                3'd1: exp_result = {1'b0, (aa | bb)};
                3'd2: exp_result = {1'b0, (aa ^ bb)};
                3'd3: exp_result = {1'b0, aa} + {1'b0, bb};
                3'd4: exp_result = {1'b0, aa} - {1'b0, bb};
                3'd5: exp_result = {1'b0, (aa >> 1)};
                3'd6: exp_result = {1'b0, (aa << 1)};
                default: exp_result = {1'b0, ~(aa ^ bb)};
            endcase
        end
    endfunction

    function [2:0] op_index;      // one-hot -> index
        input [7:0] p;
        begin
            case (p)
                8'b00000001: op_index = 3'd0;
                8'b00000010: op_index = 3'd1;
                8'b00000100: op_index = 3'd2;
                8'b00001000: op_index = 3'd3;
                8'b00010000: op_index = 3'd4;
                8'b00100000: op_index = 3'd5;
                8'b01000000: op_index = 3'd6;
                8'b10000000: op_index = 3'd7;
                default:     op_index = 3'd0;
            endcase
        end
    endfunction

    function integer popcount8;
        input [7:0] v;
        integer k;
        begin
            popcount8 = 0;
            for (k = 0; k < 8; k = k + 1) popcount8 = popcount8 + v[k];
        end
    endfunction

    task check;
        input [8*24-1:0] name;
        input [4:0] exp_res;
        input [7:0] exp_mask;
        begin
            checks = checks + 1;
            if (result !== exp_res || op_mask !== exp_mask) begin
                errors = errors + 1;
                $display("[FAIL] %0s: result=%b (exp %b) op_mask=%b (exp %b) a=%b b=%b",
                         name, result, exp_res, op_mask, exp_mask, a, b);
            end
        end
    endtask

    // Let the registered output stage catch up with the current
    // counter pattern (one edge for the pattern, one for the ALU).
    task settle;
        begin
            @(posedge clk);
            @(posedge clk);
            #1;
        end
    endtask

    // ---------------------------------------------------------
    // Stimulus
    // ---------------------------------------------------------
    initial begin
        errors = 0; checks = 0;
        rst_n  = 1'b0;
        mode   = 2'b00;
        halt   = 1'b0;
        a      = 4'b1011;   // 11
        b      = 4'b0011;   // 3
        pat_prev = 8'b0;
        #22;
        rst_n = 1'b1;
        #2;

        // ============ Test 1: straight ring, all 8 ops ============
        $display("--- Test 1: straight ring, 8 operations ---");
        mode = 2'b00;
        pat_prev = dut.pattern;
        for (i = 0; i < 16; i = i + 1) begin
            @(posedge clk); #1;
            checks = checks + 1;
            if (popcount8(pat_prev) !== 1) begin
                errors = errors + 1;
                $display("[FAIL] straight mode pattern not one-hot: %b", pat_prev);
            end
            else if (result !== exp_result(op_index(pat_prev), a, b) ||
                     op_mask !== pat_prev) begin
                errors = errors + 1;
                $display("[FAIL] op %0d: result=%b exp=%b mask=%b",
                         op_index(pat_prev), result,
                         exp_result(op_index(pat_prev), a, b), op_mask);
            end
            pat_prev = dut.pattern;
        end
        $display("    straight ring: %0d checks", checks);

        // ============ Test 2: twisted ring (Johnson) ============
        $display("--- Test 2: twisted ring, legal states only ---");
        rst_n = 1'b0; #10; rst_n = 1'b1; #2;
        mode = 2'b01;
        for (i = 0; i < 24; i = i + 1) begin
            @(posedge clk); #1;
            checks = checks + 1;
            if (popcount8(dut.pattern ^ {dut.pattern[6:0], dut.pattern[7]}) > 2) begin
                errors = errors + 1;
                $display("[FAIL] twisted state has %0d transitions: %b",
                         popcount8(dut.pattern ^ {dut.pattern[6:0], dut.pattern[7]}), dut.pattern);
            end
        end
        $display("    twisted ring: %0d checks", checks);

        // ============ Test 3: static pattern, multi-op ============
        $display("--- Test 3: static pattern 1000_0001 (AND + XNOR) ---");
        rst_n = 1'b0; #10; rst_n = 1'b1; #2;
        mode = 2'b10;
        settle;
        check("static multi-op", {1'b0, (a & b)}, 8'b1000_0001);

        // ============ Test 4: halt freezes pattern ============
        $display("--- Test 4: halt freezes pattern ---");
        mode = 2'b00; halt = 1'b1;
        @(posedge clk); #1;
        pat_prev = dut.pattern;
        repeat (3) @(posedge clk);
        #1;
        checks = checks + 1;
        if (dut.pattern !== pat_prev) begin
            errors = errors + 1;
            $display("[FAIL] halt did not freeze: %b -> %b", pat_prev, dut.pattern);
        end
        halt = 1'b0;

        // ============ Test 5: illegal state recovery ============
        $display("--- Test 5: illegal state recovery ---");
        mode = 2'b00;
        @(posedge clk);
        force dut.u_counter.pattern = 8'b0000_0000;
        @(posedge clk); #1;
        checks = checks + 1;
        if (dut.u_counter.recovered !== 1'b1) begin
            errors = errors + 1;
            $display("[FAIL] no recovery pulse on illegal state");
        end
        release dut.u_counter.pattern;
        @(posedge clk); #1;
        checks = checks + 1;
        if (popcount8(dut.pattern) !== 1) begin
            errors = errors + 1;
            $display("[FAIL] did not recover to a legal state: %b", dut.pattern);
        end

        // ============ Test 6: carry and borrow ============
        $display("--- Test 6: carry / borrow flags ---");
        mode = 2'b10;   // static
        force dut.u_counter.pattern = 8'b0000_1000;   // ADD only
        a = 4'b1111; b = 4'b0001;
        settle;
        check("ADD carry", 5'b1_0000, 8'b0000_1000);
        checks = checks + 1;
        if (zero !== 1'b0) begin errors = errors + 1; $display("[FAIL] zero not cleared"); end
        release dut.u_counter.pattern;

        force dut.u_counter.pattern = 8'b0001_0000;   // SUB only
        a = 4'b0011; b = 4'b1011;
        settle;
        check("SUB borrow", 5'b1_1000, 8'b0001_0000);
        release dut.u_counter.pattern;

        // ============ Summary ============
        $display("\n==============================");
        $display(" CHECKS = %0d   ERRORS = %0d", checks, errors);
        if (errors == 0) $display(" RESULT: ALL TESTS PASSED");
        else             $display(" RESULT: %0d FAILURES", errors);
        $display("==============================\n");
        $finish;
    end

endmodule
