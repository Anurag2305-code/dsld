`ifndef VERILATOR
module testbench;
  reg [4095:0] vcdfile;
  reg clock;
`else
module testbench(input clock, output reg genclock);
  initial genclock = 1;
`endif
  reg genclock = 1;
  reg [31:0] cycle = 0;
  wire [0:0] PI_clk = clock;
  counter_formal UUT (
    .clk(PI_clk)
  );
`ifndef VERILATOR
  initial begin
    if ($value$plusargs("vcd=%s", vcdfile)) begin
      $dumpfile(vcdfile);
      $dumpvars(0, testbench);
    end
    #5 clock = 0;
    while (genclock) begin
      #5 clock = 0;
      #5 clock = 1;
    end
  end
`endif
  initial begin
`ifndef VERILATOR
    #1;
`endif
    // UUT.$auto$async2sync.\cc:107:execute$256  = 1'b0;
    // UUT.$auto$async2sync.\cc:107:execute$262  = 1'b0;
    // UUT.$auto$async2sync.\cc:107:execute$268  = 1'b0;
    // UUT.$auto$async2sync.\cc:107:execute$274  = 1'b0;
    // UUT.$auto$async2sync.\cc:107:execute$280  = 1'b0;
    // UUT.$auto$async2sync.\cc:107:execute$286  = 1'b0;
    // UUT.$auto$async2sync.\cc:116:execute$266  = 1'b1;
    // UUT.$auto$async2sync.\cc:116:execute$272  = 1'b1;
    // UUT.$auto$async2sync.\cc:116:execute$278  = 1'b1;
    // UUT.$auto$async2sync.\cc:116:execute$284  = 1'b1;
    // UUT.$auto$async2sync.\cc:116:execute$290  = 1'b1;
    UUT.dut._witness_.anyinit_procdff_205 = 8'b01000000;
    UUT.dut._witness_.anyinit_procdff_210 = 1'b0;
    UUT.past = 1'b0;
    UUT.prev_mode = 2'b00;
    UUT.prev_pattern = 8'b00000000;
    UUT.prev_valid = 1'b1;

    // state 0
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
    end

    // state 2
    if (cycle == 1) begin
    end

    genclock <= cycle < 2;
    cycle <= cycle + 1;
  end
endmodule
