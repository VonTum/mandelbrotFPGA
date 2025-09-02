`timescale 1ns / 1ps


// Simulation for:
// 
// module TapascoTop(
// 	input clk,
// 	input wire nreset,
// 	output /*mux_wire*/ logic intr,
// 	output /*mux_wire*/ logic ctrl_arready,
// 	input wire ctrl_arvalid,
// 	input wire[31:0] ctrl_araddr,
// 	input wire[2:0] ctrl_arprot,
// 	input wire ctrl_rready,
// 	output /*mux_wire*/ logic ctrl_rvalid,
// 	output /*mux_wire*/ logic[31:0] ctrl_rdata,
// 	output /*mux_wire*/ logic[1:0] ctrl_rresp,
// 	output /*mux_wire*/ logic ctrl_awready,
// 	input wire ctrl_awvalid,
// 	input wire[31:0] ctrl_awaddr,
// 	input wire[1:0] ctrl_awprot,
// 	output /*mux_wire*/ logic ctrl_wready,
// 	input wire ctrl_wvalid,
// 	input wire[31:0] ctrl_wdata,
// 	input wire[3:0] ctrl_wstrb,
// 	input wire ctrl_bready,
// 	output /*mux_wire*/ logic ctrl_bvalid,
// 	output /*mux_wire*/ logic[1:0] ctrl_bresp,
// 	input wire mem_awready,
// 	output /*mux_wire*/ logic mem_awvalid,
// 	output /*mux_wire*/ logic[31:0] mem_awaddr,
// 	output /*mux_wire*/ logic[7:0] mem_awlen,
// 	output /*mux_wire*/ logic[2:0] mem_awsize,
// 	output /*mux_wire*/ logic[1:0] mem_awburst,
// 	output /*mux_wire*/ logic mem_awlock,
// 	output /*mux_wire*/ logic[3:0] mem_awcache,
// 	output /*mux_wire*/ logic[2:0] mem_awprot,
// 	output /*mux_wire*/ logic[3:0] mem_awqos,
// 	output /*mux_wire*/ logic[3:0] mem_awregion,
// 	input wire mem_wready,
// 	output /*mux_wire*/ logic mem_wvalid,
// 	output /*mux_wire*/ logic[31:0] mem_wdata,
// 	output /*mux_wire*/ logic[3:0] mem_wstrb,
// 	output /*mux_wire*/ logic mem_wlast,
// 	output /*mux_wire*/ logic mem_bready,
// 	input wire mem_bvalid,
// 	input wire[1:0] mem_bresp
// );


module SimulateTapascoTop;

  // -----------------------
  // Parameters
  // -----------------------
  localparam WIDTH  = 16;
  localparam HEIGHT = 16;
  localparam MEM_WORDS = WIDTH * HEIGHT; // framebuffer size

  // -----------------------
  // Clock / Reset
  // -----------------------
  logic clk = 0;
  logic resetn = 0;
  always #5 clk = ~clk;

  // -----------------------
  // DUT port signals
  // -----------------------
  // Outputs
  logic intr;

  logic ctrl_arready;
  logic ctrl_rvalid;
  logic [31:0] ctrl_rdata;
  logic [1:0]  ctrl_rresp;
  logic ctrl_awready;
  logic ctrl_wready;
  logic ctrl_bvalid;
  logic [1:0] ctrl_bresp;

  logic        mem_awvalid;
  logic [31:0] mem_awaddr;
  logic [7:0]  mem_awlen;
  logic [2:0]  mem_awsize;
  logic [1:0]  mem_awburst;
  logic        mem_awlock;
  logic [3:0]  mem_awcache;
  logic [2:0]  mem_awprot;
  logic [3:0]  mem_awqos;
  logic [3:0]  mem_awregion;

  logic        mem_wvalid;
  logic [31:0] mem_wdata;
  logic [3:0]  mem_wstrb;
  logic        mem_wlast;

  logic        mem_bready;

  // Inputs
  logic        ctrl_arvalid;
  logic [31:0] ctrl_araddr;
  logic [2:0]  ctrl_arprot;
  logic        ctrl_rready;

  logic        ctrl_awvalid;
  logic [31:0] ctrl_awaddr;
  logic [1:0]  ctrl_awprot;
  logic        ctrl_wvalid;
  logic [31:0] ctrl_wdata;
  logic [3:0]  ctrl_wstrb;
  logic        ctrl_bready;

  logic        mem_awready;
  logic        mem_wready;
  logic        mem_bvalid;
  logic [1:0]  mem_bresp;

  // -----------------------
  // DUT instance
  // -----------------------
  TapascoTop dut (
    .clk(clk),
    .resetn(resetn),
    .intr(intr),

    // AXI-Lite
    .ctrl_arready(ctrl_arready),
    .ctrl_arvalid(ctrl_arvalid),
    .ctrl_araddr(ctrl_araddr),
    .ctrl_arprot(ctrl_arprot),
    .ctrl_rready(ctrl_rready),
    .ctrl_rvalid(ctrl_rvalid),
    .ctrl_rdata(ctrl_rdata),
    .ctrl_rresp(ctrl_rresp),
    .ctrl_awready(ctrl_awready),
    .ctrl_awvalid(ctrl_awvalid),
    .ctrl_awaddr(ctrl_awaddr),
    .ctrl_awprot(ctrl_awprot),
    .ctrl_wready(ctrl_wready),
    .ctrl_wvalid(ctrl_wvalid),
    .ctrl_wdata(ctrl_wdata),
    .ctrl_wstrb(ctrl_wstrb),
    .ctrl_bready(ctrl_bready),
    .ctrl_bvalid(ctrl_bvalid),
    .ctrl_bresp(ctrl_bresp),

    // AXI memory
    .mem_awready(mem_awready),
    .mem_awvalid(mem_awvalid),
    .mem_awaddr(mem_awaddr),
    .mem_awlen(mem_awlen),
    .mem_awsize(mem_awsize),
    .mem_awburst(mem_awburst),
    .mem_awlock(mem_awlock),
    .mem_awcache(mem_awcache),
    .mem_awprot(mem_awprot),
    .mem_awqos(mem_awqos),
    .mem_awregion(mem_awregion),

    .mem_wready(mem_wready),
    .mem_wvalid(mem_wvalid),
    .mem_wdata(mem_wdata),
    .mem_wstrb(mem_wstrb),
    .mem_wlast(mem_wlast),

    .mem_bready(mem_bready),
    .mem_bvalid(mem_bvalid),
    .mem_bresp(mem_bresp)
  );

  // -----------------------
  // AXI-Lite Master tasks
  // -----------------------
  task automatic axi_lite_write(input logic [31:0] addr, input logic [31:0] data);
  begin
    ctrl_awaddr  <= addr;
    ctrl_awprot  <= '0;
    ctrl_awvalid <= 1;

    ctrl_wdata   <= data;
    ctrl_wstrb   <= 4'hF;
    ctrl_wvalid  <= 1;

    fork
      begin
        do @(posedge clk); while (!ctrl_awready);
        ctrl_awvalid <= 0;
      end
      begin
        do @(posedge clk); while (!ctrl_wready);
        ctrl_wvalid <= 0;
      end
    join

    ctrl_bready <= 1;
    do @(posedge clk); while (!ctrl_bvalid);
    ctrl_bready <= 0;
  end
  endtask

  // -----------------------
  // AXI Memory Model (framebuffer WIDTH*HEIGHT)
  // -----------------------
  logic [31:0] mem_array [0:HEIGHT-1][0:WIDTH-1]; // 2D array for waveform visibility

  // burst state
  logic [31:0] aw_addr;
  int unsigned beats_left;
  logic aw_active;

  initial begin
    mem_awready = 1;
    mem_wready  = 1;
    mem_bvalid  = 0;
    mem_bresp   = 2'b00;

    aw_addr   = '0;
    beats_left = 0;
    aw_active = 0;

    for (int y = 0; y < HEIGHT; y++)
      for (int x = 0; x < WIDTH; x++)
        mem_array[y][x] = 'x;

    forever begin
      @(posedge clk);

      // Accept address and data together for simple (non-burst) writes
      if (mem_awready && mem_awvalid && mem_wready && mem_wvalid) begin
        automatic int unsigned word_idx = mem_awaddr[31:2]; // word address
        automatic int y = word_idx / WIDTH;
        automatic int x = word_idx % WIDTH;
        if (y < HEIGHT && x < WIDTH) begin
          mem_array[y][x] <= mem_wdata;
        end
        mem_bvalid <= 1;
        aw_addr <= mem_awaddr; // for debug, not used
      end

      if (mem_bvalid && mem_bready) begin
        mem_bvalid <= 0;
      end
    end
  end

  // -----------------------
  // Test sequence
  // -----------------------
  initial begin
    // init control inputs
    ctrl_arvalid = 0;
    ctrl_araddr  = '0;
    ctrl_arprot  = '0;
    ctrl_rready  = 0;
    ctrl_awvalid = 0;
    ctrl_awaddr  = '0;
    ctrl_awprot  = '0;
    ctrl_wvalid  = 0;
    ctrl_wdata   = '0;
    ctrl_wstrb   = 4'h0;
    ctrl_bready  = 0;

    // Reset pulse
    resetn = 0;
    repeat (100) @(posedge clk);
    resetn = 1;

    // Program registers (16B aligned)
    axi_lite_write(32'h0000_0020, 32'h0000_0000); // ORIGIN_R
    axi_lite_write(32'h0000_0030, 32'h0000_0000); // ORIGIN_I
    //axi_lite_write(32'h0000_0040, 32'h3d80_0000); // SCALE = 0.0625
    axi_lite_write(32'h0000_0040, 32'h3e80_0000); // SCALE = 0.25
    //axi_lite_write(32'h0000_0040, 32'h3f80_0000); // SCALE = 1.0
    axi_lite_write(32'h0000_0000, 32'h0000_0001); // START

    // Let it run
    do @(posedge clk); while (!intr);
    repeat (10) @(posedge clk);

    // -------------------
    // Display framebuffer
    // -------------------
    $display("=== Framebuffer %0dx%0d ===", WIDTH, HEIGHT);
    for (int y = 0; y < HEIGHT; y++) begin
      $write("%03d: ", y);
      for (int x = 0; x < WIDTH; x++) begin
        $write("%02x ", mem_array[y][x][7:0]); // print low 8 bits as "pixel"
      end
      $write("\n");
    end

    $finish;
  end

  // Optional waveform dump
  initial begin
    $dumpfile("tapasco_top_tb.vcd");
    $dumpvars(0, SimulateTapascoTop);
  end

endmodule
