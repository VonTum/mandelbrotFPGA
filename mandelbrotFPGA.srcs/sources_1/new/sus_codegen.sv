// THIS IS A GENERATED FILE (Generated at 2025-09-03T00:10:48+02:00)
// This file was generated with SUS Compiler 0.3.0-devel (4d40f854f9007df6cce3e0356ac6348d732d7e3a) built at 2025-09-02T16:37:46+02:00
// TapascoTop #()
module TapascoTop(
	input clk,
	input wire resetn,
	output /*mux_wire*/ logic intr,
	output /*mux_wire*/ logic ctrl_arready,
	input wire ctrl_arvalid,
	input wire[31:0] ctrl_araddr,
	input wire[2:0] ctrl_arprot,
	input wire ctrl_rready,
	output /*mux_wire*/ logic ctrl_rvalid,
	output /*mux_wire*/ logic[31:0] ctrl_rdata,
	output /*mux_wire*/ logic[1:0] ctrl_rresp,
	output /*mux_wire*/ logic ctrl_awready,
	input wire ctrl_awvalid,
	input wire[31:0] ctrl_awaddr,
	input wire[1:0] ctrl_awprot,
	output /*mux_wire*/ logic ctrl_wready,
	input wire ctrl_wvalid,
	input wire[31:0] ctrl_wdata,
	input wire[3:0] ctrl_wstrb,
	input wire ctrl_bready,
	output /*mux_wire*/ logic ctrl_bvalid,
	output /*mux_wire*/ logic[1:0] ctrl_bresp,
	input wire mem_awready,
	output /*mux_wire*/ logic mem_awvalid,
	output /*mux_wire*/ logic[31:0] mem_awaddr,
	output /*mux_wire*/ logic[7:0] mem_awlen,
	output /*mux_wire*/ logic[2:0] mem_awsize,
	output /*mux_wire*/ logic[1:0] mem_awburst,
	output /*mux_wire*/ logic mem_awlock,
	output /*mux_wire*/ logic[3:0] mem_awcache,
	output /*mux_wire*/ logic[2:0] mem_awprot,
	output /*mux_wire*/ logic[3:0] mem_awqos,
	output /*mux_wire*/ logic[3:0] mem_awregion,
	input wire mem_wready,
	output /*mux_wire*/ logic mem_wvalid,
	output /*mux_wire*/ logic[31:0] mem_wdata,
	output /*mux_wire*/ logic[3:0] mem_wstrb,
	output /*mux_wire*/ logic mem_wlast,
	output /*mux_wire*/ logic mem_bready,
	input wire mem_bvalid,
	input wire[1:0] mem_bresp
);

genvar _g0;
wire _2;
assign _2 = !resetn;
/*mux_wire*/ logic _acc_rst;
/*state*/ logic[7:0] total_pixels_seen;
wire _slave_arready;
/*mux_wire*/ logic _slave_arvalid;
/*mux_wire*/ logic[31:0] _slave_araddr;
/*mux_wire*/ logic[2:0] _slave_arprot;
/*mux_wire*/ logic _slave_rready;
wire _slave_rvalid;
wire[31:0] _slave_rdata;
wire[1:0] _slave_rresp;
wire _slave_awready;
/*mux_wire*/ logic _slave_awvalid;
/*mux_wire*/ logic[31:0] _slave_awaddr;
/*mux_wire*/ logic[1:0] _slave_awprot;
wire _slave_wready;
/*mux_wire*/ logic _slave_wvalid;
/*mux_wire*/ logic[31:0] _slave_wdata;
/*mux_wire*/ logic[3:0] _slave_wstrb;
/*mux_wire*/ logic _slave_bready;
wire _slave_bvalid;
wire[1:0] _slave_bresp;
/*state*/ logic[31:0] register0;
/*state*/ logic[31:0] register1;
/*state*/ logic[31:0] register2;
/*mux_wire*/ logic _mem_awready;
wire _mem_awvalid;
wire[31:0] _mem_awaddr;
wire[7:0] _mem_awlen;
wire[2:0] _mem_awsize;
wire[1:0] _mem_awburst;
wire _mem_awlock;
wire[3:0] _mem_awcache;
wire[2:0] _mem_awprot;
wire[3:0] _mem_awqos;
wire[3:0] _mem_awregion;
/*mux_wire*/ logic _mem_wready;
wire _mem_wvalid;
wire[31:0] _mem_wdata;
wire[3:0] _mem_wstrb;
wire _mem_wlast;
wire _mem_bready;
/*mux_wire*/ logic _mem_bvalid;
/*mux_wire*/ logic[1:0] _mem_bresp;
/*state*/ logic[31:0] return_value;
/*state*/ logic return_valid = 1'b0;
wire _45;
assign _45 = !resetn;
wire _48;
assign _48 = !return_valid;
/*mux_wire*/ logic _slave_read_request;
/*mux_wire*/ logic _slave_read_response;
/*mux_wire*/ logic[31:0] _slave__data;
wire _slave_read_response_fire;
wire _slave_read_request_fire;
wire[31:0] _slave_addr;
/*mux_wire*/ logic[31:0] _addr;
wire _58;
assign _58 = _addr == 1'd0;
/*mux_wire*/ logic _Repeat_v;
wire[31:0] _Repeat_result;
wire _62;
assign _62 = _addr == 5'd16;
/*mux_wire*/ logic _Repeat_2_v;
wire[31:0] _Repeat_2_result;
wire _66;
assign _66 = _addr == 6'd32;
wire _70;
assign _70 = _addr == 6'd48;
/*state*/ logic[31:0] write_addr;
/*state*/ logic write_addr_valid;
/*state*/ logic write_resp_valid;
wire _75;
assign _75 = !resetn;
/*mux_wire*/ logic _slave_write_addr_request;
wire _slave_write_addr_request_fire;
wire[31:0] _slave_wr_addr;
/*mux_wire*/ logic[31:0] _addr_2;
wire _84;
assign _84 = !write_resp_valid;
wire _85;
assign _85 = write_addr_valid & _84;
/*mux_wire*/ logic _slave_write_data_request;
wire _slave_write_data_request_fire;
wire[31:0] _slave_data;
wire[3:0] _slave_strb;
/*mux_wire*/ logic[31:0] _data;
/*mux_wire*/ logic[3:0] _strb;
wire _90;
assign _90 = write_addr == 1'd0;
wire _91 = _data[0];
/*mux_wire*/ logic _acc_start;
/*mux_wire*/ logic[31:0] tmp;
wire _98;
assign _98 = write_addr == 6'd48;
wire _102;
assign _102 = write_addr == 7'd64;
wire _104 = _strb[0];
wire[7:0] _105;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _105[_g0] = _data[_g0];
end
endgenerate
wire _106 = _strb[1];
wire[7:0] _107;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _107[_g0] = _data[8 + _g0];
end
endgenerate
wire _108 = _strb[2];
wire[7:0] _109;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _109[_g0] = _data[16 + _g0];
end
endgenerate
wire _110 = _strb[3];
wire[7:0] _111;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _111[_g0] = _data[24 + _g0];
end
endgenerate
wire _114;
assign _114 = write_addr == 6'd32;
wire _118;
assign _118 = write_addr == 6'd48;
wire _122;
assign _122 = write_addr == 7'd64;
/*mux_wire*/ logic _slave_write_response;
wire _slave_write_response_fire;
/*mux_wire*/ logic[31:0] _transmute_from_bits_bits;
wire[31:0] _transmute_from_bits_value;
/*latency*/ logic[31:0] __transmute_from_bits_value_D1; always_ff @(posedge clk) begin __transmute_from_bits_value_D1 <= _transmute_from_bits_value; end
/*latency*/ logic[31:0] __transmute_from_bits_value_D2; always_ff @(posedge clk) begin __transmute_from_bits_value_D2 <= __transmute_from_bits_value_D1; end
/*latency*/ logic[31:0] __transmute_from_bits_value_D3; always_ff @(posedge clk) begin __transmute_from_bits_value_D3 <= __transmute_from_bits_value_D2; end
/*latency*/ logic[31:0] __transmute_from_bits_value_D4; always_ff @(posedge clk) begin __transmute_from_bits_value_D4 <= __transmute_from_bits_value_D3; end
/*latency*/ logic[31:0] __transmute_from_bits_value_D5; always_ff @(posedge clk) begin __transmute_from_bits_value_D5 <= __transmute_from_bits_value_D4; end
/*latency*/ logic[31:0] __transmute_from_bits_value_D6; always_ff @(posedge clk) begin __transmute_from_bits_value_D6 <= __transmute_from_bits_value_D5; end
/*mux_wire*/ logic[31:0] _acc_origin_r_st;
/*mux_wire*/ logic[31:0] _transmute_from_bits_2_bits;
wire[31:0] _transmute_from_bits_2_value;
/*latency*/ logic[31:0] __transmute_from_bits_2_value_D1; always_ff @(posedge clk) begin __transmute_from_bits_2_value_D1 <= _transmute_from_bits_2_value; end
/*latency*/ logic[31:0] __transmute_from_bits_2_value_D2; always_ff @(posedge clk) begin __transmute_from_bits_2_value_D2 <= __transmute_from_bits_2_value_D1; end
/*latency*/ logic[31:0] __transmute_from_bits_2_value_D3; always_ff @(posedge clk) begin __transmute_from_bits_2_value_D3 <= __transmute_from_bits_2_value_D2; end
/*latency*/ logic[31:0] __transmute_from_bits_2_value_D4; always_ff @(posedge clk) begin __transmute_from_bits_2_value_D4 <= __transmute_from_bits_2_value_D3; end
/*latency*/ logic[31:0] __transmute_from_bits_2_value_D5; always_ff @(posedge clk) begin __transmute_from_bits_2_value_D5 <= __transmute_from_bits_2_value_D4; end
/*latency*/ logic[31:0] __transmute_from_bits_2_value_D6; always_ff @(posedge clk) begin __transmute_from_bits_2_value_D6 <= __transmute_from_bits_2_value_D5; end
/*mux_wire*/ logic[31:0] _acc_origin_i_st;
/*mux_wire*/ logic[31:0] _transmute_from_bits_3_bits;
wire[31:0] _transmute_from_bits_3_value;
/*latency*/ logic[31:0] __transmute_from_bits_3_value_D1; always_ff @(posedge clk) begin __transmute_from_bits_3_value_D1 <= _transmute_from_bits_3_value; end
/*latency*/ logic[31:0] __transmute_from_bits_3_value_D2; always_ff @(posedge clk) begin __transmute_from_bits_3_value_D2 <= __transmute_from_bits_3_value_D1; end
/*latency*/ logic[31:0] __transmute_from_bits_3_value_D3; always_ff @(posedge clk) begin __transmute_from_bits_3_value_D3 <= __transmute_from_bits_3_value_D2; end
/*latency*/ logic[31:0] __transmute_from_bits_3_value_D4; always_ff @(posedge clk) begin __transmute_from_bits_3_value_D4 <= __transmute_from_bits_3_value_D3; end
/*latency*/ logic[31:0] __transmute_from_bits_3_value_D5; always_ff @(posedge clk) begin __transmute_from_bits_3_value_D5 <= __transmute_from_bits_3_value_D4; end
/*latency*/ logic[31:0] __transmute_from_bits_3_value_D6; always_ff @(posedge clk) begin __transmute_from_bits_3_value_D6 <= __transmute_from_bits_3_value_D5; end
/*mux_wire*/ logic[31:0] _acc_scale_st;
/*state*/ logic[31:0] mem_addr;
/*state*/ logic[31:0] mem_data;
/*state*/ logic mem_addr_valid = 1'b0;
/*state*/ logic mem_data_valid = 1'b0;
wire _134;
assign _134 = !resetn;
wire _138;
assign _138 = !mem_data_valid;
wire _140;
assign _140 = !mem_addr_valid;
wire _141;
assign _141 = _138 & _140;
wire _acc_may_read_px;
/*mux_wire*/ logic[31:0] data;
/*mux_wire*/ logic[31:0] addr;
/*mux_wire*/ logic _acc_read_px;
wire[31:0] _acc_iter_count;
wire[31:0] _acc_addr;
/*mux_wire*/ logic[31:0] _transmute_to_bits_value;
wire[31:0] _transmute_to_bits_bits;
wire _150;
assign _150 = total_pixels_seen == 8'd255;
wire[8:0] _154;
assign _154 = total_pixels_seen + 1'd1;
wire[7:0] _156;
assign _156 = _154 % 9'd256;
wire[33:0] _160;
assign _160 = mem_addr * 3'd4;
/*mux_wire*/ logic[33:0] _unsafe_int_cast_in;
wire[31:0] _unsafe_int_cast_out;
/*mux_wire*/ logic _mem_write_addr_request;
/*mux_wire*/ logic[31:0] _mem__addr;
wire _mem_write_addr_request_fire;
/*mux_wire*/ logic _mem_write_data_request;
/*mux_wire*/ logic[31:0] _mem__data;
wire _mem_write_data_request_fire;
/*mux_wire*/ logic _mem_write_response;
wire _mem_write_response_fire;
WholeMandelbrotComputerFast__WIDTH16_HEIGHT16 acc(
	.clk(clk),
	.rst(_acc_rst),
	.origin_r_st(_acc_origin_r_st),
	.origin_i_st(_acc_origin_i_st),
	.scale_st(_acc_scale_st),
	.may_start(),
	.start(_acc_start),
	.may_read_px(_acc_may_read_px),
	.read_px(_acc_read_px),
	.iter_count(_acc_iter_count),
	.addr(_acc_addr)
);
Axi4LiteSlave slave(
	.ar_stream(clk),
	.arready(_slave_arready),
	.arvalid(_slave_arvalid),
	.araddr(_slave_araddr),
	.arprot(_slave_arprot),
	.read_request(_slave_read_request),
	.read_request_fire(_slave_read_request_fire),
	.addr(_slave_addr),
	.rready(_slave_rready),
	.rvalid(_slave_rvalid),
	.rdata(_slave_rdata),
	.rresp(_slave_rresp),
	.read_response_fire(_slave_read_response_fire),
	.read_response(_slave_read_response),
	._data(_slave__data),
	.awready(_slave_awready),
	.awvalid(_slave_awvalid),
	.awaddr(_slave_awaddr),
	.awprot(_slave_awprot),
	.write_addr_request(_slave_write_addr_request),
	.write_addr_request_fire(_slave_write_addr_request_fire),
	.wr_addr(_slave_wr_addr),
	.wready(_slave_wready),
	.wvalid(_slave_wvalid),
	.wdata(_slave_wdata),
	.wstrb(_slave_wstrb),
	.write_data_request(_slave_write_data_request),
	.write_data_request_fire(_slave_write_data_request_fire),
	.data(_slave_data),
	.strb(_slave_strb),
	.bready(_slave_bready),
	.bvalid(_slave_bvalid),
	.bresp(_slave_bresp),
	.write_response(_slave_write_response),
	.write_response_fire(_slave_write_response_fire)
);
Axi4Master__ADDR_WIDTH32_DATA_WIDTH32 mem(
	.aw_domain(clk),
	.awready(_mem_awready),
	.awvalid(_mem_awvalid),
	.awaddr(_mem_awaddr),
	.awlen(_mem_awlen),
	.awsize(_mem_awsize),
	.awburst(_mem_awburst),
	.awlock(_mem_awlock),
	.awcache(_mem_awcache),
	.awprot(_mem_awprot),
	.awqos(_mem_awqos),
	.awregion(_mem_awregion),
	.write_addr_request(_mem_write_addr_request),
	._addr(_mem__addr),
	.write_addr_request_fire(_mem_write_addr_request_fire),
	.wready(_mem_wready),
	.wvalid(_mem_wvalid),
	.wdata(_mem_wdata),
	.wstrb(_mem_wstrb),
	.wlast(_mem_wlast),
	.write_data_request(_mem_write_data_request),
	._data(_mem__data),
	.write_data_request_fire(_mem_write_data_request_fire),
	.bready(_mem_bready),
	.bvalid(_mem_bvalid),
	.bresp(_mem_bresp),
	.write_response(_mem_write_response),
	.write_response_fire(_mem_write_response_fire)
);
Repeat__Ttypebool____SIZE32 Repeat(
	.clk(clk),
	.v(_Repeat_v),
	.result(_Repeat_result)
);
Repeat__Ttypebool____SIZE32 Repeat_2(
	.clk(clk),
	.v(_Repeat_2_v),
	.result(_Repeat_2_result)
);
transmute_from_bits__Ttypefloat transmute_from_bits(
	.clk(clk),
	.bits(_transmute_from_bits_bits),
	.value(_transmute_from_bits_value)
);
transmute_from_bits__Ttypefloat transmute_from_bits_2(
	.clk(clk),
	.bits(_transmute_from_bits_2_bits),
	.value(_transmute_from_bits_2_value)
);
transmute_from_bits__Ttypefloat transmute_from_bits_3(
	.clk(clk),
	.bits(_transmute_from_bits_3_bits),
	.value(_transmute_from_bits_3_value)
);
transmute_to_bits__Ttypeint__FROM0_TO4294967296 transmute_to_bits(
	.clk(clk),
	.value(_transmute_to_bits_value),
	.bits(_transmute_to_bits_bits)
);
unsafe_int_cast__FROM_I0_TO_I17179869181_FROM0_TO4294967296 unsafe_int_cast(
	.clk(clk),
	.in(_unsafe_int_cast_in),
	.out(_unsafe_int_cast_out)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_acc_rst = 1'bx;
	_acc_rst = 1'b0;
	if(_2) _acc_rst = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	intr = 1'bx;
	intr = 1'b0;
	if(_141) if(_acc_may_read_px) if(_150) intr = 1'b1;
end
always_ff @(posedge clk) begin
	if(_85) if(_slave_write_data_request_fire) if(_90) if(_91) total_pixels_seen <= 1'd0;
	if(_141) if(_acc_may_read_px) total_pixels_seen <= _156;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	ctrl_arready = 1'bx;
	ctrl_arready = _slave_arready;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave_arvalid = 1'bx;
	_slave_arvalid = ctrl_arvalid;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave_araddr = 32'dx;
	_slave_araddr = ctrl_araddr;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave_arprot = 3'bxxx;
	_slave_arprot = ctrl_arprot;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave_rready = 1'bx;
	_slave_rready = ctrl_rready;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	ctrl_rvalid = 1'bx;
	ctrl_rvalid = _slave_rvalid;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	ctrl_rdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	ctrl_rdata = _slave_rdata;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	ctrl_rresp = 2'bxx;
	ctrl_rresp = _slave_rresp;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	ctrl_awready = 1'bx;
	ctrl_awready = _slave_awready;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave_awvalid = 1'bx;
	_slave_awvalid = ctrl_awvalid;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave_awaddr = 32'dx;
	_slave_awaddr = ctrl_awaddr;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave_awprot = 2'bxx;
	_slave_awprot = ctrl_awprot;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	ctrl_wready = 1'bx;
	ctrl_wready = _slave_wready;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave_wvalid = 1'bx;
	_slave_wvalid = ctrl_wvalid;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave_wdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_slave_wdata = ctrl_wdata;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave_wstrb = 4'bxxxx;
	_slave_wstrb = ctrl_wstrb;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave_bready = 1'bx;
	_slave_bready = ctrl_bready;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	ctrl_bvalid = 1'bx;
	ctrl_bvalid = _slave_bvalid;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	ctrl_bresp = 2'bxx;
	ctrl_bresp = _slave_bresp;
end
always_ff @(posedge clk) begin
	if(_85) if(_slave_write_data_request_fire) if(!_90) if(_114) register0 <= tmp;
end
always_ff @(posedge clk) begin
	if(_85) if(_slave_write_data_request_fire) if(!_90) if(!_114) if(_118) register1 <= tmp;
end
always_ff @(posedge clk) begin
	if(_85) if(_slave_write_data_request_fire) if(!_90) if(!_114) if(!_118) if(_122) register2 <= tmp;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mem_awready = 1'bx;
	_mem_awready = mem_awready;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mem_awvalid = 1'bx;
	mem_awvalid = _mem_awvalid;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mem_awaddr = 32'dx;
	mem_awaddr = _mem_awaddr;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mem_awlen = 8'bxxxxxxxx;
	mem_awlen = _mem_awlen;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mem_awsize = 3'bxxx;
	mem_awsize = _mem_awsize;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mem_awburst = 2'bxx;
	mem_awburst = _mem_awburst;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mem_awlock = 1'bx;
	mem_awlock = _mem_awlock;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mem_awcache = 4'bxxxx;
	mem_awcache = _mem_awcache;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mem_awprot = 3'bxxx;
	mem_awprot = _mem_awprot;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mem_awqos = 4'bxxxx;
	mem_awqos = _mem_awqos;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mem_awregion = 4'bxxxx;
	mem_awregion = _mem_awregion;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mem_wready = 1'bx;
	_mem_wready = mem_wready;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mem_wvalid = 1'bx;
	mem_wvalid = _mem_wvalid;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mem_wdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	mem_wdata = _mem_wdata;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mem_wstrb = 4'bxxxx;
	mem_wstrb = _mem_wstrb;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mem_wlast = 1'bx;
	mem_wlast = _mem_wlast;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	mem_bready = 1'bx;
	mem_bready = _mem_bready;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mem_bvalid = 1'bx;
	_mem_bvalid = mem_bvalid;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mem_bresp = 2'bxx;
	_mem_bresp = mem_bresp;
end
always_ff @(posedge clk) begin
	if(_slave_read_request_fire) if(_58) return_value <= _Repeat_result;
	if(_slave_read_request_fire) if(!_58) if(_62) return_value <= _Repeat_2_result;
	if(_slave_read_request_fire) if(!_58) if(!_62) if(_66) return_value <= register0;
	if(_slave_read_request_fire) if(!_58) if(!_62) if(!_66) if(_70) return_value <= register1;
	if(_slave_read_request_fire) if(!_58) if(!_62) if(!_66) if(!_70) return_value <= register2;
end
always_ff @(posedge clk) begin
	if(_45) return_valid <= 1'b0;
	if(return_valid) if(_slave_read_response_fire) return_valid <= 1'b0;
	if(_slave_read_request_fire) return_valid <= 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave_read_request = 1'bx;
	_slave_read_request = 1'b0;
	if(_48) _slave_read_request = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave_read_response = 1'bx;
	_slave_read_response = 1'b0;
	if(return_valid) _slave_read_response = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave__data = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(return_valid) _slave__data = return_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_addr = 32'dx;
	if(_slave_read_request_fire) _addr = _slave_addr;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_Repeat_v = 1'bx;
	if(_slave_read_request_fire) if(_58) _Repeat_v = 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_Repeat_2_v = 1'bx;
	if(_slave_read_request_fire) if(!_58) if(_62) _Repeat_2_v = 1'b0;
end
always_ff @(posedge clk) begin
	if(_slave_write_addr_request_fire) write_addr <= _addr_2;
end
always_ff @(posedge clk) begin
	if(_75) write_addr_valid <= 1'b0;
	if(_slave_write_addr_request_fire) write_addr_valid <= 1'b1;
	if(_85) if(_slave_write_data_request_fire) write_addr_valid <= 1'b0;
end
always_ff @(posedge clk) begin
	if(_75) write_resp_valid <= 1'b0;
	if(_85) if(_slave_write_data_request_fire) write_resp_valid <= 1'b1;
	if(write_resp_valid) if(_slave_write_response_fire) write_resp_valid <= 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave_write_addr_request = 1'bx;
	_slave_write_addr_request = 1'b0;
	_slave_write_addr_request = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_addr_2 = 32'dx;
	if(_slave_write_addr_request_fire) _addr_2 = _slave_wr_addr;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave_write_data_request = 1'bx;
	_slave_write_data_request = 1'b0;
	if(_85) _slave_write_data_request = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_data = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_85) if(_slave_write_data_request_fire) _data = _slave_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_strb = 4'bxxxx;
	if(_85) if(_slave_write_data_request_fire) _strb = _slave_strb;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_acc_start = 1'bx;
	_acc_start = 1'b0;
	if(_85) if(_slave_write_data_request_fire) if(_90) if(_91) _acc_start = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	tmp = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_85) if(_slave_write_data_request_fire) if(!_90) tmp = register0;
	if(_85) if(_slave_write_data_request_fire) if(!_90) if(_98) tmp = register1;
	if(_85) if(_slave_write_data_request_fire) if(!_90) if(!_98) if(_102) tmp = register2;
	for(int _v0 = 0; _v0 < 8; _v0 = _v0 + 1) begin
if(_85) if(_slave_write_data_request_fire) if(!_90) if(_104) tmp[_v0] = _105[_v0];
end
	for(int _v0 = 0; _v0 < 8; _v0 = _v0 + 1) begin
if(_85) if(_slave_write_data_request_fire) if(!_90) if(_106) tmp[8 + _v0] = _107[_v0];
end
	for(int _v0 = 0; _v0 < 8; _v0 = _v0 + 1) begin
if(_85) if(_slave_write_data_request_fire) if(!_90) if(_108) tmp[16 + _v0] = _109[_v0];
end
	for(int _v0 = 0; _v0 < 8; _v0 = _v0 + 1) begin
if(_85) if(_slave_write_data_request_fire) if(!_90) if(_110) tmp[24 + _v0] = _111[_v0];
end
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_slave_write_response = 1'bx;
	_slave_write_response = 1'b0;
	if(write_resp_valid) _slave_write_response = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_from_bits_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_transmute_from_bits_bits = register0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_acc_origin_r_st = 'x;
	_acc_origin_r_st = __transmute_from_bits_value_D6;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_from_bits_2_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_transmute_from_bits_2_bits = register1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_acc_origin_i_st = 'x;
	_acc_origin_i_st = __transmute_from_bits_2_value_D6;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_from_bits_3_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	_transmute_from_bits_3_bits = register2;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_acc_scale_st = 'x;
	_acc_scale_st = __transmute_from_bits_3_value_D6;
end
always_ff @(posedge clk) begin
	if(_141) if(_acc_may_read_px) mem_addr <= addr;
end
always_ff @(posedge clk) begin
	if(_141) if(_acc_may_read_px) mem_data <= _transmute_to_bits_bits;
end
always_ff @(posedge clk) begin
	if(_134) mem_addr_valid <= 1'b0;
	if(_141) if(_acc_may_read_px) mem_addr_valid <= 1'b1;
	if(mem_addr_valid) if(_mem_write_addr_request_fire) mem_addr_valid <= 1'b0;
end
always_ff @(posedge clk) begin
	if(_134) mem_data_valid <= 1'b0;
	if(_141) if(_acc_may_read_px) mem_data_valid <= 1'b1;
	if(mem_data_valid) if(_mem_write_data_request_fire) mem_data_valid <= 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	data = 32'dx;
	if(_141) if(_acc_may_read_px) data = _acc_iter_count;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	addr = 32'dx;
	if(_141) if(_acc_may_read_px) addr = _acc_addr;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_acc_read_px = 1'bx;
	_acc_read_px = 1'b0;
	if(_141) if(_acc_may_read_px) _acc_read_px = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_to_bits_value = 32'dx;
	if(_141) if(_acc_may_read_px) _transmute_to_bits_value = data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_unsafe_int_cast_in = 34'dx;
	if(mem_addr_valid) _unsafe_int_cast_in = _160;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mem_write_addr_request = 1'bx;
	_mem_write_addr_request = 1'b0;
	if(mem_addr_valid) _mem_write_addr_request = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mem__addr = 32'dx;
	if(mem_addr_valid) _mem__addr = _unsafe_int_cast_out;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mem_write_data_request = 1'bx;
	_mem_write_data_request = 1'b0;
	if(mem_data_valid) _mem_write_data_request = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mem__data = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(mem_data_valid) _mem__data = mem_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mem_write_response = 1'bx;
	_mem_write_response = 1'b0;
	_mem_write_response = 1'b1;
end
endmodule

// WholeMandelbrotComputerFast #(WIDTH: 16, HEIGHT: 16)
module WholeMandelbrotComputerFast__WIDTH16_HEIGHT16(
	input clk,
	input wire rst,
	input wire[31:0] origin_r_st,
	input wire[31:0] origin_i_st,
	input wire[31:0] scale_st,
	output /*mux_wire*/ logic may_start,
	input wire start,
	output /*mux_wire*/ logic may_read_px,
	input wire read_px,
	output /*mux_wire*/ logic[31:0] iter_count,
	output /*mux_wire*/ logic[31:0] addr
);

/*latency*/ logic _rst_D1; always_ff @(posedge clk) begin _rst_D1 <= rst; end
/*latency*/ logic _rst_D2; always_ff @(posedge clk) begin _rst_D2 <= _rst_D1; end
/*latency*/ logic _rst_D3; always_ff @(posedge clk) begin _rst_D3 <= _rst_D2; end
/*latency*/ logic _rst_D4; always_ff @(posedge clk) begin _rst_D4 <= _rst_D3; end
/*latency*/ logic _rst_D5; always_ff @(posedge clk) begin _rst_D5 <= _rst_D4; end
/*latency*/ logic _rst_D6; always_ff @(posedge clk) begin _rst_D6 <= _rst_D5; end
/*latency*/ logic _rst_D7; always_ff @(posedge clk) begin _rst_D7 <= _rst_D6; end
/*latency*/ logic _rst_D8; always_ff @(posedge clk) begin _rst_D8 <= _rst_D7; end
/*latency*/ logic _rst_D9; always_ff @(posedge clk) begin _rst_D9 <= _rst_D8; end
/*latency*/ logic _rst_D10; always_ff @(posedge clk) begin _rst_D10 <= _rst_D9; end
/*latency*/ logic _rst_D11; always_ff @(posedge clk) begin _rst_D11 <= _rst_D10; end
/*latency*/ logic _rst_D12; always_ff @(posedge clk) begin _rst_D12 <= _rst_D11; end
/*latency*/ logic _rst_D13; always_ff @(posedge clk) begin _rst_D13 <= _rst_D12; end
/*latency*/ logic _rst_D14; always_ff @(posedge clk) begin _rst_D14 <= _rst_D13; end
/*latency*/ logic _rst_D15; always_ff @(posedge clk) begin _rst_D15 <= _rst_D14; end
/*latency*/ logic _rst_D16; always_ff @(posedge clk) begin _rst_D16 <= _rst_D15; end
/*latency*/ logic _rst_D17; always_ff @(posedge clk) begin _rst_D17 <= _rst_D16; end
/*latency*/ logic _rst_D18; always_ff @(posedge clk) begin _rst_D18 <= _rst_D17; end
/*latency*/ logic _rst_D19; always_ff @(posedge clk) begin _rst_D19 <= _rst_D18; end
/*latency*/ logic _rst_D20; always_ff @(posedge clk) begin _rst_D20 <= _rst_D19; end
/*latency*/ logic _rst_D21; always_ff @(posedge clk) begin _rst_D21 <= _rst_D20; end
/*latency*/ logic _rst_D22; always_ff @(posedge clk) begin _rst_D22 <= _rst_D21; end
/*mux_wire*/ logic _pixel_producer_rst;
/*mux_wire*/ logic _mandel_iter_rst;
/*mux_wire*/ logic _outputFIFO_rst;
wire _pixel_producer_may_start;
/*mux_wire*/ logic _pixel_producer_start;
wire _pixel_producer_may_next;
wire _outputFIFO_may_push;
wire _12;
assign _12 = _pixel_producer_may_next & _outputFIFO_may_push;
/*latency*/ logic __12_D1; always_ff @(posedge clk) begin __12_D1 <= _12; end
/*latency*/ logic __12_D2; always_ff @(posedge clk) begin __12_D2 <= __12_D1; end
/*latency*/ logic __12_D3; always_ff @(posedge clk) begin __12_D3 <= __12_D2; end
/*latency*/ logic __12_D4; always_ff @(posedge clk) begin __12_D4 <= __12_D3; end
/*latency*/ logic __12_D5; always_ff @(posedge clk) begin __12_D5 <= __12_D4; end
/*latency*/ logic __12_D6; always_ff @(posedge clk) begin __12_D6 <= __12_D5; end
/*latency*/ logic __12_D7; always_ff @(posedge clk) begin __12_D7 <= __12_D6; end
/*latency*/ logic __12_D8; always_ff @(posedge clk) begin __12_D8 <= __12_D7; end
/*latency*/ logic __12_D9; always_ff @(posedge clk) begin __12_D9 <= __12_D8; end
/*latency*/ logic __12_D10; always_ff @(posedge clk) begin __12_D10 <= __12_D9; end
/*latency*/ logic __12_D11; always_ff @(posedge clk) begin __12_D11 <= __12_D10; end
/*latency*/ logic __12_D12; always_ff @(posedge clk) begin __12_D12 <= __12_D11; end
/*latency*/ logic __12_D13; always_ff @(posedge clk) begin __12_D13 <= __12_D12; end
/*latency*/ logic __12_D14; always_ff @(posedge clk) begin __12_D14 <= __12_D13; end
/*latency*/ logic __12_D15; always_ff @(posedge clk) begin __12_D15 <= __12_D14; end
/*latency*/ logic __12_D16; always_ff @(posedge clk) begin __12_D16 <= __12_D15; end
/*latency*/ logic __12_D17; always_ff @(posedge clk) begin __12_D17 <= __12_D16; end
/*latency*/ logic __12_D18; always_ff @(posedge clk) begin __12_D18 <= __12_D17; end
/*latency*/ logic __12_D19; always_ff @(posedge clk) begin __12_D19 <= __12_D18; end
/*latency*/ logic __12_D20; always_ff @(posedge clk) begin __12_D20 <= __12_D19; end
/*latency*/ logic __12_D21; always_ff @(posedge clk) begin __12_D21 <= __12_D20; end
/*latency*/ logic __12_D22; always_ff @(posedge clk) begin __12_D22 <= __12_D21; end
wire _mandel_iter_may_start;
/*latency*/ logic __mandel_iter_may_start_D1; always_ff @(posedge clk) begin __mandel_iter_may_start_D1 <= _mandel_iter_may_start; end
/*latency*/ logic __mandel_iter_may_start_D2; always_ff @(posedge clk) begin __mandel_iter_may_start_D2 <= __mandel_iter_may_start_D1; end
/*latency*/ logic __mandel_iter_may_start_D3; always_ff @(posedge clk) begin __mandel_iter_may_start_D3 <= __mandel_iter_may_start_D2; end
/*latency*/ logic __mandel_iter_may_start_D4; always_ff @(posedge clk) begin __mandel_iter_may_start_D4 <= __mandel_iter_may_start_D3; end
/*latency*/ logic __mandel_iter_may_start_D5; always_ff @(posedge clk) begin __mandel_iter_may_start_D5 <= __mandel_iter_may_start_D4; end
/*latency*/ logic __mandel_iter_may_start_D6; always_ff @(posedge clk) begin __mandel_iter_may_start_D6 <= __mandel_iter_may_start_D5; end
/*latency*/ logic __mandel_iter_may_start_D7; always_ff @(posedge clk) begin __mandel_iter_may_start_D7 <= __mandel_iter_may_start_D6; end
/*latency*/ logic __mandel_iter_may_start_D8; always_ff @(posedge clk) begin __mandel_iter_may_start_D8 <= __mandel_iter_may_start_D7; end
/*latency*/ logic __mandel_iter_may_start_D9; always_ff @(posedge clk) begin __mandel_iter_may_start_D9 <= __mandel_iter_may_start_D8; end
/*latency*/ logic __mandel_iter_may_start_D10; always_ff @(posedge clk) begin __mandel_iter_may_start_D10 <= __mandel_iter_may_start_D9; end
/*latency*/ logic __mandel_iter_may_start_D11; always_ff @(posedge clk) begin __mandel_iter_may_start_D11 <= __mandel_iter_may_start_D10; end
/*latency*/ logic __mandel_iter_may_start_D12; always_ff @(posedge clk) begin __mandel_iter_may_start_D12 <= __mandel_iter_may_start_D11; end
/*latency*/ logic __mandel_iter_may_start_D13; always_ff @(posedge clk) begin __mandel_iter_may_start_D13 <= __mandel_iter_may_start_D12; end
/*latency*/ logic __mandel_iter_may_start_D14; always_ff @(posedge clk) begin __mandel_iter_may_start_D14 <= __mandel_iter_may_start_D13; end
/*latency*/ logic __mandel_iter_may_start_D15; always_ff @(posedge clk) begin __mandel_iter_may_start_D15 <= __mandel_iter_may_start_D14; end
/*latency*/ logic __mandel_iter_may_start_D16; always_ff @(posedge clk) begin __mandel_iter_may_start_D16 <= __mandel_iter_may_start_D15; end
/*latency*/ logic __mandel_iter_may_start_D17; always_ff @(posedge clk) begin __mandel_iter_may_start_D17 <= __mandel_iter_may_start_D16; end
/*latency*/ logic __mandel_iter_may_start_D18; always_ff @(posedge clk) begin __mandel_iter_may_start_D18 <= __mandel_iter_may_start_D17; end
/*latency*/ logic __mandel_iter_may_start_D19; always_ff @(posedge clk) begin __mandel_iter_may_start_D19 <= __mandel_iter_may_start_D18; end
/*latency*/ logic __mandel_iter_may_start_D20; always_ff @(posedge clk) begin __mandel_iter_may_start_D20 <= __mandel_iter_may_start_D19; end
/*latency*/ logic __mandel_iter_may_start_D21; always_ff @(posedge clk) begin __mandel_iter_may_start_D21 <= __mandel_iter_may_start_D20; end
/*latency*/ logic __mandel_iter_may_start_D22; always_ff @(posedge clk) begin __mandel_iter_may_start_D22 <= __mandel_iter_may_start_D21; end
/*mux_wire*/ logic[3:0] x;
/*mux_wire*/ logic[3:0] y;
/*mux_wire*/ logic _pixel_producer_next;
wire[3:0] _pixel_producer_x;
wire[3:0] _pixel_producer_y;
/*mux_wire*/ logic[31:0] r;
/*mux_wire*/ logic[31:0] i;
/*mux_wire*/ logic _PixelToComplex_PixelToComplex;
/*mux_wire*/ logic[31:0] _PixelToComplex_origin_r;
/*mux_wire*/ logic[31:0] _PixelToComplex_origin_i;
/*mux_wire*/ logic[31:0] _PixelToComplex_step;
/*mux_wire*/ logic[3:0] _PixelToComplex_px_x;
/*mux_wire*/ logic[3:0] _PixelToComplex_px_y;
wire[31:0] _PixelToComplex_r;
wire[31:0] _PixelToComplex_i;
/*mux_wire*/ logic[3:0] _mandel_iter_extra_data_v1_i;
/*mux_wire*/ logic[3:0] _mandel_iter_extra_data_v2_i;
wire[7:0] _mandel_iter_extra_data_packed_o;
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D1; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D1 <= _mandel_iter_extra_data_packed_o; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D2; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D2 <= __mandel_iter_extra_data_packed_o_D1; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D3; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D3 <= __mandel_iter_extra_data_packed_o_D2; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D4; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D4 <= __mandel_iter_extra_data_packed_o_D3; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D5; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D5 <= __mandel_iter_extra_data_packed_o_D4; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D6; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D6 <= __mandel_iter_extra_data_packed_o_D5; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D7; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D7 <= __mandel_iter_extra_data_packed_o_D6; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D8; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D8 <= __mandel_iter_extra_data_packed_o_D7; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D9; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D9 <= __mandel_iter_extra_data_packed_o_D8; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D10; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D10 <= __mandel_iter_extra_data_packed_o_D9; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D11; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D11 <= __mandel_iter_extra_data_packed_o_D10; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D12; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D12 <= __mandel_iter_extra_data_packed_o_D11; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D13; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D13 <= __mandel_iter_extra_data_packed_o_D12; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D14; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D14 <= __mandel_iter_extra_data_packed_o_D13; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D15; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D15 <= __mandel_iter_extra_data_packed_o_D14; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D16; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D16 <= __mandel_iter_extra_data_packed_o_D15; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D17; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D17 <= __mandel_iter_extra_data_packed_o_D16; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D18; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D18 <= __mandel_iter_extra_data_packed_o_D17; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D19; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D19 <= __mandel_iter_extra_data_packed_o_D18; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D20; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D20 <= __mandel_iter_extra_data_packed_o_D19; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D21; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D21 <= __mandel_iter_extra_data_packed_o_D20; end
/*latency*/ logic[7:0] __mandel_iter_extra_data_packed_o_D22; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D22 <= __mandel_iter_extra_data_packed_o_D21; end
/*mux_wire*/ logic _mandel_iter_start;
/*mux_wire*/ logic[31:0] _mandel_iter_r;
/*mux_wire*/ logic[31:0] _mandel_iter_i;
/*mux_wire*/ logic[7:0] _mandel_iter_extra_data;
/*mux_wire*/ logic[7:0] extra_data;
/*mux_wire*/ logic _outputFIFO_pop;
wire[14:0] _outputFIFO_pop_data;
/*mux_wire*/ logic[14:0] _data_packed_i;
wire[6:0] _data_v1_o;
wire[7:0] _data_v2_o;
/*mux_wire*/ logic[3:0] x_2;
/*mux_wire*/ logic[3:0] y_2;
/*mux_wire*/ logic[7:0] _mandel_iter_extra_data_packed_i;
wire[3:0] _mandel_iter_extra_data_v1_o;
wire[3:0] _mandel_iter_extra_data_v2_o;
wire[7:0] _34;
assign _34 = y_2 * 5'd16;
wire[7:0] _36;
assign _36 = _34 + x_2;
wire _outputFIFO_may_pop;
wire _mandel_iter_finish;
wire[6:0] _mandel_iter_iteration_count;
wire[7:0] _mandel_iter_extra_data_o;
/*mux_wire*/ logic[6:0] iter_count_2;
/*mux_wire*/ logic[7:0] extra_data_2;
/*mux_wire*/ logic[6:0] _data_v1_i;
/*mux_wire*/ logic[7:0] _data_v2_i;
wire[14:0] _data_packed_o;
/*mux_wire*/ logic _outputFIFO_push;
/*mux_wire*/ logic[14:0] _outputFIFO_push_data;
ScreenIterator__WIDTH16_HEIGHT16 pixel_producer(
	.clk(clk),
	.may_next(_pixel_producer_may_next),
	.start(_pixel_producer_start),
	.last(),
	.may_start(_pixel_producer_may_start),
	.next(_pixel_producer_next),
	.x(_pixel_producer_x),
	.y(_pixel_producer_y),
	.rst(_pixel_producer_rst)
);
SameCycleReadFIFO__Ttypebool____15__DEPTH512_MAY_PUSH_LATENCY75_EXTRA_IN_FLIGHT200 outputFIFO(
	.clk(clk),
	.rst(_outputFIFO_rst),
	.may_push(_outputFIFO_may_push),
	.push(_outputFIFO_push),
	.push_data(_outputFIFO_push_data),
	.may_pop(_outputFIFO_may_pop),
	.pop(_outputFIFO_pop),
	.pop_data(_outputFIFO_pop_data)
);
MandelbrotParallelWhile__ExtraDataTtypebool____8__INPUT_DATA_LATENCY22 mandel_iter(
	.clk(clk),
	.rst(_mandel_iter_rst),
	.may_start(_mandel_iter_may_start),
	.finish(_mandel_iter_finish),
	.iteration_count(_mandel_iter_iteration_count),
	.extra_data_o(_mandel_iter_extra_data_o),
	.start(_mandel_iter_start),
	.r(_mandel_iter_r),
	.i(_mandel_iter_i),
	.extra_data(_mandel_iter_extra_data)
);
tuple2__T1typeint__FROM0_TO16__T2typeint__FROM0_TO16 mandel_iter_extra_data(
	.clk(clk),
	.v1_i(_mandel_iter_extra_data_v1_i),
	.v2_i(_mandel_iter_extra_data_v2_i),
	.packed_o(_mandel_iter_extra_data_packed_o),
	.packed_i(_mandel_iter_extra_data_packed_i),
	.v1_o(_mandel_iter_extra_data_v1_o),
	.v2_o(_mandel_iter_extra_data_v2_o)
);
PixelToComplex__WIDTH16_HEIGHT16 PixelToComplex(
	.clk(clk),
	.PixelToComplex(_PixelToComplex_PixelToComplex),
	.origin_r(_PixelToComplex_origin_r),
	.origin_i(_PixelToComplex_origin_i),
	.step(_PixelToComplex_step),
	.px_x(_PixelToComplex_px_x),
	.px_y(_PixelToComplex_px_y),
	.r(_PixelToComplex_r),
	.i(_PixelToComplex_i)
);
tuple2__T1typeint__FROM0_TO101__T2typebool____8 data(
	.clk(clk),
	.v1_i(_data_v1_i),
	.v2_i(_data_v2_i),
	.packed_o(_data_packed_o),
	.packed_i(_data_packed_i),
	.v1_o(_data_v1_o),
	.v2_o(_data_v2_o)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pixel_producer_rst = 1'bx;
	_pixel_producer_rst = 1'b0;
	if(rst) _pixel_producer_rst = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mandel_iter_rst = 1'bx;
	_mandel_iter_rst = 1'b0;
	if(_rst_D22) _mandel_iter_rst = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_outputFIFO_rst = 1'bx;
	_outputFIFO_rst = 1'b0;
	if(rst) _outputFIFO_rst = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_start = 1'bx;
	may_start = _pixel_producer_may_start;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pixel_producer_start = 1'bx;
	_pixel_producer_start = 1'b0;
	if(start) _pixel_producer_start = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	x = 4'dx;
	if(_12) if(_mandel_iter_may_start) x = _pixel_producer_x;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	y = 4'dx;
	if(_12) if(_mandel_iter_may_start) y = _pixel_producer_y;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pixel_producer_next = 1'bx;
	_pixel_producer_next = 1'b0;
	if(_12) if(_mandel_iter_may_start) _pixel_producer_next = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	r = 'x;
	if(__12_D22) if(__mandel_iter_may_start_D22) r = _PixelToComplex_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	i = 'x;
	if(__12_D22) if(__mandel_iter_may_start_D22) i = _PixelToComplex_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_PixelToComplex_PixelToComplex = 1'bx;
	_PixelToComplex_PixelToComplex = 1'b0;
	if(_12) if(_mandel_iter_may_start) _PixelToComplex_PixelToComplex = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_PixelToComplex_origin_r = 'x;
	if(__12_D6) if(__mandel_iter_may_start_D6) _PixelToComplex_origin_r = origin_r_st;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_PixelToComplex_origin_i = 'x;
	if(__12_D6) if(__mandel_iter_may_start_D6) _PixelToComplex_origin_i = origin_i_st;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_PixelToComplex_step = 'x;
	if(__12_D6) if(__mandel_iter_may_start_D6) _PixelToComplex_step = scale_st;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_PixelToComplex_px_x = 4'dx;
	if(_12) if(_mandel_iter_may_start) _PixelToComplex_px_x = x;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_PixelToComplex_px_y = 4'dx;
	if(_12) if(_mandel_iter_may_start) _PixelToComplex_px_y = y;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mandel_iter_extra_data_v1_i = 4'dx;
	if(_12) if(_mandel_iter_may_start) _mandel_iter_extra_data_v1_i = x;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mandel_iter_extra_data_v2_i = 4'dx;
	if(_12) if(_mandel_iter_may_start) _mandel_iter_extra_data_v2_i = y;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mandel_iter_start = 1'bx;
	_mandel_iter_start = 1'b0;
	if(__12_D22) if(__mandel_iter_may_start_D22) _mandel_iter_start = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mandel_iter_r = 'x;
	if(__12_D22) if(__mandel_iter_may_start_D22) _mandel_iter_r = r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mandel_iter_i = 'x;
	if(__12_D22) if(__mandel_iter_may_start_D22) _mandel_iter_i = i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mandel_iter_extra_data = 8'bxxxxxxxx;
	if(__12_D22) if(__mandel_iter_may_start_D22) _mandel_iter_extra_data = __mandel_iter_extra_data_packed_o_D22;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_read_px = 1'bx;
	may_read_px = 1'b0;
	if(_outputFIFO_may_pop) may_read_px = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter_count = 32'dx;
	if(may_read_px) if(read_px) iter_count = _data_v1_o;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	addr = 32'dx;
	if(may_read_px) if(read_px) addr = _36;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	extra_data = 8'bxxxxxxxx;
	if(may_read_px) if(read_px) extra_data = _data_v2_o;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_outputFIFO_pop = 1'bx;
	_outputFIFO_pop = 1'b0;
	if(may_read_px) if(read_px) _outputFIFO_pop = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_data_packed_i = 15'bxxxxxxxxxxxxxxx;
	if(may_read_px) if(read_px) _data_packed_i = _outputFIFO_pop_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	x_2 = 4'dx;
	if(may_read_px) if(read_px) x_2 = _mandel_iter_extra_data_v1_o;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	y_2 = 4'dx;
	if(may_read_px) if(read_px) y_2 = _mandel_iter_extra_data_v2_o;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mandel_iter_extra_data_packed_i = 8'bxxxxxxxx;
	if(may_read_px) if(read_px) _mandel_iter_extra_data_packed_i = extra_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter_count_2 = 7'dx;
	if(_mandel_iter_finish) iter_count_2 = _mandel_iter_iteration_count;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	extra_data_2 = 8'bxxxxxxxx;
	if(_mandel_iter_finish) extra_data_2 = _mandel_iter_extra_data_o;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_data_v1_i = 7'dx;
	if(_mandel_iter_finish) _data_v1_i = iter_count_2;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_data_v2_i = 8'bxxxxxxxx;
	if(_mandel_iter_finish) _data_v2_i = extra_data_2;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_outputFIFO_push = 1'bx;
	_outputFIFO_push = 1'b0;
	if(_mandel_iter_finish) _outputFIFO_push = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_outputFIFO_push_data = 15'bxxxxxxxxxxxxxxx;
	if(_mandel_iter_finish) _outputFIFO_push_data = _data_packed_o;
end
endmodule

// Axi4LiteSlave #()
module Axi4LiteSlave(
	input ar_stream,
	output /*mux_wire*/ logic arready,
	input wire arvalid,
	input wire[31:0] araddr,
	input wire[2:0] arprot,
	input wire read_request,
	output /*mux_wire*/ logic read_request_fire,
	output /*mux_wire*/ logic[31:0] addr,
	input wire rready,
	output /*mux_wire*/ logic rvalid,
	output /*mux_wire*/ logic[31:0] rdata,
	output /*mux_wire*/ logic[1:0] rresp,
	output /*mux_wire*/ logic read_response_fire,
	input wire read_response,
	input wire[31:0] _data,
	output /*mux_wire*/ logic awready,
	input wire awvalid,
	input wire[31:0] awaddr,
	input wire[1:0] awprot,
	input wire write_addr_request,
	output /*mux_wire*/ logic write_addr_request_fire,
	output /*mux_wire*/ logic[31:0] wr_addr,
	output /*mux_wire*/ logic wready,
	input wire wvalid,
	input wire[31:0] wdata,
	input wire[3:0] wstrb,
	input wire write_data_request,
	output /*mux_wire*/ logic write_data_request_fire,
	output /*mux_wire*/ logic[31:0] data,
	output /*mux_wire*/ logic[3:0] strb,
	input wire bready,
	output /*mux_wire*/ logic bvalid,
	output /*mux_wire*/ logic[1:0] bresp,
	input wire write_response,
	output /*mux_wire*/ logic write_response_fire
);

always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	arready = 1'bx;
	if(read_request) arready = 1'b1;
	if(!read_request) arready = 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	read_request_fire = 1'bx;
	if(read_request) read_request_fire = 1'b0;
	if(read_request) if(arvalid) read_request_fire = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	addr = 32'dx;
	if(read_request) if(arvalid) addr = araddr;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rvalid = 1'bx;
	if(read_response) rvalid = 1'b1;
	if(!read_response) rvalid = 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(read_response) rdata = _data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	rresp = 2'bxx;
	if(read_response) rresp = 2'b00;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	read_response_fire = 1'bx;
	read_response_fire = 1'b0;
	if(read_response) if(rready) read_response_fire = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awready = 1'bx;
	if(write_addr_request) awready = 1'b1;
	if(!write_addr_request) awready = 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	write_addr_request_fire = 1'bx;
	if(write_addr_request) write_addr_request_fire = 1'b0;
	if(write_addr_request) if(awvalid) write_addr_request_fire = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wr_addr = 32'dx;
	if(write_addr_request) if(awvalid) wr_addr = awaddr;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wready = 1'bx;
	if(write_data_request) wready = 1'b1;
	if(!write_data_request) wready = 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	write_data_request_fire = 1'bx;
	if(write_data_request) write_data_request_fire = 1'b0;
	if(write_data_request) if(wvalid) write_data_request_fire = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	data = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(write_data_request) if(wvalid) data = wdata;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	strb = 4'bxxxx;
	if(write_data_request) if(wvalid) strb = wstrb;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	bvalid = 1'bx;
	if(write_response) bvalid = 1'b1;
	if(!write_response) bvalid = 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	bresp = 2'bxx;
	if(write_response) bresp = 2'b00;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	write_response_fire = 1'bx;
	if(write_response) write_response_fire = 1'b0;
	if(write_response) if(bready) write_response_fire = 1'b1;
end
endmodule

// Axi4Master #(ADDR_WIDTH: 32, DATA_WIDTH: 32)
module Axi4Master__ADDR_WIDTH32_DATA_WIDTH32(
	input aw_domain,
	input wire awready,
	output /*mux_wire*/ logic awvalid,
	output /*mux_wire*/ logic[31:0] awaddr,
	output /*mux_wire*/ logic[7:0] awlen,
	output /*mux_wire*/ logic[2:0] awsize,
	output /*mux_wire*/ logic[1:0] awburst,
	output /*mux_wire*/ logic awlock,
	output /*mux_wire*/ logic[3:0] awcache,
	output /*mux_wire*/ logic[2:0] awprot,
	output /*mux_wire*/ logic[3:0] awqos,
	output /*mux_wire*/ logic[3:0] awregion,
	input wire write_addr_request,
	input wire[31:0] _addr,
	output /*mux_wire*/ logic write_addr_request_fire,
	input wire wready,
	output /*mux_wire*/ logic wvalid,
	output /*mux_wire*/ logic[31:0] wdata,
	output /*mux_wire*/ logic[3:0] wstrb,
	output /*mux_wire*/ logic wlast,
	input wire write_data_request,
	input wire[31:0] _data,
	output /*mux_wire*/ logic write_data_request_fire,
	output /*mux_wire*/ logic bready,
	input wire bvalid,
	input wire[1:0] bresp,
	input wire write_response,
	output /*mux_wire*/ logic write_response_fire
);

always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awvalid = 1'bx;
	if(write_addr_request) awvalid = 1'b1;
	if(!write_addr_request) awvalid = 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awaddr = 32'dx;
	if(write_addr_request) awaddr = _addr;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awlen = 8'bxxxxxxxx;
	if(write_addr_request) awlen = 8'b00000000;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awsize = 3'bxxx;
	if(write_addr_request) awsize = 3'b010;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awburst = 2'bxx;
	if(write_addr_request) awburst = 2'b01;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awlock = 1'bx;
	if(write_addr_request) awlock = 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awcache = 4'bxxxx;
	if(write_addr_request) awcache = 4'b0010;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awprot = 3'bxxx;
	if(write_addr_request) awprot = 3'b000;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awqos = 4'bxxxx;
	if(write_addr_request) awqos = 4'b0000;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	awregion = 4'bxxxx;
	if(write_addr_request) awregion = 4'b0000;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	write_addr_request_fire = 1'bx;
	if(write_addr_request) write_addr_request_fire = 1'b0;
	if(write_addr_request) if(awready) write_addr_request_fire = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wvalid = 1'bx;
	if(write_data_request) wvalid = 1'b1;
	if(!write_data_request) wvalid = 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(write_data_request) wdata = _data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wstrb = 4'bxxxx;
	if(write_data_request) wstrb = 4'b1111;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	wlast = 1'bx;
	if(write_data_request) wlast = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	write_data_request_fire = 1'bx;
	if(write_data_request) write_data_request_fire = 1'b0;
	if(write_data_request) if(wready) write_data_request_fire = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	bready = 1'bx;
	if(write_response) bready = 1'b1;
	if(!write_response) bready = 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	write_response_fire = 1'bx;
	if(write_response) write_response_fire = 1'b0;
	if(write_response) if(bvalid) write_response_fire = 1'b1;
end
endmodule

// Repeat #(T: type bool #(), SIZE: 32)
module Repeat__Ttypebool____SIZE32(
	input clk,
	input wire v,
	output /*mux_wire*/ logic[31:0] result
);

always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	result = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	result[0] = v;
	result[1] = v;
	result[2] = v;
	result[3] = v;
	result[4] = v;
	result[5] = v;
	result[6] = v;
	result[7] = v;
	result[8] = v;
	result[9] = v;
	result[10] = v;
	result[11] = v;
	result[12] = v;
	result[13] = v;
	result[14] = v;
	result[15] = v;
	result[16] = v;
	result[17] = v;
	result[18] = v;
	result[19] = v;
	result[20] = v;
	result[21] = v;
	result[22] = v;
	result[23] = v;
	result[24] = v;
	result[25] = v;
	result[26] = v;
	result[27] = v;
	result[28] = v;
	result[29] = v;
	result[30] = v;
	result[31] = v;
end
endmodule

// transmute_from_bits #(T: type float #())
module transmute_from_bits__Ttypefloat(
	input clk,
	input wire[31:0] bits,
	output /*mux_wire*/ logic[31:0] value
);

assign value = bits;
endmodule

// transmute_to_bits #(T: type int #(FROM: 0, TO: 4294967296))
module transmute_to_bits__Ttypeint__FROM0_TO4294967296(
	input clk,
	input wire[31:0] value,
	output /*mux_wire*/ logic[31:0] bits
);

assign bits = value;
endmodule

// unsafe_int_cast #(FROM_I: 0, TO_I: 17179869181, FROM: 0, TO: 4294967296)
module unsafe_int_cast__FROM_I0_TO_I17179869181_FROM0_TO4294967296(
	input clk,
	input wire[33:0] in,
	output /*mux_wire*/ logic[31:0] out
);

	assign out = in;
endmodule

// ScreenIterator #(WIDTH: 16, HEIGHT: 16)
module ScreenIterator__WIDTH16_HEIGHT16(
	input clk,
	output /*state*/ logic may_next,
	input wire start,
	output /*mux_wire*/ logic last,
	output /*mux_wire*/ logic may_start,
	input wire next,
	output /*mux_wire*/ logic[3:0] x,
	output /*mux_wire*/ logic[3:0] y,
	input wire rst
);

/*state*/ logic[3:0] cur_x;
/*state*/ logic[3:0] cur_y;
/*mux_wire*/ logic x_at_end;
wire _6;
assign _6 = cur_x == 4'd15;
/*mux_wire*/ logic y_at_end;
wire _9;
assign _9 = cur_y == 4'd15;
wire _12;
assign _12 = !may_next;
wire[4:0] _21;
assign _21 = cur_y + 1'd1;
/*mux_wire*/ logic[4:0] _unsafe_int_cast_in;
wire[3:0] _unsafe_int_cast_out;
wire[4:0] _24;
assign _24 = cur_x + 1'd1;
/*mux_wire*/ logic[4:0] _unsafe_int_cast_2_in;
wire[3:0] _unsafe_int_cast_2_out;
wire _26;
assign _26 = !x_at_end;
wire _28;
assign _28 = !y_at_end;
wire _29;
assign _29 = _26 | _28;
unsafe_int_cast__FROM_I1_TO_I17_FROM0_TO16 unsafe_int_cast(
	.clk(clk),
	.in(_unsafe_int_cast_in),
	.out(_unsafe_int_cast_out)
);
unsafe_int_cast__FROM_I1_TO_I17_FROM0_TO16 unsafe_int_cast_2(
	.clk(clk),
	.in(_unsafe_int_cast_2_in),
	.out(_unsafe_int_cast_2_out)
);
always_ff @(posedge clk) begin
	if(start) cur_x <= 1'd0;
	if(next) if(x_at_end) cur_x <= 1'd0;
	if(next) if(!x_at_end) cur_x <= _unsafe_int_cast_2_out;
	if(rst) cur_x <= 4'd15;
end
always_ff @(posedge clk) begin
	if(start) cur_y <= 1'd0;
	if(next) if(x_at_end) if(!y_at_end) cur_y <= _unsafe_int_cast_out;
	if(rst) cur_y <= 4'd15;
end
always_ff @(posedge clk) begin
	if(start) may_next <= 1'b1;
	if(next) may_next <= _29;
	if(rst) may_next <= 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	x_at_end = 1'bx;
	x_at_end = _6;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	y_at_end = 1'bx;
	y_at_end = _9;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	last = 1'bx;
	last = 1'b0;
	if(next) if(x_at_end) if(y_at_end) last = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_start = 1'bx;
	may_start = _12;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	x = 4'dx;
	if(next) x = cur_x;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	y = 4'dx;
	if(next) y = cur_y;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_unsafe_int_cast_in = 5'dx;
	if(next) if(x_at_end) if(!y_at_end) _unsafe_int_cast_in = _21;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_unsafe_int_cast_2_in = 5'dx;
	if(next) if(!x_at_end) _unsafe_int_cast_2_in = _24;
end
endmodule

// SameCycleReadFIFO #(T: type bool #()[15], DEPTH: 512, MAY_PUSH_LATENCY: 75, EXTRA_IN_FLIGHT: 200)
module SameCycleReadFIFO__Ttypebool____15__DEPTH512_MAY_PUSH_LATENCY75_EXTRA_IN_FLIGHT200(
	input clk,
	input wire rst,
	output /*mux_wire*/ logic may_push,
	input wire push,
	input wire[14:0] push_data,
	output /*mux_wire*/ logic may_pop,
	input wire pop,
	output /*mux_wire*/ logic[14:0] pop_data
);

/*mux_wire*/ logic _fifo_rst;
wire _fifo_may_push;
/*mux_wire*/ logic[14:0] as_bits;
/*mux_wire*/ logic[14:0] _transmute_to_bits_value;
wire[14:0] _transmute_to_bits_bits;
/*mux_wire*/ logic _fifo_push;
/*mux_wire*/ logic[14:0] _fifo_push_data;
wire _fifo_may_pop;
/*mux_wire*/ logic[14:0] pop_data_as_bits;
/*mux_wire*/ logic _fifo_pop;
wire[14:0] _fifo_pop_data;
/*mux_wire*/ logic[14:0] _transmute_from_bits_bits;
wire[14:0] _transmute_from_bits_value;
RawFIFO #(.WIDTH(15), .DEPTH(512), .MAY_PUSH_LATENCY(75), .EXTRA_IN_FLIGHT(200), .READ_DATA_LATENCY(0)) fifo(
	.clk(clk),
	.rst(_fifo_rst),
	.may_push(_fifo_may_push),
	.push(_fifo_push),
	.push_data(_fifo_push_data),
	.may_pop(_fifo_may_pop),
	.pop(_fifo_pop),
	.pop_data(_fifo_pop_data)
);
transmute_to_bits__Ttypebool____15 transmute_to_bits(
	.clk(clk),
	.value(_transmute_to_bits_value),
	.bits(_transmute_to_bits_bits)
);
transmute_from_bits__Ttypebool____15 transmute_from_bits(
	.clk(clk),
	.bits(_transmute_from_bits_bits),
	.value(_transmute_from_bits_value)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_rst = 1'bx;
	_fifo_rst = 1'b0;
	if(rst) _fifo_rst = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_push = 1'bx;
	may_push = _fifo_may_push;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	as_bits = 15'bxxxxxxxxxxxxxxx;
	if(push) as_bits = _transmute_to_bits_bits;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_to_bits_value = 15'bxxxxxxxxxxxxxxx;
	if(push) _transmute_to_bits_value = push_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_push = 1'bx;
	_fifo_push = 1'b0;
	if(push) _fifo_push = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_push_data = 15'bxxxxxxxxxxxxxxx;
	if(push) _fifo_push_data = as_bits;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_pop = 1'bx;
	may_pop = _fifo_may_pop;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_data = 15'bxxxxxxxxxxxxxxx;
	if(pop) pop_data = _transmute_from_bits_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_data_as_bits = 15'bxxxxxxxxxxxxxxx;
	if(pop) pop_data_as_bits = _fifo_pop_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_pop = 1'bx;
	_fifo_pop = 1'b0;
	if(pop) _fifo_pop = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_from_bits_bits = 15'bxxxxxxxxxxxxxxx;
	if(pop) _transmute_from_bits_bits = pop_data_as_bits;
end
endmodule

// MandelbrotParallelWhile #(ExtraDataT: type bool #()[8], INPUT_DATA_LATENCY: 22)
module MandelbrotParallelWhile__ExtraDataTtypebool____8__INPUT_DATA_LATENCY22(
	input clk,
	input wire rst,
	output /*mux_wire*/ logic may_start,
	output /*mux_wire*/ logic finish,
	output /*mux_wire*/ logic[6:0] iteration_count,
	output /*mux_wire*/ logic[7:0] extra_data_o,
	input wire start,
	input wire[31:0] r,
	input wire[31:0] i,
	input wire[7:0] extra_data
);

/*latency*/ logic _start_D1; always_ff @(posedge clk) begin _start_D1 <= start; end
/*latency*/ logic _start_D2; always_ff @(posedge clk) begin _start_D2 <= _start_D1; end
/*latency*/ logic _start_D3; always_ff @(posedge clk) begin _start_D3 <= _start_D2; end
/*latency*/ logic _start_D4; always_ff @(posedge clk) begin _start_D4 <= _start_D3; end
/*latency*/ logic _start_D5; always_ff @(posedge clk) begin _start_D5 <= _start_D4; end
/*latency*/ logic _start_D6; always_ff @(posedge clk) begin _start_D6 <= _start_D5; end
/*latency*/ logic _start_D7; always_ff @(posedge clk) begin _start_D7 <= _start_D6; end
/*latency*/ logic _start_D8; always_ff @(posedge clk) begin _start_D8 <= _start_D7; end
/*latency*/ logic _start_D9; always_ff @(posedge clk) begin _start_D9 <= _start_D8; end
/*latency*/ logic _start_D10; always_ff @(posedge clk) begin _start_D10 <= _start_D9; end
/*latency*/ logic _start_D11; always_ff @(posedge clk) begin _start_D11 <= _start_D10; end
/*latency*/ logic _start_D12; always_ff @(posedge clk) begin _start_D12 <= _start_D11; end
/*latency*/ logic _start_D13; always_ff @(posedge clk) begin _start_D13 <= _start_D12; end
/*latency*/ logic _start_D14; always_ff @(posedge clk) begin _start_D14 <= _start_D13; end
/*latency*/ logic _start_D15; always_ff @(posedge clk) begin _start_D15 <= _start_D14; end
/*latency*/ logic _start_D16; always_ff @(posedge clk) begin _start_D16 <= _start_D15; end
/*latency*/ logic _start_D17; always_ff @(posedge clk) begin _start_D17 <= _start_D16; end
/*latency*/ logic _start_D18; always_ff @(posedge clk) begin _start_D18 <= _start_D17; end
/*latency*/ logic _start_D19; always_ff @(posedge clk) begin _start_D19 <= _start_D18; end
/*latency*/ logic _start_D20; always_ff @(posedge clk) begin _start_D20 <= _start_D19; end
/*latency*/ logic _start_D21; always_ff @(posedge clk) begin _start_D21 <= _start_D20; end
/*latency*/ logic _start_D22; always_ff @(posedge clk) begin _start_D22 <= _start_D21; end
/*latency*/ logic _start_D23; always_ff @(posedge clk) begin _start_D23 <= _start_D22; end
/*latency*/ logic _start_D24; always_ff @(posedge clk) begin _start_D24 <= _start_D23; end
/*latency*/ logic _start_D25; always_ff @(posedge clk) begin _start_D25 <= _start_D24; end
/*latency*/ logic _start_D26; always_ff @(posedge clk) begin _start_D26 <= _start_D25; end
/*latency*/ logic _start_D27; always_ff @(posedge clk) begin _start_D27 <= _start_D26; end
/*latency*/ logic _start_D28; always_ff @(posedge clk) begin _start_D28 <= _start_D27; end
/*latency*/ logic _start_D29; always_ff @(posedge clk) begin _start_D29 <= _start_D28; end
/*latency*/ logic _start_D30; always_ff @(posedge clk) begin _start_D30 <= _start_D29; end
/*latency*/ logic _start_D31; always_ff @(posedge clk) begin _start_D31 <= _start_D30; end
/*latency*/ logic _start_D32; always_ff @(posedge clk) begin _start_D32 <= _start_D31; end
/*latency*/ logic _start_D33; always_ff @(posedge clk) begin _start_D33 <= _start_D32; end
/*latency*/ logic _start_D34; always_ff @(posedge clk) begin _start_D34 <= _start_D33; end
/*latency*/ logic _start_D35; always_ff @(posedge clk) begin _start_D35 <= _start_D34; end
/*latency*/ logic _start_D36; always_ff @(posedge clk) begin _start_D36 <= _start_D35; end
/*latency*/ logic _start_D37; always_ff @(posedge clk) begin _start_D37 <= _start_D36; end
/*latency*/ logic _start_D38; always_ff @(posedge clk) begin _start_D38 <= _start_D37; end
/*latency*/ logic _start_D39; always_ff @(posedge clk) begin _start_D39 <= _start_D38; end
/*latency*/ logic _start_D40; always_ff @(posedge clk) begin _start_D40 <= _start_D39; end
/*latency*/ logic _start_D41; always_ff @(posedge clk) begin _start_D41 <= _start_D40; end
/*latency*/ logic _start_D42; always_ff @(posedge clk) begin _start_D42 <= _start_D41; end
/*latency*/ logic _start_D43; always_ff @(posedge clk) begin _start_D43 <= _start_D42; end
/*latency*/ logic _start_D44; always_ff @(posedge clk) begin _start_D44 <= _start_D43; end
/*latency*/ logic _start_D45; always_ff @(posedge clk) begin _start_D45 <= _start_D44; end
/*latency*/ logic _start_D46; always_ff @(posedge clk) begin _start_D46 <= _start_D45; end
/*latency*/ logic _start_D47; always_ff @(posedge clk) begin _start_D47 <= _start_D46; end
/*latency*/ logic _start_D48; always_ff @(posedge clk) begin _start_D48 <= _start_D47; end
/*latency*/ logic _start_D49; always_ff @(posedge clk) begin _start_D49 <= _start_D48; end
/*latency*/ logic _start_D50; always_ff @(posedge clk) begin _start_D50 <= _start_D49; end
/*latency*/ logic _start_D51; always_ff @(posedge clk) begin _start_D51 <= _start_D50; end
/*mux_wire*/ logic _iter_rst;
wire _iter_may_start;
/*mux_wire*/ logic[31:0] zero;
/*mux_wire*/ logic _fp_fromint_fp_fromint;
/*mux_wire*/ logic signed[31:0] _fp_fromint_a;
wire[31:0] _fp_fromint_result;
/*mux_wire*/ logic _iter_start;
/*mux_wire*/ logic _z_r_init;
/*mux_wire*/ logic[31:0] _z_r_initial_data;
/*mux_wire*/ logic _z_i_init;
/*mux_wire*/ logic[31:0] _z_i_initial_data;
/*mux_wire*/ logic _c_r_init;
/*mux_wire*/ logic[31:0] _c_r_initial_data;
/*mux_wire*/ logic _c_i_init;
/*mux_wire*/ logic[31:0] _c_i_initial_data;
/*mux_wire*/ logic _iteration_init;
/*mux_wire*/ logic[6:0] _iteration_initial_data;
/*mux_wire*/ logic _extra_data_st_init;
/*mux_wire*/ logic[7:0] _extra_data_st_initial_data;
wire _iter_iter;
/*latency*/ logic __iter_iter_D1; always_ff @(posedge clk) begin __iter_iter_D1 <= _iter_iter; end
/*latency*/ logic __iter_iter_D2; always_ff @(posedge clk) begin __iter_iter_D2 <= __iter_iter_D1; end
/*latency*/ logic __iter_iter_D3; always_ff @(posedge clk) begin __iter_iter_D3 <= __iter_iter_D2; end
/*latency*/ logic __iter_iter_D4; always_ff @(posedge clk) begin __iter_iter_D4 <= __iter_iter_D3; end
/*latency*/ logic __iter_iter_D5; always_ff @(posedge clk) begin __iter_iter_D5 <= __iter_iter_D4; end
/*latency*/ logic __iter_iter_D6; always_ff @(posedge clk) begin __iter_iter_D6 <= __iter_iter_D5; end
/*latency*/ logic __iter_iter_D7; always_ff @(posedge clk) begin __iter_iter_D7 <= __iter_iter_D6; end
/*latency*/ logic __iter_iter_D8; always_ff @(posedge clk) begin __iter_iter_D8 <= __iter_iter_D7; end
/*latency*/ logic __iter_iter_D9; always_ff @(posedge clk) begin __iter_iter_D9 <= __iter_iter_D8; end
/*latency*/ logic __iter_iter_D10; always_ff @(posedge clk) begin __iter_iter_D10 <= __iter_iter_D9; end
/*latency*/ logic __iter_iter_D11; always_ff @(posedge clk) begin __iter_iter_D11 <= __iter_iter_D10; end
/*latency*/ logic __iter_iter_D12; always_ff @(posedge clk) begin __iter_iter_D12 <= __iter_iter_D11; end
/*latency*/ logic __iter_iter_D13; always_ff @(posedge clk) begin __iter_iter_D13 <= __iter_iter_D12; end
/*latency*/ logic __iter_iter_D14; always_ff @(posedge clk) begin __iter_iter_D14 <= __iter_iter_D13; end
/*latency*/ logic __iter_iter_D15; always_ff @(posedge clk) begin __iter_iter_D15 <= __iter_iter_D14; end
/*latency*/ logic __iter_iter_D16; always_ff @(posedge clk) begin __iter_iter_D16 <= __iter_iter_D15; end
/*latency*/ logic __iter_iter_D17; always_ff @(posedge clk) begin __iter_iter_D17 <= __iter_iter_D16; end
/*latency*/ logic __iter_iter_D18; always_ff @(posedge clk) begin __iter_iter_D18 <= __iter_iter_D17; end
/*latency*/ logic __iter_iter_D19; always_ff @(posedge clk) begin __iter_iter_D19 <= __iter_iter_D18; end
/*latency*/ logic __iter_iter_D20; always_ff @(posedge clk) begin __iter_iter_D20 <= __iter_iter_D19; end
/*latency*/ logic __iter_iter_D21; always_ff @(posedge clk) begin __iter_iter_D21 <= __iter_iter_D20; end
/*latency*/ logic __iter_iter_D22; always_ff @(posedge clk) begin __iter_iter_D22 <= __iter_iter_D21; end
/*latency*/ logic __iter_iter_D23; always_ff @(posedge clk) begin __iter_iter_D23 <= __iter_iter_D22; end
/*latency*/ logic __iter_iter_D24; always_ff @(posedge clk) begin __iter_iter_D24 <= __iter_iter_D23; end
/*latency*/ logic __iter_iter_D25; always_ff @(posedge clk) begin __iter_iter_D25 <= __iter_iter_D24; end
/*latency*/ logic __iter_iter_D26; always_ff @(posedge clk) begin __iter_iter_D26 <= __iter_iter_D25; end
/*latency*/ logic __iter_iter_D27; always_ff @(posedge clk) begin __iter_iter_D27 <= __iter_iter_D26; end
/*latency*/ logic __iter_iter_D28; always_ff @(posedge clk) begin __iter_iter_D28 <= __iter_iter_D27; end
/*latency*/ logic __iter_iter_D29; always_ff @(posedge clk) begin __iter_iter_D29 <= __iter_iter_D28; end
/*latency*/ logic __iter_iter_D30; always_ff @(posedge clk) begin __iter_iter_D30 <= __iter_iter_D29; end
/*latency*/ logic __iter_iter_D31; always_ff @(posedge clk) begin __iter_iter_D31 <= __iter_iter_D30; end
/*latency*/ logic __iter_iter_D32; always_ff @(posedge clk) begin __iter_iter_D32 <= __iter_iter_D31; end
/*latency*/ logic __iter_iter_D33; always_ff @(posedge clk) begin __iter_iter_D33 <= __iter_iter_D32; end
/*latency*/ logic __iter_iter_D34; always_ff @(posedge clk) begin __iter_iter_D34 <= __iter_iter_D33; end
/*latency*/ logic __iter_iter_D35; always_ff @(posedge clk) begin __iter_iter_D35 <= __iter_iter_D34; end
/*latency*/ logic __iter_iter_D36; always_ff @(posedge clk) begin __iter_iter_D36 <= __iter_iter_D35; end
/*latency*/ logic __iter_iter_D37; always_ff @(posedge clk) begin __iter_iter_D37 <= __iter_iter_D36; end
/*latency*/ logic __iter_iter_D38; always_ff @(posedge clk) begin __iter_iter_D38 <= __iter_iter_D37; end
/*latency*/ logic __iter_iter_D39; always_ff @(posedge clk) begin __iter_iter_D39 <= __iter_iter_D38; end
/*latency*/ logic __iter_iter_D40; always_ff @(posedge clk) begin __iter_iter_D40 <= __iter_iter_D39; end
/*latency*/ logic __iter_iter_D41; always_ff @(posedge clk) begin __iter_iter_D41 <= __iter_iter_D40; end
/*latency*/ logic __iter_iter_D42; always_ff @(posedge clk) begin __iter_iter_D42 <= __iter_iter_D41; end
/*latency*/ logic __iter_iter_D43; always_ff @(posedge clk) begin __iter_iter_D43 <= __iter_iter_D42; end
/*latency*/ logic __iter_iter_D44; always_ff @(posedge clk) begin __iter_iter_D44 <= __iter_iter_D43; end
/*latency*/ logic __iter_iter_D45; always_ff @(posedge clk) begin __iter_iter_D45 <= __iter_iter_D44; end
/*latency*/ logic __iter_iter_D46; always_ff @(posedge clk) begin __iter_iter_D46 <= __iter_iter_D45; end
/*latency*/ logic __iter_iter_D47; always_ff @(posedge clk) begin __iter_iter_D47 <= __iter_iter_D46; end
/*latency*/ logic __iter_iter_D48; always_ff @(posedge clk) begin __iter_iter_D48 <= __iter_iter_D47; end
/*latency*/ logic __iter_iter_D49; always_ff @(posedge clk) begin __iter_iter_D49 <= __iter_iter_D48; end
/*latency*/ logic __iter_iter_D50; always_ff @(posedge clk) begin __iter_iter_D50 <= __iter_iter_D49; end
/*latency*/ logic __iter_iter_D51; always_ff @(posedge clk) begin __iter_iter_D51 <= __iter_iter_D50; end
/*latency*/ logic __iter_iter_D52; always_ff @(posedge clk) begin __iter_iter_D52 <= __iter_iter_D51; end
/*latency*/ logic __iter_iter_D53; always_ff @(posedge clk) begin __iter_iter_D53 <= __iter_iter_D52; end
wire[6:0] _iter_cur_iter;
/*mux_wire*/ logic[6:0] sentinel;
/*latency*/ logic[6:0] _sentinel_D1; always_ff @(posedge clk) begin _sentinel_D1 <= sentinel; end
/*latency*/ logic[6:0] _sentinel_D2; always_ff @(posedge clk) begin _sentinel_D2 <= _sentinel_D1; end
/*latency*/ logic[6:0] _sentinel_D3; always_ff @(posedge clk) begin _sentinel_D3 <= _sentinel_D2; end
/*latency*/ logic[6:0] _sentinel_D4; always_ff @(posedge clk) begin _sentinel_D4 <= _sentinel_D3; end
/*latency*/ logic[6:0] _sentinel_D5; always_ff @(posedge clk) begin _sentinel_D5 <= _sentinel_D4; end
/*latency*/ logic[6:0] _sentinel_D6; always_ff @(posedge clk) begin _sentinel_D6 <= _sentinel_D5; end
/*latency*/ logic[6:0] _sentinel_D7; always_ff @(posedge clk) begin _sentinel_D7 <= _sentinel_D6; end
/*latency*/ logic[6:0] _sentinel_D8; always_ff @(posedge clk) begin _sentinel_D8 <= _sentinel_D7; end
/*latency*/ logic[6:0] _sentinel_D9; always_ff @(posedge clk) begin _sentinel_D9 <= _sentinel_D8; end
/*latency*/ logic[6:0] _sentinel_D10; always_ff @(posedge clk) begin _sentinel_D10 <= _sentinel_D9; end
/*latency*/ logic[6:0] _sentinel_D11; always_ff @(posedge clk) begin _sentinel_D11 <= _sentinel_D10; end
/*latency*/ logic[6:0] _sentinel_D12; always_ff @(posedge clk) begin _sentinel_D12 <= _sentinel_D11; end
/*latency*/ logic[6:0] _sentinel_D13; always_ff @(posedge clk) begin _sentinel_D13 <= _sentinel_D12; end
/*latency*/ logic[6:0] _sentinel_D14; always_ff @(posedge clk) begin _sentinel_D14 <= _sentinel_D13; end
/*latency*/ logic[6:0] _sentinel_D15; always_ff @(posedge clk) begin _sentinel_D15 <= _sentinel_D14; end
/*latency*/ logic[6:0] _sentinel_D16; always_ff @(posedge clk) begin _sentinel_D16 <= _sentinel_D15; end
/*latency*/ logic[6:0] _sentinel_D17; always_ff @(posedge clk) begin _sentinel_D17 <= _sentinel_D16; end
/*latency*/ logic[6:0] _sentinel_D18; always_ff @(posedge clk) begin _sentinel_D18 <= _sentinel_D17; end
/*latency*/ logic[6:0] _sentinel_D19; always_ff @(posedge clk) begin _sentinel_D19 <= _sentinel_D18; end
/*latency*/ logic[6:0] _sentinel_D20; always_ff @(posedge clk) begin _sentinel_D20 <= _sentinel_D19; end
/*latency*/ logic[6:0] _sentinel_D21; always_ff @(posedge clk) begin _sentinel_D21 <= _sentinel_D20; end
/*latency*/ logic[6:0] _sentinel_D22; always_ff @(posedge clk) begin _sentinel_D22 <= _sentinel_D21; end
/*latency*/ logic[6:0] _sentinel_D23; always_ff @(posedge clk) begin _sentinel_D23 <= _sentinel_D22; end
/*latency*/ logic[6:0] _sentinel_D24; always_ff @(posedge clk) begin _sentinel_D24 <= _sentinel_D23; end
/*latency*/ logic[6:0] _sentinel_D25; always_ff @(posedge clk) begin _sentinel_D25 <= _sentinel_D24; end
/*latency*/ logic[6:0] _sentinel_D26; always_ff @(posedge clk) begin _sentinel_D26 <= _sentinel_D25; end
/*latency*/ logic[6:0] _sentinel_D27; always_ff @(posedge clk) begin _sentinel_D27 <= _sentinel_D26; end
/*latency*/ logic[6:0] _sentinel_D28; always_ff @(posedge clk) begin _sentinel_D28 <= _sentinel_D27; end
/*latency*/ logic[6:0] _sentinel_D29; always_ff @(posedge clk) begin _sentinel_D29 <= _sentinel_D28; end
/*latency*/ logic[6:0] _sentinel_D30; always_ff @(posedge clk) begin _sentinel_D30 <= _sentinel_D29; end
/*latency*/ logic[6:0] _sentinel_D31; always_ff @(posedge clk) begin _sentinel_D31 <= _sentinel_D30; end
/*latency*/ logic[6:0] _sentinel_D32; always_ff @(posedge clk) begin _sentinel_D32 <= _sentinel_D31; end
/*latency*/ logic[6:0] _sentinel_D33; always_ff @(posedge clk) begin _sentinel_D33 <= _sentinel_D32; end
/*latency*/ logic[6:0] _sentinel_D34; always_ff @(posedge clk) begin _sentinel_D34 <= _sentinel_D33; end
/*latency*/ logic[6:0] _sentinel_D35; always_ff @(posedge clk) begin _sentinel_D35 <= _sentinel_D34; end
/*latency*/ logic[6:0] _sentinel_D36; always_ff @(posedge clk) begin _sentinel_D36 <= _sentinel_D35; end
/*latency*/ logic[6:0] _sentinel_D37; always_ff @(posedge clk) begin _sentinel_D37 <= _sentinel_D36; end
/*latency*/ logic[6:0] _sentinel_D38; always_ff @(posedge clk) begin _sentinel_D38 <= _sentinel_D37; end
/*latency*/ logic[6:0] _sentinel_D39; always_ff @(posedge clk) begin _sentinel_D39 <= _sentinel_D38; end
/*latency*/ logic[6:0] _sentinel_D40; always_ff @(posedge clk) begin _sentinel_D40 <= _sentinel_D39; end
/*latency*/ logic[6:0] _sentinel_D41; always_ff @(posedge clk) begin _sentinel_D41 <= _sentinel_D40; end
/*latency*/ logic[6:0] _sentinel_D42; always_ff @(posedge clk) begin _sentinel_D42 <= _sentinel_D41; end
/*latency*/ logic[6:0] _sentinel_D43; always_ff @(posedge clk) begin _sentinel_D43 <= _sentinel_D42; end
/*latency*/ logic[6:0] _sentinel_D44; always_ff @(posedge clk) begin _sentinel_D44 <= _sentinel_D43; end
/*latency*/ logic[6:0] _sentinel_D45; always_ff @(posedge clk) begin _sentinel_D45 <= _sentinel_D44; end
/*latency*/ logic[6:0] _sentinel_D46; always_ff @(posedge clk) begin _sentinel_D46 <= _sentinel_D45; end
/*latency*/ logic[6:0] _sentinel_D47; always_ff @(posedge clk) begin _sentinel_D47 <= _sentinel_D46; end
/*latency*/ logic[6:0] _sentinel_D48; always_ff @(posedge clk) begin _sentinel_D48 <= _sentinel_D47; end
/*latency*/ logic[6:0] _sentinel_D49; always_ff @(posedge clk) begin _sentinel_D49 <= _sentinel_D48; end
/*latency*/ logic[6:0] _sentinel_D50; always_ff @(posedge clk) begin _sentinel_D50 <= _sentinel_D49; end
/*latency*/ logic[6:0] _sentinel_D51; always_ff @(posedge clk) begin _sentinel_D51 <= _sentinel_D50; end
/*mux_wire*/ logic _z_r_link;
/*mux_wire*/ logic[6:0] _z_r_cur_iter_id;
/*mux_wire*/ logic _z_i_link;
/*mux_wire*/ logic[6:0] _z_i_cur_iter_id;
/*mux_wire*/ logic _c_r_link;
/*mux_wire*/ logic[6:0] _c_r_cur_iter_id;
/*mux_wire*/ logic _c_i_link;
/*mux_wire*/ logic[6:0] _c_i_cur_iter_id;
/*mux_wire*/ logic _iteration_link;
/*mux_wire*/ logic[6:0] _iteration_cur_iter_id;
/*mux_wire*/ logic _extra_data_st_link;
/*mux_wire*/ logic[6:0] _extra_data_st_cur_iter_id;
/*mux_wire*/ logic is_done;
wire[31:0] _z_r_old;
wire[31:0] _z_i_old;
wire[31:0] _c_r_old;
/*latency*/ logic[31:0] __c_r_old_D4; always_ff @(posedge clk) begin __c_r_old_D4 <= _c_r_old; end
/*latency*/ logic[31:0] __c_r_old_D5; always_ff @(posedge clk) begin __c_r_old_D5 <= __c_r_old_D4; end
/*latency*/ logic[31:0] __c_r_old_D6; always_ff @(posedge clk) begin __c_r_old_D6 <= __c_r_old_D5; end
/*latency*/ logic[31:0] __c_r_old_D7; always_ff @(posedge clk) begin __c_r_old_D7 <= __c_r_old_D6; end
/*latency*/ logic[31:0] __c_r_old_D8; always_ff @(posedge clk) begin __c_r_old_D8 <= __c_r_old_D7; end
/*latency*/ logic[31:0] __c_r_old_D9; always_ff @(posedge clk) begin __c_r_old_D9 <= __c_r_old_D8; end
/*latency*/ logic[31:0] __c_r_old_D10; always_ff @(posedge clk) begin __c_r_old_D10 <= __c_r_old_D9; end
/*latency*/ logic[31:0] __c_r_old_D11; always_ff @(posedge clk) begin __c_r_old_D11 <= __c_r_old_D10; end
/*latency*/ logic[31:0] __c_r_old_D12; always_ff @(posedge clk) begin __c_r_old_D12 <= __c_r_old_D11; end
/*latency*/ logic[31:0] __c_r_old_D13; always_ff @(posedge clk) begin __c_r_old_D13 <= __c_r_old_D12; end
/*latency*/ logic[31:0] __c_r_old_D14; always_ff @(posedge clk) begin __c_r_old_D14 <= __c_r_old_D13; end
/*latency*/ logic[31:0] __c_r_old_D15; always_ff @(posedge clk) begin __c_r_old_D15 <= __c_r_old_D14; end
/*latency*/ logic[31:0] __c_r_old_D16; always_ff @(posedge clk) begin __c_r_old_D16 <= __c_r_old_D15; end
/*latency*/ logic[31:0] __c_r_old_D17; always_ff @(posedge clk) begin __c_r_old_D17 <= __c_r_old_D16; end
/*latency*/ logic[31:0] __c_r_old_D18; always_ff @(posedge clk) begin __c_r_old_D18 <= __c_r_old_D17; end
/*latency*/ logic[31:0] __c_r_old_D19; always_ff @(posedge clk) begin __c_r_old_D19 <= __c_r_old_D18; end
/*latency*/ logic[31:0] __c_r_old_D20; always_ff @(posedge clk) begin __c_r_old_D20 <= __c_r_old_D19; end
/*latency*/ logic[31:0] __c_r_old_D21; always_ff @(posedge clk) begin __c_r_old_D21 <= __c_r_old_D20; end
wire[31:0] _c_i_old;
/*latency*/ logic[31:0] __c_i_old_D4; always_ff @(posedge clk) begin __c_i_old_D4 <= _c_i_old; end
/*latency*/ logic[31:0] __c_i_old_D5; always_ff @(posedge clk) begin __c_i_old_D5 <= __c_i_old_D4; end
/*latency*/ logic[31:0] __c_i_old_D6; always_ff @(posedge clk) begin __c_i_old_D6 <= __c_i_old_D5; end
/*latency*/ logic[31:0] __c_i_old_D7; always_ff @(posedge clk) begin __c_i_old_D7 <= __c_i_old_D6; end
/*latency*/ logic[31:0] __c_i_old_D8; always_ff @(posedge clk) begin __c_i_old_D8 <= __c_i_old_D7; end
/*latency*/ logic[31:0] __c_i_old_D9; always_ff @(posedge clk) begin __c_i_old_D9 <= __c_i_old_D8; end
/*latency*/ logic[31:0] __c_i_old_D10; always_ff @(posedge clk) begin __c_i_old_D10 <= __c_i_old_D9; end
/*latency*/ logic[31:0] __c_i_old_D11; always_ff @(posedge clk) begin __c_i_old_D11 <= __c_i_old_D10; end
/*latency*/ logic[31:0] __c_i_old_D12; always_ff @(posedge clk) begin __c_i_old_D12 <= __c_i_old_D11; end
/*latency*/ logic[31:0] __c_i_old_D13; always_ff @(posedge clk) begin __c_i_old_D13 <= __c_i_old_D12; end
/*latency*/ logic[31:0] __c_i_old_D14; always_ff @(posedge clk) begin __c_i_old_D14 <= __c_i_old_D13; end
/*latency*/ logic[31:0] __c_i_old_D15; always_ff @(posedge clk) begin __c_i_old_D15 <= __c_i_old_D14; end
/*latency*/ logic[31:0] __c_i_old_D16; always_ff @(posedge clk) begin __c_i_old_D16 <= __c_i_old_D15; end
/*latency*/ logic[31:0] __c_i_old_D17; always_ff @(posedge clk) begin __c_i_old_D17 <= __c_i_old_D16; end
/*latency*/ logic[31:0] __c_i_old_D18; always_ff @(posedge clk) begin __c_i_old_D18 <= __c_i_old_D17; end
/*latency*/ logic[31:0] __c_i_old_D19; always_ff @(posedge clk) begin __c_i_old_D19 <= __c_i_old_D18; end
/*latency*/ logic[31:0] __c_i_old_D20; always_ff @(posedge clk) begin __c_i_old_D20 <= __c_i_old_D19; end
/*latency*/ logic[31:0] __c_i_old_D21; always_ff @(posedge clk) begin __c_i_old_D21 <= __c_i_old_D20; end
/*mux_wire*/ logic _MandelbrotStep_MandelbrotStep;
/*mux_wire*/ logic[31:0] _MandelbrotStep_z_r;
/*mux_wire*/ logic[31:0] _MandelbrotStep_z_i;
/*mux_wire*/ logic[31:0] _MandelbrotStep_c_r;
/*mux_wire*/ logic[31:0] _MandelbrotStep_c_i;
wire[31:0] _MandelbrotStep_new_z_r;
wire[31:0] _MandelbrotStep_new_z_i;
wire _MandelbrotStep_is_done;
/*mux_wire*/ logic[31:0] _z_r_new;
/*mux_wire*/ logic[31:0] _z_i_new;
wire[6:0] _iteration_old;
wire[7:0] _extra_data_st_old;
/*latency*/ logic[7:0] __extra_data_st_old_D4; always_ff @(posedge clk) begin __extra_data_st_old_D4 <= _extra_data_st_old; end
/*latency*/ logic[7:0] __extra_data_st_old_D5; always_ff @(posedge clk) begin __extra_data_st_old_D5 <= __extra_data_st_old_D4; end
/*latency*/ logic[7:0] __extra_data_st_old_D6; always_ff @(posedge clk) begin __extra_data_st_old_D6 <= __extra_data_st_old_D5; end
/*latency*/ logic[7:0] __extra_data_st_old_D7; always_ff @(posedge clk) begin __extra_data_st_old_D7 <= __extra_data_st_old_D6; end
/*latency*/ logic[7:0] __extra_data_st_old_D8; always_ff @(posedge clk) begin __extra_data_st_old_D8 <= __extra_data_st_old_D7; end
/*latency*/ logic[7:0] __extra_data_st_old_D9; always_ff @(posedge clk) begin __extra_data_st_old_D9 <= __extra_data_st_old_D8; end
/*latency*/ logic[7:0] __extra_data_st_old_D10; always_ff @(posedge clk) begin __extra_data_st_old_D10 <= __extra_data_st_old_D9; end
/*latency*/ logic[7:0] __extra_data_st_old_D11; always_ff @(posedge clk) begin __extra_data_st_old_D11 <= __extra_data_st_old_D10; end
/*latency*/ logic[7:0] __extra_data_st_old_D12; always_ff @(posedge clk) begin __extra_data_st_old_D12 <= __extra_data_st_old_D11; end
/*latency*/ logic[7:0] __extra_data_st_old_D13; always_ff @(posedge clk) begin __extra_data_st_old_D13 <= __extra_data_st_old_D12; end
/*latency*/ logic[7:0] __extra_data_st_old_D14; always_ff @(posedge clk) begin __extra_data_st_old_D14 <= __extra_data_st_old_D13; end
/*latency*/ logic[7:0] __extra_data_st_old_D15; always_ff @(posedge clk) begin __extra_data_st_old_D15 <= __extra_data_st_old_D14; end
/*latency*/ logic[7:0] __extra_data_st_old_D16; always_ff @(posedge clk) begin __extra_data_st_old_D16 <= __extra_data_st_old_D15; end
/*latency*/ logic[7:0] __extra_data_st_old_D17; always_ff @(posedge clk) begin __extra_data_st_old_D17 <= __extra_data_st_old_D16; end
/*latency*/ logic[7:0] __extra_data_st_old_D18; always_ff @(posedge clk) begin __extra_data_st_old_D18 <= __extra_data_st_old_D17; end
/*latency*/ logic[7:0] __extra_data_st_old_D19; always_ff @(posedge clk) begin __extra_data_st_old_D19 <= __extra_data_st_old_D18; end
/*latency*/ logic[7:0] __extra_data_st_old_D20; always_ff @(posedge clk) begin __extra_data_st_old_D20 <= __extra_data_st_old_D19; end
/*latency*/ logic[7:0] __extra_data_st_old_D21; always_ff @(posedge clk) begin __extra_data_st_old_D21 <= __extra_data_st_old_D20; end
/*latency*/ logic[7:0] __extra_data_st_old_D22; always_ff @(posedge clk) begin __extra_data_st_old_D22 <= __extra_data_st_old_D21; end
/*latency*/ logic[7:0] __extra_data_st_old_D23; always_ff @(posedge clk) begin __extra_data_st_old_D23 <= __extra_data_st_old_D22; end
/*latency*/ logic[7:0] __extra_data_st_old_D24; always_ff @(posedge clk) begin __extra_data_st_old_D24 <= __extra_data_st_old_D23; end
/*latency*/ logic[7:0] __extra_data_st_old_D25; always_ff @(posedge clk) begin __extra_data_st_old_D25 <= __extra_data_st_old_D24; end
/*latency*/ logic[7:0] __extra_data_st_old_D26; always_ff @(posedge clk) begin __extra_data_st_old_D26 <= __extra_data_st_old_D25; end
/*latency*/ logic[7:0] __extra_data_st_old_D27; always_ff @(posedge clk) begin __extra_data_st_old_D27 <= __extra_data_st_old_D26; end
/*latency*/ logic[7:0] __extra_data_st_old_D28; always_ff @(posedge clk) begin __extra_data_st_old_D28 <= __extra_data_st_old_D27; end
/*latency*/ logic[7:0] __extra_data_st_old_D29; always_ff @(posedge clk) begin __extra_data_st_old_D29 <= __extra_data_st_old_D28; end
/*latency*/ logic[7:0] __extra_data_st_old_D30; always_ff @(posedge clk) begin __extra_data_st_old_D30 <= __extra_data_st_old_D29; end
/*latency*/ logic[7:0] __extra_data_st_old_D31; always_ff @(posedge clk) begin __extra_data_st_old_D31 <= __extra_data_st_old_D30; end
/*latency*/ logic[7:0] __extra_data_st_old_D32; always_ff @(posedge clk) begin __extra_data_st_old_D32 <= __extra_data_st_old_D31; end
/*latency*/ logic[7:0] __extra_data_st_old_D33; always_ff @(posedge clk) begin __extra_data_st_old_D33 <= __extra_data_st_old_D32; end
/*latency*/ logic[7:0] __extra_data_st_old_D34; always_ff @(posedge clk) begin __extra_data_st_old_D34 <= __extra_data_st_old_D33; end
/*latency*/ logic[7:0] __extra_data_st_old_D35; always_ff @(posedge clk) begin __extra_data_st_old_D35 <= __extra_data_st_old_D34; end
/*latency*/ logic[7:0] __extra_data_st_old_D36; always_ff @(posedge clk) begin __extra_data_st_old_D36 <= __extra_data_st_old_D35; end
/*latency*/ logic[7:0] __extra_data_st_old_D37; always_ff @(posedge clk) begin __extra_data_st_old_D37 <= __extra_data_st_old_D36; end
/*latency*/ logic[7:0] __extra_data_st_old_D38; always_ff @(posedge clk) begin __extra_data_st_old_D38 <= __extra_data_st_old_D37; end
/*latency*/ logic[7:0] __extra_data_st_old_D39; always_ff @(posedge clk) begin __extra_data_st_old_D39 <= __extra_data_st_old_D38; end
/*latency*/ logic[7:0] __extra_data_st_old_D40; always_ff @(posedge clk) begin __extra_data_st_old_D40 <= __extra_data_st_old_D39; end
/*latency*/ logic[7:0] __extra_data_st_old_D41; always_ff @(posedge clk) begin __extra_data_st_old_D41 <= __extra_data_st_old_D40; end
/*latency*/ logic[7:0] __extra_data_st_old_D42; always_ff @(posedge clk) begin __extra_data_st_old_D42 <= __extra_data_st_old_D41; end
/*latency*/ logic[7:0] __extra_data_st_old_D43; always_ff @(posedge clk) begin __extra_data_st_old_D43 <= __extra_data_st_old_D42; end
/*latency*/ logic[7:0] __extra_data_st_old_D44; always_ff @(posedge clk) begin __extra_data_st_old_D44 <= __extra_data_st_old_D43; end
/*latency*/ logic[7:0] __extra_data_st_old_D45; always_ff @(posedge clk) begin __extra_data_st_old_D45 <= __extra_data_st_old_D44; end
/*latency*/ logic[7:0] __extra_data_st_old_D46; always_ff @(posedge clk) begin __extra_data_st_old_D46 <= __extra_data_st_old_D45; end
/*latency*/ logic[7:0] __extra_data_st_old_D47; always_ff @(posedge clk) begin __extra_data_st_old_D47 <= __extra_data_st_old_D46; end
/*latency*/ logic[7:0] __extra_data_st_old_D48; always_ff @(posedge clk) begin __extra_data_st_old_D48 <= __extra_data_st_old_D47; end
/*latency*/ logic[7:0] __extra_data_st_old_D49; always_ff @(posedge clk) begin __extra_data_st_old_D49 <= __extra_data_st_old_D48; end
/*latency*/ logic[7:0] __extra_data_st_old_D50; always_ff @(posedge clk) begin __extra_data_st_old_D50 <= __extra_data_st_old_D49; end
/*latency*/ logic[7:0] __extra_data_st_old_D51; always_ff @(posedge clk) begin __extra_data_st_old_D51 <= __extra_data_st_old_D50; end
/*latency*/ logic[7:0] __extra_data_st_old_D52; always_ff @(posedge clk) begin __extra_data_st_old_D52 <= __extra_data_st_old_D51; end
/*latency*/ logic[7:0] __extra_data_st_old_D53; always_ff @(posedge clk) begin __extra_data_st_old_D53 <= __extra_data_st_old_D52; end
wire _59;
assign _59 = _iteration_old == 7'd99;
/*mux_wire*/ logic _iter_continue;
wire[6:0] _67;
assign _67 = _iteration_old + 1'd1;
/*mux_wire*/ logic[6:0] _unsafe_int_cast_in;
wire[6:0] _unsafe_int_cast_out;
/*mux_wire*/ logic[6:0] _iteration_new;
ParallelWhile__COMPUTATION_LATENCY53_REQUEST_DATA_LATENCY22 iter(
	.clk(clk),
	.rst(_iter_rst),
	.iter(_iter_iter),
	.cur_iter(_iter_cur_iter),
	.continue_1(_iter_continue),
	.may_start(_iter_may_start),
	.start(_iter_start)
);
ParallelWhileState__Ttypefloat____NUM_PARALLEL_STATES75_LATENCY32 z_r(
	.clk(clk),
	.link(_z_r_link),
	.cur_iter_id(_z_r_cur_iter_id),
	.old(_z_r_old),
	.init(_z_r_init),
	.initial_data(_z_r_initial_data),
	.new_1(_z_r_new)
);
ParallelWhileState__Ttypefloat____NUM_PARALLEL_STATES75_LATENCY32 z_i(
	.clk(clk),
	.link(_z_i_link),
	.cur_iter_id(_z_i_cur_iter_id),
	.old(_z_i_old),
	.init(_z_i_init),
	.initial_data(_z_i_initial_data),
	.new_1(_z_i_new)
);
ParallelWhileStore__Ttypefloat____NUM_PARALLEL_STATES75 c_r(
	.clk(clk),
	.link(_c_r_link),
	.cur_iter_id(_c_r_cur_iter_id),
	.old(_c_r_old),
	.init(_c_r_init),
	.initial_data(_c_r_initial_data)
);
ParallelWhileStore__Ttypefloat____NUM_PARALLEL_STATES75 c_i(
	.clk(clk),
	.link(_c_i_link),
	.cur_iter_id(_c_i_cur_iter_id),
	.old(_c_i_old),
	.init(_c_i_init),
	.initial_data(_c_i_initial_data)
);
ParallelWhileState__Ttypeint__FROM0_TO100__NUM_PARALLEL_STATES75_LATENCY2 iteration(
	.clk(clk),
	.link(_iteration_link),
	.cur_iter_id(_iteration_cur_iter_id),
	.old(_iteration_old),
	.init(_iteration_init),
	.initial_data(_iteration_initial_data),
	.new_1(_iteration_new)
);
ParallelWhileStore__Ttypebool____8__NUM_PARALLEL_STATES75 extra_data_st(
	.clk(clk),
	.link(_extra_data_st_link),
	.cur_iter_id(_extra_data_st_cur_iter_id),
	.old(_extra_data_st_old),
	.init(_extra_data_st_init),
	.initial_data(_extra_data_st_initial_data)
);
fp_fromint fp_fromint(
	.clk(clk),
	.fp_fromint(_fp_fromint_fp_fromint),
	.a(_fp_fromint_a),
	.result(_fp_fromint_result)
);
MandelbrotStep MandelbrotStep(
	.clk(clk),
	.MandelbrotStep(_MandelbrotStep_MandelbrotStep),
	.z_r(_MandelbrotStep_z_r),
	.z_i(_MandelbrotStep_z_i),
	.c_r(_MandelbrotStep_c_r),
	.c_i(_MandelbrotStep_c_i),
	.new_z_r(_MandelbrotStep_new_z_r),
	.new_z_i(_MandelbrotStep_new_z_i),
	.is_done(_MandelbrotStep_is_done)
);
unsafe_int_cast__FROM_I1_TO_I101_FROM0_TO100 unsafe_int_cast(
	.clk(clk),
	.in(_unsafe_int_cast_in),
	.out(_unsafe_int_cast_out)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_rst = 1'bx;
	_iter_rst = 1'b0;
	if(rst) _iter_rst = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_start = 1'bx;
	may_start = 1'b0;
	if(_iter_may_start) may_start = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	finish = 1'bx;
	finish = 1'b0;
	if(__iter_iter_D53) if(is_done) finish = 1'b1;
	if(__iter_iter_D53) if(!is_done) if(_59) finish = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iteration_count = 7'dx;
	if(__iter_iter_D53) if(is_done) iteration_count = _iteration_old;
	if(__iter_iter_D53) if(!is_done) if(_59) iteration_count = 7'd100;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	extra_data_o = 8'bxxxxxxxx;
	if(__iter_iter_D53) if(is_done) extra_data_o = __extra_data_st_old_D53;
	if(__iter_iter_D53) if(!is_done) if(_59) extra_data_o = __extra_data_st_old_D53;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	zero = 'x;
	zero = _fp_fromint_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_fromint_fp_fromint = 1'bx;
	_fp_fromint_fp_fromint = 1'b0;
	_fp_fromint_fp_fromint = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_fromint_a = 32'sdx;
	_fp_fromint_a = 1'd0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_start = 1'bx;
	_iter_start = 1'b0;
	if(start) _iter_start = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_r_init = 1'bx;
	_z_r_init = 1'b0;
	if(start) _z_r_init = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_r_initial_data = 'x;
	if(start) _z_r_initial_data = zero;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_i_init = 1'bx;
	_z_i_init = 1'b0;
	if(start) _z_i_init = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_i_initial_data = 'x;
	if(start) _z_i_initial_data = zero;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_r_init = 1'bx;
	_c_r_init = 1'b0;
	if(start) _c_r_init = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_r_initial_data = 'x;
	if(start) _c_r_initial_data = r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_i_init = 1'bx;
	_c_i_init = 1'b0;
	if(start) _c_i_init = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_i_initial_data = 'x;
	if(start) _c_i_initial_data = i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iteration_init = 1'bx;
	_iteration_init = 1'b0;
	if(_start_D51) _iteration_init = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iteration_initial_data = 7'dx;
	if(_start_D51) _iteration_initial_data = 1'd0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_extra_data_st_init = 1'bx;
	_extra_data_st_init = 1'b0;
	if(start) _extra_data_st_init = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_extra_data_st_initial_data = 8'bxxxxxxxx;
	if(start) _extra_data_st_initial_data = extra_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	sentinel = 7'dx;
	if(_iter_iter) sentinel = _iter_cur_iter;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_r_link = 1'bx;
	_z_r_link = 1'b0;
	if(_iter_iter) _z_r_link = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_r_cur_iter_id = 7'dx;
	if(_iter_iter) _z_r_cur_iter_id = sentinel;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_i_link = 1'bx;
	_z_i_link = 1'b0;
	if(_iter_iter) _z_i_link = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_i_cur_iter_id = 7'dx;
	if(_iter_iter) _z_i_cur_iter_id = sentinel;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_r_link = 1'bx;
	_c_r_link = 1'b0;
	if(_iter_iter) _c_r_link = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_r_cur_iter_id = 7'dx;
	if(_iter_iter) _c_r_cur_iter_id = sentinel;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_i_link = 1'bx;
	_c_i_link = 1'b0;
	if(_iter_iter) _c_i_link = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_i_cur_iter_id = 7'dx;
	if(_iter_iter) _c_i_cur_iter_id = sentinel;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iteration_link = 1'bx;
	_iteration_link = 1'b0;
	if(__iter_iter_D51) _iteration_link = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iteration_cur_iter_id = 7'dx;
	if(__iter_iter_D51) _iteration_cur_iter_id = _sentinel_D51;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_extra_data_st_link = 1'bx;
	_extra_data_st_link = 1'b0;
	if(_iter_iter) _extra_data_st_link = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_extra_data_st_cur_iter_id = 7'dx;
	if(_iter_iter) _extra_data_st_cur_iter_id = sentinel;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	is_done = 1'bx;
	if(__iter_iter_D53) is_done = _MandelbrotStep_is_done;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_MandelbrotStep_MandelbrotStep = 1'bx;
	_MandelbrotStep_MandelbrotStep = 1'b0;
	if(__iter_iter_D2) _MandelbrotStep_MandelbrotStep = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_MandelbrotStep_z_r = 'x;
	if(__iter_iter_D2) _MandelbrotStep_z_r = _z_r_old;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_MandelbrotStep_z_i = 'x;
	if(__iter_iter_D2) _MandelbrotStep_z_i = _z_i_old;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_MandelbrotStep_c_r = 'x;
	if(__iter_iter_D21) _MandelbrotStep_c_r = __c_r_old_D21;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_MandelbrotStep_c_i = 'x;
	if(__iter_iter_D21) _MandelbrotStep_c_i = __c_i_old_D21;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_r_new = 'x;
	if(__iter_iter_D32) _z_r_new = _MandelbrotStep_new_z_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_i_new = 'x;
	if(__iter_iter_D32) _z_i_new = _MandelbrotStep_new_z_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_continue = 1'bx;
	_iter_continue = 1'b0;
	if(__iter_iter_D53) if(!is_done) if(!_59) _iter_continue = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_unsafe_int_cast_in = 7'dx;
	if(__iter_iter_D53) if(!is_done) if(!_59) _unsafe_int_cast_in = _67;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iteration_new = 7'dx;
	if(__iter_iter_D53) if(!is_done) if(!_59) _iteration_new = _unsafe_int_cast_out;
end
endmodule

// tuple2 #(T1: type int #(FROM: 0, TO: 16), T2: type int #(FROM: 0, TO: 16))
module tuple2__T1typeint__FROM0_TO16__T2typeint__FROM0_TO16(
	input clk,
	input wire[3:0] v1_i,
	input wire[3:0] v2_i,
	output /*mux_wire*/ logic[7:0] packed_o,
	input wire[7:0] packed_i,
	output /*mux_wire*/ logic[3:0] v1_o,
	output /*mux_wire*/ logic[3:0] v2_o
);

genvar _g0;
/*mux_wire*/ logic[3:0] _transmute_to_bits_value;
wire[3:0] _transmute_to_bits_bits;
/*mux_wire*/ logic[3:0] _transmute_to_bits_2_value;
wire[3:0] _transmute_to_bits_2_bits;
wire[3:0] _3;
generate
for(_g0 = 0; _g0 < 4; _g0 = _g0 + 1) begin
assign _3[_g0] = packed_i[_g0];
end
endgenerate
/*mux_wire*/ logic[3:0] _transmute_from_bits_bits;
wire[3:0] _transmute_from_bits_value;
wire[3:0] _4;
generate
for(_g0 = 0; _g0 < 4; _g0 = _g0 + 1) begin
assign _4[_g0] = packed_i[4 + _g0];
end
endgenerate
/*mux_wire*/ logic[3:0] _transmute_from_bits_2_bits;
wire[3:0] _transmute_from_bits_2_value;
transmute_to_bits__Ttypeint__FROM0_TO16 transmute_to_bits(
	.clk(clk),
	.value(_transmute_to_bits_value),
	.bits(_transmute_to_bits_bits)
);
transmute_to_bits__Ttypeint__FROM0_TO16 transmute_to_bits_2(
	.clk(clk),
	.value(_transmute_to_bits_2_value),
	.bits(_transmute_to_bits_2_bits)
);
transmute_from_bits__Ttypeint__FROM0_TO16 transmute_from_bits(
	.clk(clk),
	.bits(_transmute_from_bits_bits),
	.value(_transmute_from_bits_value)
);
transmute_from_bits__Ttypeint__FROM0_TO16 transmute_from_bits_2(
	.clk(clk),
	.bits(_transmute_from_bits_2_bits),
	.value(_transmute_from_bits_2_value)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	packed_o = 8'bxxxxxxxx;
	for(int _v0 = 0; _v0 < 4; _v0 = _v0 + 1) begin
packed_o[_v0] = _transmute_to_bits_bits[_v0];
end
	for(int _v0 = 0; _v0 < 4; _v0 = _v0 + 1) begin
packed_o[4 + _v0] = _transmute_to_bits_2_bits[_v0];
end
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_to_bits_value = 4'dx;
	_transmute_to_bits_value = v1_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_to_bits_2_value = 4'dx;
	_transmute_to_bits_2_value = v2_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v1_o = 4'dx;
	v1_o = _transmute_from_bits_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v2_o = 4'dx;
	v2_o = _transmute_from_bits_2_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_from_bits_bits = 4'bxxxx;
	_transmute_from_bits_bits = _3;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_from_bits_2_bits = 4'bxxxx;
	_transmute_from_bits_2_bits = _4;
end
endmodule

// PixelToComplex #(WIDTH: 16, HEIGHT: 16)
module PixelToComplex__WIDTH16_HEIGHT16(
	input clk,
	input wire PixelToComplex,
	input wire[31:0] origin_r,
	input wire[31:0] origin_i,
	input wire[31:0] step,
	input wire[3:0] px_x,
	input wire[3:0] px_y,
	output /*mux_wire*/ logic[31:0] r,
	output /*mux_wire*/ logic[31:0] i
);

/*latency*/ logic _PixelToComplex_D1; always_ff @(posedge clk) begin _PixelToComplex_D1 <= PixelToComplex; end
/*latency*/ logic _PixelToComplex_D2; always_ff @(posedge clk) begin _PixelToComplex_D2 <= _PixelToComplex_D1; end
/*latency*/ logic _PixelToComplex_D3; always_ff @(posedge clk) begin _PixelToComplex_D3 <= _PixelToComplex_D2; end
/*latency*/ logic _PixelToComplex_D4; always_ff @(posedge clk) begin _PixelToComplex_D4 <= _PixelToComplex_D3; end
/*latency*/ logic _PixelToComplex_D5; always_ff @(posedge clk) begin _PixelToComplex_D5 <= _PixelToComplex_D4; end
/*latency*/ logic _PixelToComplex_D6; always_ff @(posedge clk) begin _PixelToComplex_D6 <= _PixelToComplex_D5; end
/*latency*/ logic _PixelToComplex_D7; always_ff @(posedge clk) begin _PixelToComplex_D7 <= _PixelToComplex_D6; end
/*latency*/ logic _PixelToComplex_D8; always_ff @(posedge clk) begin _PixelToComplex_D8 <= _PixelToComplex_D7; end
/*latency*/ logic _PixelToComplex_D9; always_ff @(posedge clk) begin _PixelToComplex_D9 <= _PixelToComplex_D8; end
/*latency*/ logic _PixelToComplex_D10; always_ff @(posedge clk) begin _PixelToComplex_D10 <= _PixelToComplex_D9; end
/*latency*/ logic _PixelToComplex_D11; always_ff @(posedge clk) begin _PixelToComplex_D11 <= _PixelToComplex_D10; end
/*latency*/ logic _PixelToComplex_D12; always_ff @(posedge clk) begin _PixelToComplex_D12 <= _PixelToComplex_D11; end
/*latency*/ logic _PixelToComplex_D13; always_ff @(posedge clk) begin _PixelToComplex_D13 <= _PixelToComplex_D12; end
/*latency*/ logic _PixelToComplex_D14; always_ff @(posedge clk) begin _PixelToComplex_D14 <= _PixelToComplex_D13; end
/*latency*/ logic _PixelToComplex_D15; always_ff @(posedge clk) begin _PixelToComplex_D15 <= _PixelToComplex_D14; end
/*latency*/ logic _PixelToComplex_D16; always_ff @(posedge clk) begin _PixelToComplex_D16 <= _PixelToComplex_D15; end
/*latency*/ logic _PixelToComplex_D17; always_ff @(posedge clk) begin _PixelToComplex_D17 <= _PixelToComplex_D16; end
/*latency*/ logic _PixelToComplex_D18; always_ff @(posedge clk) begin _PixelToComplex_D18 <= _PixelToComplex_D17; end
/*latency*/ logic _PixelToComplex_D19; always_ff @(posedge clk) begin _PixelToComplex_D19 <= _PixelToComplex_D18; end
/*latency*/ logic _PixelToComplex_D20; always_ff @(posedge clk) begin _PixelToComplex_D20 <= _PixelToComplex_D19; end
/*latency*/ logic _PixelToComplex_D21; always_ff @(posedge clk) begin _PixelToComplex_D21 <= _PixelToComplex_D20; end
/*latency*/ logic _PixelToComplex_D22; always_ff @(posedge clk) begin _PixelToComplex_D22 <= _PixelToComplex_D21; end
wire signed[3:0] _4;
assign _4 = px_x - 4'd8;
/*mux_wire*/ logic _fp_fromint_fp_fromint;
/*mux_wire*/ logic signed[31:0] _fp_fromint_a;
wire[31:0] _fp_fromint_result;
/*mux_wire*/ logic _fp_fmadd_fp_fmadd;
/*mux_wire*/ logic[31:0] _fp_fmadd_a;
/*mux_wire*/ logic[31:0] _fp_fmadd_b;
/*mux_wire*/ logic[31:0] _fp_fmadd_c;
wire[31:0] _fp_fmadd_result;
wire signed[3:0] _13;
assign _13 = px_y - 4'd8;
/*mux_wire*/ logic _fp_fromint_2_fp_fromint;
/*mux_wire*/ logic signed[31:0] _fp_fromint_2_a;
wire[31:0] _fp_fromint_2_result;
/*mux_wire*/ logic _fp_fmadd_2_fp_fmadd;
/*mux_wire*/ logic[31:0] _fp_fmadd_2_a;
/*mux_wire*/ logic[31:0] _fp_fmadd_2_b;
/*mux_wire*/ logic[31:0] _fp_fmadd_2_c;
wire[31:0] _fp_fmadd_2_result;
fp_fromint fp_fromint(
	.clk(clk),
	.fp_fromint(_fp_fromint_fp_fromint),
	.a(_fp_fromint_a),
	.result(_fp_fromint_result)
);
fp_fmadd fp_fmadd(
	.clk(clk),
	.fp_fmadd(_fp_fmadd_fp_fmadd),
	.a(_fp_fmadd_a),
	.b(_fp_fmadd_b),
	.c(_fp_fmadd_c),
	.result(_fp_fmadd_result)
);
fp_fromint fp_fromint_2(
	.clk(clk),
	.fp_fromint(_fp_fromint_2_fp_fromint),
	.a(_fp_fromint_2_a),
	.result(_fp_fromint_2_result)
);
fp_fmadd fp_fmadd_2(
	.clk(clk),
	.fp_fmadd(_fp_fmadd_2_fp_fmadd),
	.a(_fp_fmadd_2_a),
	.b(_fp_fmadd_2_b),
	.c(_fp_fmadd_2_c),
	.result(_fp_fmadd_2_result)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	r = 'x;
	if(_PixelToComplex_D22) r = _fp_fmadd_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	i = 'x;
	if(_PixelToComplex_D22) i = _fp_fmadd_2_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_fromint_fp_fromint = 1'bx;
	_fp_fromint_fp_fromint = 1'b0;
	if(PixelToComplex) _fp_fromint_fp_fromint = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_fromint_a = 32'sdx;
	if(PixelToComplex) _fp_fromint_a = _4;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_fmadd_fp_fmadd = 1'bx;
	_fp_fmadd_fp_fmadd = 1'b0;
	if(_PixelToComplex_D6) _fp_fmadd_fp_fmadd = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_fmadd_a = 'x;
	if(_PixelToComplex_D6) _fp_fmadd_a = step;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_fmadd_b = 'x;
	if(_PixelToComplex_D6) _fp_fmadd_b = _fp_fromint_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_fmadd_c = 'x;
	if(_PixelToComplex_D6) _fp_fmadd_c = origin_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_fromint_2_fp_fromint = 1'bx;
	_fp_fromint_2_fp_fromint = 1'b0;
	if(PixelToComplex) _fp_fromint_2_fp_fromint = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_fromint_2_a = 32'sdx;
	if(PixelToComplex) _fp_fromint_2_a = _13;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_fmadd_2_fp_fmadd = 1'bx;
	_fp_fmadd_2_fp_fmadd = 1'b0;
	if(_PixelToComplex_D6) _fp_fmadd_2_fp_fmadd = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_fmadd_2_a = 'x;
	if(_PixelToComplex_D6) _fp_fmadd_2_a = step;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_fmadd_2_b = 'x;
	if(_PixelToComplex_D6) _fp_fmadd_2_b = _fp_fromint_2_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_fmadd_2_c = 'x;
	if(_PixelToComplex_D6) _fp_fmadd_2_c = origin_i;
end
endmodule

// tuple2 #(T1: type int #(FROM: 0, TO: 101), T2: type bool #()[8])
module tuple2__T1typeint__FROM0_TO101__T2typebool____8(
	input clk,
	input wire[6:0] v1_i,
	input wire[7:0] v2_i,
	output /*mux_wire*/ logic[14:0] packed_o,
	input wire[14:0] packed_i,
	output /*mux_wire*/ logic[6:0] v1_o,
	output /*mux_wire*/ logic[7:0] v2_o
);

genvar _g0;
/*mux_wire*/ logic[6:0] _transmute_to_bits_value;
wire[6:0] _transmute_to_bits_bits;
/*mux_wire*/ logic[7:0] _transmute_to_bits_2_value;
wire[7:0] _transmute_to_bits_2_bits;
wire[6:0] _3;
generate
for(_g0 = 0; _g0 < 7; _g0 = _g0 + 1) begin
assign _3[_g0] = packed_i[_g0];
end
endgenerate
/*mux_wire*/ logic[6:0] _transmute_from_bits_bits;
wire[6:0] _transmute_from_bits_value;
wire[7:0] _4;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _4[_g0] = packed_i[7 + _g0];
end
endgenerate
/*mux_wire*/ logic[7:0] _transmute_from_bits_2_bits;
wire[7:0] _transmute_from_bits_2_value;
transmute_to_bits__Ttypeint__FROM0_TO101 transmute_to_bits(
	.clk(clk),
	.value(_transmute_to_bits_value),
	.bits(_transmute_to_bits_bits)
);
transmute_to_bits__Ttypebool____8 transmute_to_bits_2(
	.clk(clk),
	.value(_transmute_to_bits_2_value),
	.bits(_transmute_to_bits_2_bits)
);
transmute_from_bits__Ttypeint__FROM0_TO101 transmute_from_bits(
	.clk(clk),
	.bits(_transmute_from_bits_bits),
	.value(_transmute_from_bits_value)
);
transmute_from_bits__Ttypebool____8 transmute_from_bits_2(
	.clk(clk),
	.bits(_transmute_from_bits_2_bits),
	.value(_transmute_from_bits_2_value)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	packed_o = 15'bxxxxxxxxxxxxxxx;
	for(int _v0 = 0; _v0 < 7; _v0 = _v0 + 1) begin
packed_o[_v0] = _transmute_to_bits_bits[_v0];
end
	for(int _v0 = 0; _v0 < 8; _v0 = _v0 + 1) begin
packed_o[7 + _v0] = _transmute_to_bits_2_bits[_v0];
end
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_to_bits_value = 7'dx;
	_transmute_to_bits_value = v1_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_to_bits_2_value = 8'bxxxxxxxx;
	_transmute_to_bits_2_value = v2_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v1_o = 7'dx;
	v1_o = _transmute_from_bits_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v2_o = 8'bxxxxxxxx;
	v2_o = _transmute_from_bits_2_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_from_bits_bits = 7'bxxxxxxx;
	_transmute_from_bits_bits = _3;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_from_bits_2_bits = 8'bxxxxxxxx;
	_transmute_from_bits_2_bits = _4;
end
endmodule

// unsafe_int_cast #(FROM_I: 1, TO_I: 17, FROM: 0, TO: 16)
module unsafe_int_cast__FROM_I1_TO_I17_FROM0_TO16(
	input clk,
	input wire[4:0] in,
	output /*mux_wire*/ logic[3:0] out
);

	assign out = in;
endmodule

// RawFIFO #(WIDTH: 15, DEPTH: 512, MAY_PUSH_LATENCY: 75, EXTRA_IN_FLIGHT: 200, READ_DATA_LATENCY: 0)
// Provided externally
// module RawFIFO__WIDTH15_DEPTH512_MAY_PUSH_LATENCY75_EXTRA_IN_FLIGHT200_READ_DATA_LATENCY0(
// 	input clk,
// 	input wire rst,
// 	output /*mux_wire*/ logic may_push,
// 	input wire push,
// 	input wire[14:0] push_data,
// 	output /*mux_wire*/ logic may_pop,
// 	input wire pop,
// 	output /*mux_wire*/ logic[14:0] pop_data
// );
// transmute_to_bits #(T: type bool #()[15])
module transmute_to_bits__Ttypebool____15(
	input clk,
	input wire[14:0] value,
	output /*mux_wire*/ logic[14:0] bits
);

assign bits = value;
endmodule

// transmute_from_bits #(T: type bool #()[15])
module transmute_from_bits__Ttypebool____15(
	input clk,
	input wire[14:0] bits,
	output /*mux_wire*/ logic[14:0] value
);

assign value = bits;
endmodule

// ParallelWhile #(COMPUTATION_LATENCY: 53, REQUEST_DATA_LATENCY: 22)
module ParallelWhile__COMPUTATION_LATENCY53_REQUEST_DATA_LATENCY22(
	input clk,
	input wire rst,
	output /*mux_wire*/ logic iter,
	output /*mux_wire*/ logic[6:0] cur_iter,
	input wire continue_1,
	output /*mux_wire*/ logic may_start,
	input wire start
);

/*latency*/ logic _iter_D1; always_ff @(posedge clk) begin _iter_D1 <= iter; end
/*latency*/ logic _iter_D2; always_ff @(posedge clk) begin _iter_D2 <= _iter_D1; end
/*latency*/ logic _iter_D3; always_ff @(posedge clk) begin _iter_D3 <= _iter_D2; end
/*latency*/ logic _iter_D4; always_ff @(posedge clk) begin _iter_D4 <= _iter_D3; end
/*latency*/ logic _iter_D5; always_ff @(posedge clk) begin _iter_D5 <= _iter_D4; end
/*latency*/ logic _iter_D6; always_ff @(posedge clk) begin _iter_D6 <= _iter_D5; end
/*latency*/ logic _iter_D7; always_ff @(posedge clk) begin _iter_D7 <= _iter_D6; end
/*latency*/ logic _iter_D8; always_ff @(posedge clk) begin _iter_D8 <= _iter_D7; end
/*latency*/ logic _iter_D9; always_ff @(posedge clk) begin _iter_D9 <= _iter_D8; end
/*latency*/ logic _iter_D10; always_ff @(posedge clk) begin _iter_D10 <= _iter_D9; end
/*latency*/ logic _iter_D11; always_ff @(posedge clk) begin _iter_D11 <= _iter_D10; end
/*latency*/ logic _iter_D12; always_ff @(posedge clk) begin _iter_D12 <= _iter_D11; end
/*latency*/ logic _iter_D13; always_ff @(posedge clk) begin _iter_D13 <= _iter_D12; end
/*latency*/ logic _iter_D14; always_ff @(posedge clk) begin _iter_D14 <= _iter_D13; end
/*latency*/ logic _iter_D15; always_ff @(posedge clk) begin _iter_D15 <= _iter_D14; end
/*latency*/ logic _iter_D16; always_ff @(posedge clk) begin _iter_D16 <= _iter_D15; end
/*latency*/ logic _iter_D17; always_ff @(posedge clk) begin _iter_D17 <= _iter_D16; end
/*latency*/ logic _iter_D18; always_ff @(posedge clk) begin _iter_D18 <= _iter_D17; end
/*latency*/ logic _iter_D19; always_ff @(posedge clk) begin _iter_D19 <= _iter_D18; end
/*latency*/ logic _iter_D20; always_ff @(posedge clk) begin _iter_D20 <= _iter_D19; end
/*latency*/ logic _iter_D21; always_ff @(posedge clk) begin _iter_D21 <= _iter_D20; end
/*latency*/ logic _iter_D22; always_ff @(posedge clk) begin _iter_D22 <= _iter_D21; end
/*latency*/ logic _iter_D23; always_ff @(posedge clk) begin _iter_D23 <= _iter_D22; end
/*latency*/ logic _iter_D24; always_ff @(posedge clk) begin _iter_D24 <= _iter_D23; end
/*latency*/ logic _iter_D25; always_ff @(posedge clk) begin _iter_D25 <= _iter_D24; end
/*latency*/ logic _iter_D26; always_ff @(posedge clk) begin _iter_D26 <= _iter_D25; end
/*latency*/ logic _iter_D27; always_ff @(posedge clk) begin _iter_D27 <= _iter_D26; end
/*latency*/ logic _iter_D28; always_ff @(posedge clk) begin _iter_D28 <= _iter_D27; end
/*latency*/ logic _iter_D29; always_ff @(posedge clk) begin _iter_D29 <= _iter_D28; end
/*latency*/ logic _iter_D30; always_ff @(posedge clk) begin _iter_D30 <= _iter_D29; end
/*latency*/ logic _iter_D31; always_ff @(posedge clk) begin _iter_D31 <= _iter_D30; end
/*latency*/ logic _iter_D32; always_ff @(posedge clk) begin _iter_D32 <= _iter_D31; end
/*latency*/ logic _iter_D33; always_ff @(posedge clk) begin _iter_D33 <= _iter_D32; end
/*latency*/ logic _iter_D34; always_ff @(posedge clk) begin _iter_D34 <= _iter_D33; end
/*latency*/ logic _iter_D35; always_ff @(posedge clk) begin _iter_D35 <= _iter_D34; end
/*latency*/ logic _iter_D36; always_ff @(posedge clk) begin _iter_D36 <= _iter_D35; end
/*latency*/ logic _iter_D37; always_ff @(posedge clk) begin _iter_D37 <= _iter_D36; end
/*latency*/ logic _iter_D38; always_ff @(posedge clk) begin _iter_D38 <= _iter_D37; end
/*latency*/ logic _iter_D39; always_ff @(posedge clk) begin _iter_D39 <= _iter_D38; end
/*latency*/ logic _iter_D40; always_ff @(posedge clk) begin _iter_D40 <= _iter_D39; end
/*latency*/ logic _iter_D41; always_ff @(posedge clk) begin _iter_D41 <= _iter_D40; end
/*latency*/ logic _iter_D42; always_ff @(posedge clk) begin _iter_D42 <= _iter_D41; end
/*latency*/ logic _iter_D43; always_ff @(posedge clk) begin _iter_D43 <= _iter_D42; end
/*latency*/ logic _iter_D44; always_ff @(posedge clk) begin _iter_D44 <= _iter_D43; end
/*latency*/ logic _iter_D45; always_ff @(posedge clk) begin _iter_D45 <= _iter_D44; end
/*latency*/ logic _iter_D46; always_ff @(posedge clk) begin _iter_D46 <= _iter_D45; end
/*latency*/ logic _iter_D47; always_ff @(posedge clk) begin _iter_D47 <= _iter_D46; end
/*latency*/ logic _iter_D48; always_ff @(posedge clk) begin _iter_D48 <= _iter_D47; end
/*latency*/ logic _iter_D49; always_ff @(posedge clk) begin _iter_D49 <= _iter_D48; end
/*latency*/ logic _iter_D50; always_ff @(posedge clk) begin _iter_D50 <= _iter_D49; end
/*latency*/ logic _iter_D51; always_ff @(posedge clk) begin _iter_D51 <= _iter_D50; end
/*latency*/ logic _iter_D52; always_ff @(posedge clk) begin _iter_D52 <= _iter_D51; end
/*latency*/ logic _iter_D53; always_ff @(posedge clk) begin _iter_D53 <= _iter_D52; end
/*mux_wire*/ logic _rst_act_in;
/*state*/ logic[6:0] cur_iter_st = 7'd0;
/*mux_wire*/ logic should_continue;
/*mux_wire*/ logic do_continue;
/*latency*/ logic _do_continue_N21; always_ff @(posedge clk) begin _do_continue_N21 <= do_continue; end
/*latency*/ logic _do_continue_N20; always_ff @(posedge clk) begin _do_continue_N20 <= _do_continue_N21; end
/*latency*/ logic _do_continue_N19; always_ff @(posedge clk) begin _do_continue_N19 <= _do_continue_N20; end
/*latency*/ logic _do_continue_N18; always_ff @(posedge clk) begin _do_continue_N18 <= _do_continue_N19; end
/*latency*/ logic _do_continue_N17; always_ff @(posedge clk) begin _do_continue_N17 <= _do_continue_N18; end
/*latency*/ logic _do_continue_N16; always_ff @(posedge clk) begin _do_continue_N16 <= _do_continue_N17; end
/*latency*/ logic _do_continue_N15; always_ff @(posedge clk) begin _do_continue_N15 <= _do_continue_N16; end
/*latency*/ logic _do_continue_N14; always_ff @(posedge clk) begin _do_continue_N14 <= _do_continue_N15; end
/*latency*/ logic _do_continue_N13; always_ff @(posedge clk) begin _do_continue_N13 <= _do_continue_N14; end
/*latency*/ logic _do_continue_N12; always_ff @(posedge clk) begin _do_continue_N12 <= _do_continue_N13; end
/*latency*/ logic _do_continue_N11; always_ff @(posedge clk) begin _do_continue_N11 <= _do_continue_N12; end
/*latency*/ logic _do_continue_N10; always_ff @(posedge clk) begin _do_continue_N10 <= _do_continue_N11; end
/*latency*/ logic _do_continue_N9; always_ff @(posedge clk) begin _do_continue_N9 <= _do_continue_N10; end
/*latency*/ logic _do_continue_N8; always_ff @(posedge clk) begin _do_continue_N8 <= _do_continue_N9; end
/*latency*/ logic _do_continue_N7; always_ff @(posedge clk) begin _do_continue_N7 <= _do_continue_N8; end
/*latency*/ logic _do_continue_N6; always_ff @(posedge clk) begin _do_continue_N6 <= _do_continue_N7; end
/*latency*/ logic _do_continue_N5; always_ff @(posedge clk) begin _do_continue_N5 <= _do_continue_N6; end
/*latency*/ logic _do_continue_N4; always_ff @(posedge clk) begin _do_continue_N4 <= _do_continue_N5; end
/*latency*/ logic _do_continue_N3; always_ff @(posedge clk) begin _do_continue_N3 <= _do_continue_N4; end
/*latency*/ logic _do_continue_N2; always_ff @(posedge clk) begin _do_continue_N2 <= _do_continue_N3; end
/*latency*/ logic _do_continue_N1; always_ff @(posedge clk) begin _do_continue_N1 <= _do_continue_N2; end
/*latency*/ logic _do_continue_D0; always_ff @(posedge clk) begin _do_continue_D0 <= _do_continue_N1; end
/*mux_wire*/ logic _LatencyOffset_in;
wire _LatencyOffset_out;
wire[6:0] _6;
assign _6 = cur_iter_st + 1'd1;
wire[6:0] _8;
assign _8 = _6 % 7'd75;
wire _rst_act_out;
wire _21;
assign _21 = !do_continue;
CrossActionNoData rst_act(
	.in_clk(clk),
	.in(_rst_act_in),
	.out(_rst_act_out)
);
LatencyOffset__Ttypebool____OFFSET_75 LatencyOffset(
	.clk(clk),
	.in(_LatencyOffset_in),
	.out(_LatencyOffset_out)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rst_act_in = 1'bx;
	_rst_act_in = 1'b0;
	if(rst) _rst_act_in = 1'b1;
end
always_ff @(posedge clk) begin
	cur_iter_st <= _8;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	should_continue = 1'bx;
	if(_iter_D53) if(continue_1) should_continue = 1'b1;
	if(_iter_D53) if(!continue_1) should_continue = 1'b0;
	if(!_iter_D53) should_continue = 1'b0;
	if(_rst_act_out) should_continue = 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	do_continue = 1'bx;
	do_continue = _LatencyOffset_out;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_LatencyOffset_in = 1'bx;
	_LatencyOffset_in = should_continue;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter = 1'bx;
	iter = 1'b0;
	if(start) iter = 1'b1;
	if(!start) if(_do_continue_D0) iter = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	cur_iter = 7'dx;
	if(start) cur_iter = cur_iter_st;
	if(!start) if(_do_continue_D0) cur_iter = cur_iter_st;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_start = 1'bx;
	may_start = 1'b0;
	if(_21) may_start = 1'b1;
end
endmodule

// ParallelWhileState #(T: type float #(), NUM_PARALLEL_STATES: 75, LATENCY: 32)
module ParallelWhileState__Ttypefloat____NUM_PARALLEL_STATES75_LATENCY32(
	input clk,
	input wire link,
	input wire[6:0] cur_iter_id,
	output /*mux_wire*/ logic[31:0] old,
	input wire init,
	input wire[31:0] initial_data,
	input wire[31:0] new_1
);

/*latency*/ logic _link_D1; always_ff @(posedge clk) begin _link_D1 <= link; end
/*latency*/ logic _link_D2; always_ff @(posedge clk) begin _link_D2 <= _link_D1; end
/*latency*/ logic _link_D3; always_ff @(posedge clk) begin _link_D3 <= _link_D2; end
/*latency*/ logic _link_D4; always_ff @(posedge clk) begin _link_D4 <= _link_D3; end
/*latency*/ logic _link_D5; always_ff @(posedge clk) begin _link_D5 <= _link_D4; end
/*latency*/ logic _link_D6; always_ff @(posedge clk) begin _link_D6 <= _link_D5; end
/*latency*/ logic _link_D7; always_ff @(posedge clk) begin _link_D7 <= _link_D6; end
/*latency*/ logic _link_D8; always_ff @(posedge clk) begin _link_D8 <= _link_D7; end
/*latency*/ logic _link_D9; always_ff @(posedge clk) begin _link_D9 <= _link_D8; end
/*latency*/ logic _link_D10; always_ff @(posedge clk) begin _link_D10 <= _link_D9; end
/*latency*/ logic _link_D11; always_ff @(posedge clk) begin _link_D11 <= _link_D10; end
/*latency*/ logic _link_D12; always_ff @(posedge clk) begin _link_D12 <= _link_D11; end
/*latency*/ logic _link_D13; always_ff @(posedge clk) begin _link_D13 <= _link_D12; end
/*latency*/ logic _link_D14; always_ff @(posedge clk) begin _link_D14 <= _link_D13; end
/*latency*/ logic _link_D15; always_ff @(posedge clk) begin _link_D15 <= _link_D14; end
/*latency*/ logic _link_D16; always_ff @(posedge clk) begin _link_D16 <= _link_D15; end
/*latency*/ logic _link_D17; always_ff @(posedge clk) begin _link_D17 <= _link_D16; end
/*latency*/ logic _link_D18; always_ff @(posedge clk) begin _link_D18 <= _link_D17; end
/*latency*/ logic _link_D19; always_ff @(posedge clk) begin _link_D19 <= _link_D18; end
/*latency*/ logic _link_D20; always_ff @(posedge clk) begin _link_D20 <= _link_D19; end
/*latency*/ logic _link_D21; always_ff @(posedge clk) begin _link_D21 <= _link_D20; end
/*latency*/ logic _link_D22; always_ff @(posedge clk) begin _link_D22 <= _link_D21; end
/*latency*/ logic _link_D23; always_ff @(posedge clk) begin _link_D23 <= _link_D22; end
/*latency*/ logic _link_D24; always_ff @(posedge clk) begin _link_D24 <= _link_D23; end
/*latency*/ logic _link_D25; always_ff @(posedge clk) begin _link_D25 <= _link_D24; end
/*latency*/ logic _link_D26; always_ff @(posedge clk) begin _link_D26 <= _link_D25; end
/*latency*/ logic _link_D27; always_ff @(posedge clk) begin _link_D27 <= _link_D26; end
/*latency*/ logic _link_D28; always_ff @(posedge clk) begin _link_D28 <= _link_D27; end
/*latency*/ logic _link_D29; always_ff @(posedge clk) begin _link_D29 <= _link_D28; end
/*latency*/ logic _link_D30; always_ff @(posedge clk) begin _link_D30 <= _link_D29; end
/*latency*/ logic _link_D31; always_ff @(posedge clk) begin _link_D31 <= _link_D30; end
/*latency*/ logic _link_D32; always_ff @(posedge clk) begin _link_D32 <= _link_D31; end
/*latency*/ logic[6:0] _cur_iter_id_D1; always_ff @(posedge clk) begin _cur_iter_id_D1 <= cur_iter_id; end
/*latency*/ logic[6:0] _cur_iter_id_D2; always_ff @(posedge clk) begin _cur_iter_id_D2 <= _cur_iter_id_D1; end
/*latency*/ logic[6:0] _cur_iter_id_D3; always_ff @(posedge clk) begin _cur_iter_id_D3 <= _cur_iter_id_D2; end
/*latency*/ logic[6:0] _cur_iter_id_D4; always_ff @(posedge clk) begin _cur_iter_id_D4 <= _cur_iter_id_D3; end
/*latency*/ logic[6:0] _cur_iter_id_D5; always_ff @(posedge clk) begin _cur_iter_id_D5 <= _cur_iter_id_D4; end
/*latency*/ logic[6:0] _cur_iter_id_D6; always_ff @(posedge clk) begin _cur_iter_id_D6 <= _cur_iter_id_D5; end
/*latency*/ logic[6:0] _cur_iter_id_D7; always_ff @(posedge clk) begin _cur_iter_id_D7 <= _cur_iter_id_D6; end
/*latency*/ logic[6:0] _cur_iter_id_D8; always_ff @(posedge clk) begin _cur_iter_id_D8 <= _cur_iter_id_D7; end
/*latency*/ logic[6:0] _cur_iter_id_D9; always_ff @(posedge clk) begin _cur_iter_id_D9 <= _cur_iter_id_D8; end
/*latency*/ logic[6:0] _cur_iter_id_D10; always_ff @(posedge clk) begin _cur_iter_id_D10 <= _cur_iter_id_D9; end
/*latency*/ logic[6:0] _cur_iter_id_D11; always_ff @(posedge clk) begin _cur_iter_id_D11 <= _cur_iter_id_D10; end
/*latency*/ logic[6:0] _cur_iter_id_D12; always_ff @(posedge clk) begin _cur_iter_id_D12 <= _cur_iter_id_D11; end
/*latency*/ logic[6:0] _cur_iter_id_D13; always_ff @(posedge clk) begin _cur_iter_id_D13 <= _cur_iter_id_D12; end
/*latency*/ logic[6:0] _cur_iter_id_D14; always_ff @(posedge clk) begin _cur_iter_id_D14 <= _cur_iter_id_D13; end
/*latency*/ logic[6:0] _cur_iter_id_D15; always_ff @(posedge clk) begin _cur_iter_id_D15 <= _cur_iter_id_D14; end
/*latency*/ logic[6:0] _cur_iter_id_D16; always_ff @(posedge clk) begin _cur_iter_id_D16 <= _cur_iter_id_D15; end
/*latency*/ logic[6:0] _cur_iter_id_D17; always_ff @(posedge clk) begin _cur_iter_id_D17 <= _cur_iter_id_D16; end
/*latency*/ logic[6:0] _cur_iter_id_D18; always_ff @(posedge clk) begin _cur_iter_id_D18 <= _cur_iter_id_D17; end
/*latency*/ logic[6:0] _cur_iter_id_D19; always_ff @(posedge clk) begin _cur_iter_id_D19 <= _cur_iter_id_D18; end
/*latency*/ logic[6:0] _cur_iter_id_D20; always_ff @(posedge clk) begin _cur_iter_id_D20 <= _cur_iter_id_D19; end
/*latency*/ logic[6:0] _cur_iter_id_D21; always_ff @(posedge clk) begin _cur_iter_id_D21 <= _cur_iter_id_D20; end
/*latency*/ logic[6:0] _cur_iter_id_D22; always_ff @(posedge clk) begin _cur_iter_id_D22 <= _cur_iter_id_D21; end
/*latency*/ logic[6:0] _cur_iter_id_D23; always_ff @(posedge clk) begin _cur_iter_id_D23 <= _cur_iter_id_D22; end
/*latency*/ logic[6:0] _cur_iter_id_D24; always_ff @(posedge clk) begin _cur_iter_id_D24 <= _cur_iter_id_D23; end
/*latency*/ logic[6:0] _cur_iter_id_D25; always_ff @(posedge clk) begin _cur_iter_id_D25 <= _cur_iter_id_D24; end
/*latency*/ logic[6:0] _cur_iter_id_D26; always_ff @(posedge clk) begin _cur_iter_id_D26 <= _cur_iter_id_D25; end
/*latency*/ logic[6:0] _cur_iter_id_D27; always_ff @(posedge clk) begin _cur_iter_id_D27 <= _cur_iter_id_D26; end
/*latency*/ logic[6:0] _cur_iter_id_D28; always_ff @(posedge clk) begin _cur_iter_id_D28 <= _cur_iter_id_D27; end
/*latency*/ logic[6:0] _cur_iter_id_D29; always_ff @(posedge clk) begin _cur_iter_id_D29 <= _cur_iter_id_D28; end
/*latency*/ logic[6:0] _cur_iter_id_D30; always_ff @(posedge clk) begin _cur_iter_id_D30 <= _cur_iter_id_D29; end
/*latency*/ logic[6:0] _cur_iter_id_D31; always_ff @(posedge clk) begin _cur_iter_id_D31 <= _cur_iter_id_D30; end
/*latency*/ logic[6:0] _cur_iter_id_D32; always_ff @(posedge clk) begin _cur_iter_id_D32 <= _cur_iter_id_D31; end
/*latency*/ logic _init_D1; always_ff @(posedge clk) begin _init_D1 <= init; end
/*latency*/ logic _init_D2; always_ff @(posedge clk) begin _init_D2 <= _init_D1; end
/*latency*/ logic[31:0] _initial_data_D1; always_ff @(posedge clk) begin _initial_data_D1 <= initial_data; end
/*latency*/ logic[31:0] _initial_data_D2; always_ff @(posedge clk) begin _initial_data_D2 <= _initial_data_D1; end
/*mux_wire*/ logic _st_read;
/*mux_wire*/ logic[6:0] _st_addrb;
wire[31:0] _st_doutb;
/*mux_wire*/ logic _st_write;
/*mux_wire*/ logic[6:0] _st_addra;
/*mux_wire*/ logic[31:0] _st_dina;
RAM__Ttypefloat____DEPTH75 st(
	.clk(clk),
	.write(_st_write),
	.addra(_st_addra),
	.dina(_st_dina),
	.read(_st_read),
	.addrb(_st_addrb),
	.doutb(_st_doutb)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	old = 'x;
	if(_link_D2) if(_init_D2) old = _initial_data_D2;
	if(_link_D2) if(!_init_D2) old = _st_doutb;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_read = 1'bx;
	_st_read = 1'b0;
	if(link) if(!init) _st_read = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_addrb = 7'dx;
	if(link) if(!init) _st_addrb = cur_iter_id;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_write = 1'bx;
	_st_write = 1'b0;
	if(_link_D32) _st_write = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_addra = 7'dx;
	if(_link_D32) _st_addra = _cur_iter_id_D32;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_dina = 'x;
	if(_link_D32) _st_dina = new_1;
end
endmodule

// ParallelWhileStore #(T: type float #(), NUM_PARALLEL_STATES: 75)
module ParallelWhileStore__Ttypefloat____NUM_PARALLEL_STATES75(
	input clk,
	input wire link,
	input wire[6:0] cur_iter_id,
	output /*mux_wire*/ logic[31:0] old,
	input wire init,
	input wire[31:0] initial_data
);

/*latency*/ logic _link_D1; always_ff @(posedge clk) begin _link_D1 <= link; end
/*latency*/ logic _link_D2; always_ff @(posedge clk) begin _link_D2 <= _link_D1; end
/*latency*/ logic _link_D3; always_ff @(posedge clk) begin _link_D3 <= _link_D2; end
/*mux_wire*/ logic _st_read;
/*mux_wire*/ logic[6:0] _st_addrb;
wire[31:0] _st_doutb;
/*latency*/ logic[31:0] __st_doutb_D3; always_ff @(posedge clk) begin __st_doutb_D3 <= _st_doutb; end
/*mux_wire*/ logic _st_write;
/*mux_wire*/ logic[6:0] _st_addra;
/*mux_wire*/ logic[31:0] _st_dina;
RAM__Ttypefloat____DEPTH75 st(
	.clk(clk),
	.write(_st_write),
	.addra(_st_addra),
	.dina(_st_dina),
	.read(_st_read),
	.addrb(_st_addrb),
	.doutb(_st_doutb)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	old = 'x;
	if(_link_D3) old = __st_doutb_D3;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_read = 1'bx;
	_st_read = 1'b0;
	if(link) _st_read = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_addrb = 7'dx;
	if(link) _st_addrb = cur_iter_id;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_write = 1'bx;
	_st_write = 1'b0;
	if(link) if(init) _st_write = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_addra = 7'dx;
	if(link) if(init) _st_addra = cur_iter_id;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_dina = 'x;
	if(link) if(init) _st_dina = initial_data;
end
endmodule

// ParallelWhileState #(T: type int #(FROM: 0, TO: 100), NUM_PARALLEL_STATES: 75, LATENCY: 2)
module ParallelWhileState__Ttypeint__FROM0_TO100__NUM_PARALLEL_STATES75_LATENCY2(
	input clk,
	input wire link,
	input wire[6:0] cur_iter_id,
	output /*mux_wire*/ logic[6:0] old,
	input wire init,
	input wire[6:0] initial_data,
	input wire[6:0] new_1
);

/*latency*/ logic _link_D1; always_ff @(posedge clk) begin _link_D1 <= link; end
/*latency*/ logic _link_D2; always_ff @(posedge clk) begin _link_D2 <= _link_D1; end
/*latency*/ logic[6:0] _cur_iter_id_D1; always_ff @(posedge clk) begin _cur_iter_id_D1 <= cur_iter_id; end
/*latency*/ logic[6:0] _cur_iter_id_D2; always_ff @(posedge clk) begin _cur_iter_id_D2 <= _cur_iter_id_D1; end
/*latency*/ logic _init_D1; always_ff @(posedge clk) begin _init_D1 <= init; end
/*latency*/ logic _init_D2; always_ff @(posedge clk) begin _init_D2 <= _init_D1; end
/*latency*/ logic[6:0] _initial_data_D1; always_ff @(posedge clk) begin _initial_data_D1 <= initial_data; end
/*latency*/ logic[6:0] _initial_data_D2; always_ff @(posedge clk) begin _initial_data_D2 <= _initial_data_D1; end
/*mux_wire*/ logic _st_read;
/*mux_wire*/ logic[6:0] _st_addrb;
wire[6:0] _st_doutb;
/*mux_wire*/ logic _st_write;
/*mux_wire*/ logic[6:0] _st_addra;
/*mux_wire*/ logic[6:0] _st_dina;
RAM__Ttypeint__FROM0_TO100__DEPTH75 st(
	.clk(clk),
	.write(_st_write),
	.addra(_st_addra),
	.dina(_st_dina),
	.read(_st_read),
	.addrb(_st_addrb),
	.doutb(_st_doutb)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	old = 7'dx;
	if(_link_D2) if(_init_D2) old = _initial_data_D2;
	if(_link_D2) if(!_init_D2) old = _st_doutb;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_read = 1'bx;
	_st_read = 1'b0;
	if(link) if(!init) _st_read = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_addrb = 7'dx;
	if(link) if(!init) _st_addrb = cur_iter_id;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_write = 1'bx;
	_st_write = 1'b0;
	if(_link_D2) _st_write = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_addra = 7'dx;
	if(_link_D2) _st_addra = _cur_iter_id_D2;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_dina = 7'dx;
	if(_link_D2) _st_dina = new_1;
end
endmodule

// ParallelWhileStore #(T: type bool #()[8], NUM_PARALLEL_STATES: 75)
module ParallelWhileStore__Ttypebool____8__NUM_PARALLEL_STATES75(
	input clk,
	input wire link,
	input wire[6:0] cur_iter_id,
	output /*mux_wire*/ logic[7:0] old,
	input wire init,
	input wire[7:0] initial_data
);

/*latency*/ logic _link_D1; always_ff @(posedge clk) begin _link_D1 <= link; end
/*latency*/ logic _link_D2; always_ff @(posedge clk) begin _link_D2 <= _link_D1; end
/*latency*/ logic _link_D3; always_ff @(posedge clk) begin _link_D3 <= _link_D2; end
/*mux_wire*/ logic _st_read;
/*mux_wire*/ logic[6:0] _st_addrb;
wire[7:0] _st_doutb;
/*latency*/ logic[7:0] __st_doutb_D3; always_ff @(posedge clk) begin __st_doutb_D3 <= _st_doutb; end
/*mux_wire*/ logic _st_write;
/*mux_wire*/ logic[6:0] _st_addra;
/*mux_wire*/ logic[7:0] _st_dina;
RAM__Ttypebool____8__DEPTH75 st(
	.clk(clk),
	.write(_st_write),
	.addra(_st_addra),
	.dina(_st_dina),
	.read(_st_read),
	.addrb(_st_addrb),
	.doutb(_st_doutb)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	old = 8'bxxxxxxxx;
	if(_link_D3) old = __st_doutb_D3;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_read = 1'bx;
	_st_read = 1'b0;
	if(link) _st_read = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_addrb = 7'dx;
	if(link) _st_addrb = cur_iter_id;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_write = 1'bx;
	_st_write = 1'b0;
	if(link) if(init) _st_write = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_addra = 7'dx;
	if(link) if(init) _st_addra = cur_iter_id;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_st_dina = 8'bxxxxxxxx;
	if(link) if(init) _st_dina = initial_data;
end
endmodule

// fp_fromint #()
module fp_fromint(
	input clk,
	input wire fp_fromint,
	input wire signed[31:0] a,
	output /*mux_wire*/ logic[31:0] result
);

/*latency*/ logic _fp_fromint_D1; always_ff @(posedge clk) begin _fp_fromint_D1 <= fp_fromint; end
/*latency*/ logic _fp_fromint_D2; always_ff @(posedge clk) begin _fp_fromint_D2 <= _fp_fromint_D1; end
/*latency*/ logic _fp_fromint_D3; always_ff @(posedge clk) begin _fp_fromint_D3 <= _fp_fromint_D2; end
/*latency*/ logic _fp_fromint_D4; always_ff @(posedge clk) begin _fp_fromint_D4 <= _fp_fromint_D3; end
/*latency*/ logic _fp_fromint_D5; always_ff @(posedge clk) begin _fp_fromint_D5 <= _fp_fromint_D4; end
/*latency*/ logic _fp_fromint_D6; always_ff @(posedge clk) begin _fp_fromint_D6 <= _fp_fromint_D5; end
/*mux_wire*/ logic _ip_s_axis_a_tvalid;
/*mux_wire*/ logic signed[31:0] _ip_s_axis_a_tdata;
wire[31:0] _ip_m_axis_result_tdata;
/*mux_wire*/ logic _;
wire _ip_m_axis_result_tvalid;
fp_fromint_ip #() ip(
	.aclk(clk),
	.s_axis_a_tvalid(_ip_s_axis_a_tvalid),
	.s_axis_a_tdata(_ip_s_axis_a_tdata),
	.m_axis_result_tvalid(_ip_m_axis_result_tvalid),
	.m_axis_result_tdata(_ip_m_axis_result_tdata)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	result = 'x;
	if(_fp_fromint_D6) result = _ip_m_axis_result_tdata;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_a_tvalid = 1'bx;
	_ip_s_axis_a_tvalid = 1'b0;
	if(fp_fromint) _ip_s_axis_a_tvalid = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_a_tdata = 32'sdx;
	if(fp_fromint) _ip_s_axis_a_tdata = a;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ = 1'bx;
	if(_fp_fromint_D6) _ = _ip_m_axis_result_tvalid;
end
endmodule

// MandelbrotStep #()
module MandelbrotStep(
	input clk,
	input wire MandelbrotStep,
	input wire[31:0] z_r,
	input wire[31:0] z_i,
	input wire[31:0] c_r,
	input wire[31:0] c_i,
	output /*mux_wire*/ logic[31:0] new_z_r,
	output /*mux_wire*/ logic[31:0] new_z_i,
	output /*mux_wire*/ logic is_done
);

/*latency*/ logic _MandelbrotStep_D1; always_ff @(posedge clk) begin _MandelbrotStep_D1 <= MandelbrotStep; end
/*latency*/ logic _MandelbrotStep_D2; always_ff @(posedge clk) begin _MandelbrotStep_D2 <= _MandelbrotStep_D1; end
/*latency*/ logic _MandelbrotStep_D3; always_ff @(posedge clk) begin _MandelbrotStep_D3 <= _MandelbrotStep_D2; end
/*latency*/ logic _MandelbrotStep_D4; always_ff @(posedge clk) begin _MandelbrotStep_D4 <= _MandelbrotStep_D3; end
/*latency*/ logic _MandelbrotStep_D5; always_ff @(posedge clk) begin _MandelbrotStep_D5 <= _MandelbrotStep_D4; end
/*latency*/ logic _MandelbrotStep_D6; always_ff @(posedge clk) begin _MandelbrotStep_D6 <= _MandelbrotStep_D5; end
/*latency*/ logic _MandelbrotStep_D7; always_ff @(posedge clk) begin _MandelbrotStep_D7 <= _MandelbrotStep_D6; end
/*latency*/ logic _MandelbrotStep_D8; always_ff @(posedge clk) begin _MandelbrotStep_D8 <= _MandelbrotStep_D7; end
/*latency*/ logic _MandelbrotStep_D9; always_ff @(posedge clk) begin _MandelbrotStep_D9 <= _MandelbrotStep_D8; end
/*latency*/ logic _MandelbrotStep_D10; always_ff @(posedge clk) begin _MandelbrotStep_D10 <= _MandelbrotStep_D9; end
/*latency*/ logic _MandelbrotStep_D11; always_ff @(posedge clk) begin _MandelbrotStep_D11 <= _MandelbrotStep_D10; end
/*latency*/ logic _MandelbrotStep_D12; always_ff @(posedge clk) begin _MandelbrotStep_D12 <= _MandelbrotStep_D11; end
/*latency*/ logic _MandelbrotStep_D13; always_ff @(posedge clk) begin _MandelbrotStep_D13 <= _MandelbrotStep_D12; end
/*latency*/ logic _MandelbrotStep_D14; always_ff @(posedge clk) begin _MandelbrotStep_D14 <= _MandelbrotStep_D13; end
/*latency*/ logic _MandelbrotStep_D15; always_ff @(posedge clk) begin _MandelbrotStep_D15 <= _MandelbrotStep_D14; end
/*latency*/ logic _MandelbrotStep_D16; always_ff @(posedge clk) begin _MandelbrotStep_D16 <= _MandelbrotStep_D15; end
/*latency*/ logic _MandelbrotStep_D17; always_ff @(posedge clk) begin _MandelbrotStep_D17 <= _MandelbrotStep_D16; end
/*latency*/ logic _MandelbrotStep_D18; always_ff @(posedge clk) begin _MandelbrotStep_D18 <= _MandelbrotStep_D17; end
/*latency*/ logic _MandelbrotStep_D19; always_ff @(posedge clk) begin _MandelbrotStep_D19 <= _MandelbrotStep_D18; end
/*latency*/ logic _MandelbrotStep_D20; always_ff @(posedge clk) begin _MandelbrotStep_D20 <= _MandelbrotStep_D19; end
/*latency*/ logic _MandelbrotStep_D21; always_ff @(posedge clk) begin _MandelbrotStep_D21 <= _MandelbrotStep_D20; end
/*latency*/ logic _MandelbrotStep_D22; always_ff @(posedge clk) begin _MandelbrotStep_D22 <= _MandelbrotStep_D21; end
/*latency*/ logic _MandelbrotStep_D23; always_ff @(posedge clk) begin _MandelbrotStep_D23 <= _MandelbrotStep_D22; end
/*latency*/ logic _MandelbrotStep_D24; always_ff @(posedge clk) begin _MandelbrotStep_D24 <= _MandelbrotStep_D23; end
/*latency*/ logic _MandelbrotStep_D25; always_ff @(posedge clk) begin _MandelbrotStep_D25 <= _MandelbrotStep_D24; end
/*latency*/ logic _MandelbrotStep_D26; always_ff @(posedge clk) begin _MandelbrotStep_D26 <= _MandelbrotStep_D25; end
/*latency*/ logic _MandelbrotStep_D27; always_ff @(posedge clk) begin _MandelbrotStep_D27 <= _MandelbrotStep_D26; end
/*latency*/ logic _MandelbrotStep_D28; always_ff @(posedge clk) begin _MandelbrotStep_D28 <= _MandelbrotStep_D27; end
/*latency*/ logic _MandelbrotStep_D29; always_ff @(posedge clk) begin _MandelbrotStep_D29 <= _MandelbrotStep_D28; end
/*latency*/ logic _MandelbrotStep_D30; always_ff @(posedge clk) begin _MandelbrotStep_D30 <= _MandelbrotStep_D29; end
/*latency*/ logic _MandelbrotStep_D31; always_ff @(posedge clk) begin _MandelbrotStep_D31 <= _MandelbrotStep_D30; end
/*latency*/ logic _MandelbrotStep_D32; always_ff @(posedge clk) begin _MandelbrotStep_D32 <= _MandelbrotStep_D31; end
/*latency*/ logic _MandelbrotStep_D33; always_ff @(posedge clk) begin _MandelbrotStep_D33 <= _MandelbrotStep_D32; end
/*latency*/ logic _MandelbrotStep_D34; always_ff @(posedge clk) begin _MandelbrotStep_D34 <= _MandelbrotStep_D33; end
/*latency*/ logic _MandelbrotStep_D35; always_ff @(posedge clk) begin _MandelbrotStep_D35 <= _MandelbrotStep_D34; end
/*latency*/ logic _MandelbrotStep_D36; always_ff @(posedge clk) begin _MandelbrotStep_D36 <= _MandelbrotStep_D35; end
/*latency*/ logic _MandelbrotStep_D37; always_ff @(posedge clk) begin _MandelbrotStep_D37 <= _MandelbrotStep_D36; end
/*latency*/ logic _MandelbrotStep_D38; always_ff @(posedge clk) begin _MandelbrotStep_D38 <= _MandelbrotStep_D37; end
/*latency*/ logic _MandelbrotStep_D39; always_ff @(posedge clk) begin _MandelbrotStep_D39 <= _MandelbrotStep_D38; end
/*latency*/ logic _MandelbrotStep_D40; always_ff @(posedge clk) begin _MandelbrotStep_D40 <= _MandelbrotStep_D39; end
/*latency*/ logic _MandelbrotStep_D41; always_ff @(posedge clk) begin _MandelbrotStep_D41 <= _MandelbrotStep_D40; end
/*latency*/ logic _MandelbrotStep_D42; always_ff @(posedge clk) begin _MandelbrotStep_D42 <= _MandelbrotStep_D41; end
/*latency*/ logic _MandelbrotStep_D43; always_ff @(posedge clk) begin _MandelbrotStep_D43 <= _MandelbrotStep_D42; end
/*latency*/ logic _MandelbrotStep_D44; always_ff @(posedge clk) begin _MandelbrotStep_D44 <= _MandelbrotStep_D43; end
/*latency*/ logic _MandelbrotStep_D45; always_ff @(posedge clk) begin _MandelbrotStep_D45 <= _MandelbrotStep_D44; end
/*latency*/ logic _MandelbrotStep_D46; always_ff @(posedge clk) begin _MandelbrotStep_D46 <= _MandelbrotStep_D45; end
/*latency*/ logic _MandelbrotStep_D47; always_ff @(posedge clk) begin _MandelbrotStep_D47 <= _MandelbrotStep_D46; end
/*latency*/ logic _MandelbrotStep_D48; always_ff @(posedge clk) begin _MandelbrotStep_D48 <= _MandelbrotStep_D47; end
/*latency*/ logic _MandelbrotStep_D49; always_ff @(posedge clk) begin _MandelbrotStep_D49 <= _MandelbrotStep_D48; end
/*latency*/ logic _MandelbrotStep_D50; always_ff @(posedge clk) begin _MandelbrotStep_D50 <= _MandelbrotStep_D49; end
/*latency*/ logic _MandelbrotStep_D51; always_ff @(posedge clk) begin _MandelbrotStep_D51 <= _MandelbrotStep_D50; end
/*mux_wire*/ logic[31:0] z_sq_r;
/*mux_wire*/ logic _fp_mul_fp_mul;
/*mux_wire*/ logic[31:0] _fp_mul_a;
/*mux_wire*/ logic[31:0] _fp_mul_b;
wire[31:0] _fp_mul_result;
/*mux_wire*/ logic _fp_mul_2_fp_mul;
/*mux_wire*/ logic[31:0] _fp_mul_2_a;
/*mux_wire*/ logic[31:0] _fp_mul_2_b;
wire[31:0] _fp_mul_2_result;
/*mux_wire*/ logic _fp_sub_fp_sub;
/*mux_wire*/ logic[31:0] _fp_sub_a;
/*mux_wire*/ logic[31:0] _fp_sub_b;
wire[31:0] _fp_sub_result;
/*mux_wire*/ logic[31:0] z_ri;
/*mux_wire*/ logic _fp_mul_3_fp_mul;
/*mux_wire*/ logic[31:0] _fp_mul_3_a;
/*mux_wire*/ logic[31:0] _fp_mul_3_b;
wire[31:0] _fp_mul_3_result;
/*mux_wire*/ logic[31:0] z_sq_i;
/*mux_wire*/ logic _fp_add_fp_add;
/*mux_wire*/ logic[31:0] _fp_add_a;
/*mux_wire*/ logic[31:0] _fp_add_b;
wire[31:0] _fp_add_result;
/*mux_wire*/ logic _fp_add_2_fp_add;
/*mux_wire*/ logic[31:0] _fp_add_2_a;
/*mux_wire*/ logic[31:0] _fp_add_2_b;
wire[31:0] _fp_add_2_result;
/*mux_wire*/ logic _fp_add_3_fp_add;
/*mux_wire*/ logic[31:0] _fp_add_3_a;
/*mux_wire*/ logic[31:0] _fp_add_3_b;
wire[31:0] _fp_add_3_result;
/*mux_wire*/ logic[31:0] radius_sq;
/*mux_wire*/ logic _fp_mul_4_fp_mul;
/*mux_wire*/ logic[31:0] _fp_mul_4_a;
/*mux_wire*/ logic[31:0] _fp_mul_4_b;
wire[31:0] _fp_mul_4_result;
/*mux_wire*/ logic _fp_mul_5_fp_mul;
/*mux_wire*/ logic[31:0] _fp_mul_5_a;
/*mux_wire*/ logic[31:0] _fp_mul_5_b;
wire[31:0] _fp_mul_5_result;
/*mux_wire*/ logic _fp_add_4_fp_add;
/*mux_wire*/ logic[31:0] _fp_add_4_a;
/*mux_wire*/ logic[31:0] _fp_add_4_b;
wire[31:0] _fp_add_4_result;
/*mux_wire*/ logic[31:0] four;
/*latency*/ logic[31:0] _four_D7; always_ff @(posedge clk) begin _four_D7 <= four; end
/*latency*/ logic[31:0] _four_D8; always_ff @(posedge clk) begin _four_D8 <= _four_D7; end
/*latency*/ logic[31:0] _four_D9; always_ff @(posedge clk) begin _four_D9 <= _four_D8; end
/*latency*/ logic[31:0] _four_D10; always_ff @(posedge clk) begin _four_D10 <= _four_D9; end
/*latency*/ logic[31:0] _four_D11; always_ff @(posedge clk) begin _four_D11 <= _four_D10; end
/*latency*/ logic[31:0] _four_D12; always_ff @(posedge clk) begin _four_D12 <= _four_D11; end
/*latency*/ logic[31:0] _four_D13; always_ff @(posedge clk) begin _four_D13 <= _four_D12; end
/*latency*/ logic[31:0] _four_D14; always_ff @(posedge clk) begin _four_D14 <= _four_D13; end
/*latency*/ logic[31:0] _four_D15; always_ff @(posedge clk) begin _four_D15 <= _four_D14; end
/*latency*/ logic[31:0] _four_D16; always_ff @(posedge clk) begin _four_D16 <= _four_D15; end
/*latency*/ logic[31:0] _four_D17; always_ff @(posedge clk) begin _four_D17 <= _four_D16; end
/*latency*/ logic[31:0] _four_D18; always_ff @(posedge clk) begin _four_D18 <= _four_D17; end
/*latency*/ logic[31:0] _four_D19; always_ff @(posedge clk) begin _four_D19 <= _four_D18; end
/*latency*/ logic[31:0] _four_D20; always_ff @(posedge clk) begin _four_D20 <= _four_D19; end
/*latency*/ logic[31:0] _four_D21; always_ff @(posedge clk) begin _four_D21 <= _four_D20; end
/*latency*/ logic[31:0] _four_D22; always_ff @(posedge clk) begin _four_D22 <= _four_D21; end
/*latency*/ logic[31:0] _four_D23; always_ff @(posedge clk) begin _four_D23 <= _four_D22; end
/*latency*/ logic[31:0] _four_D24; always_ff @(posedge clk) begin _four_D24 <= _four_D23; end
/*latency*/ logic[31:0] _four_D25; always_ff @(posedge clk) begin _four_D25 <= _four_D24; end
/*latency*/ logic[31:0] _four_D26; always_ff @(posedge clk) begin _four_D26 <= _four_D25; end
/*latency*/ logic[31:0] _four_D27; always_ff @(posedge clk) begin _four_D27 <= _four_D26; end
/*latency*/ logic[31:0] _four_D28; always_ff @(posedge clk) begin _four_D28 <= _four_D27; end
/*latency*/ logic[31:0] _four_D29; always_ff @(posedge clk) begin _four_D29 <= _four_D28; end
/*latency*/ logic[31:0] _four_D30; always_ff @(posedge clk) begin _four_D30 <= _four_D29; end
/*latency*/ logic[31:0] _four_D31; always_ff @(posedge clk) begin _four_D31 <= _four_D30; end
/*latency*/ logic[31:0] _four_D32; always_ff @(posedge clk) begin _four_D32 <= _four_D31; end
/*latency*/ logic[31:0] _four_D33; always_ff @(posedge clk) begin _four_D33 <= _four_D32; end
/*latency*/ logic[31:0] _four_D34; always_ff @(posedge clk) begin _four_D34 <= _four_D33; end
/*latency*/ logic[31:0] _four_D35; always_ff @(posedge clk) begin _four_D35 <= _four_D34; end
/*latency*/ logic[31:0] _four_D36; always_ff @(posedge clk) begin _four_D36 <= _four_D35; end
/*latency*/ logic[31:0] _four_D37; always_ff @(posedge clk) begin _four_D37 <= _four_D36; end
/*latency*/ logic[31:0] _four_D38; always_ff @(posedge clk) begin _four_D38 <= _four_D37; end
/*latency*/ logic[31:0] _four_D39; always_ff @(posedge clk) begin _four_D39 <= _four_D38; end
/*latency*/ logic[31:0] _four_D40; always_ff @(posedge clk) begin _four_D40 <= _four_D39; end
/*latency*/ logic[31:0] _four_D41; always_ff @(posedge clk) begin _four_D41 <= _four_D40; end
/*latency*/ logic[31:0] _four_D42; always_ff @(posedge clk) begin _four_D42 <= _four_D41; end
/*latency*/ logic[31:0] _four_D43; always_ff @(posedge clk) begin _four_D43 <= _four_D42; end
/*latency*/ logic[31:0] _four_D44; always_ff @(posedge clk) begin _four_D44 <= _four_D43; end
/*latency*/ logic[31:0] _four_D45; always_ff @(posedge clk) begin _four_D45 <= _four_D44; end
/*latency*/ logic[31:0] _four_D46; always_ff @(posedge clk) begin _four_D46 <= _four_D45; end
/*latency*/ logic[31:0] _four_D47; always_ff @(posedge clk) begin _four_D47 <= _four_D46; end
/*latency*/ logic[31:0] _four_D48; always_ff @(posedge clk) begin _four_D48 <= _four_D47; end
/*latency*/ logic[31:0] _four_D49; always_ff @(posedge clk) begin _four_D49 <= _four_D48; end
/*mux_wire*/ logic _fp_fromint_fp_fromint;
/*mux_wire*/ logic signed[31:0] _fp_fromint_a;
wire[31:0] _fp_fromint_result;
/*mux_wire*/ logic _fp_gt_fp_gt;
/*mux_wire*/ logic[31:0] _fp_gt_a;
/*mux_wire*/ logic[31:0] _fp_gt_b;
wire _fp_gt_result;
fp_mul fp_mul(
	.clk(clk),
	.fp_mul(_fp_mul_fp_mul),
	.a(_fp_mul_a),
	.b(_fp_mul_b),
	.result(_fp_mul_result)
);
fp_mul fp_mul_2(
	.clk(clk),
	.fp_mul(_fp_mul_2_fp_mul),
	.a(_fp_mul_2_a),
	.b(_fp_mul_2_b),
	.result(_fp_mul_2_result)
);
fp_sub fp_sub(
	.clk(clk),
	.fp_sub(_fp_sub_fp_sub),
	.a(_fp_sub_a),
	.b(_fp_sub_b),
	.result(_fp_sub_result)
);
fp_mul fp_mul_3(
	.clk(clk),
	.fp_mul(_fp_mul_3_fp_mul),
	.a(_fp_mul_3_a),
	.b(_fp_mul_3_b),
	.result(_fp_mul_3_result)
);
fp_add fp_add(
	.clk(clk),
	.fp_add(_fp_add_fp_add),
	.a(_fp_add_a),
	.b(_fp_add_b),
	.result(_fp_add_result)
);
fp_add fp_add_2(
	.clk(clk),
	.fp_add(_fp_add_2_fp_add),
	.a(_fp_add_2_a),
	.b(_fp_add_2_b),
	.result(_fp_add_2_result)
);
fp_add fp_add_3(
	.clk(clk),
	.fp_add(_fp_add_3_fp_add),
	.a(_fp_add_3_a),
	.b(_fp_add_3_b),
	.result(_fp_add_3_result)
);
fp_mul fp_mul_4(
	.clk(clk),
	.fp_mul(_fp_mul_4_fp_mul),
	.a(_fp_mul_4_a),
	.b(_fp_mul_4_b),
	.result(_fp_mul_4_result)
);
fp_mul fp_mul_5(
	.clk(clk),
	.fp_mul(_fp_mul_5_fp_mul),
	.a(_fp_mul_5_a),
	.b(_fp_mul_5_b),
	.result(_fp_mul_5_result)
);
fp_add fp_add_4(
	.clk(clk),
	.fp_add(_fp_add_4_fp_add),
	.a(_fp_add_4_a),
	.b(_fp_add_4_b),
	.result(_fp_add_4_result)
);
fp_fromint fp_fromint(
	.clk(clk),
	.fp_fromint(_fp_fromint_fp_fromint),
	.a(_fp_fromint_a),
	.result(_fp_fromint_result)
);
fp_gt fp_gt(
	.clk(clk),
	.fp_gt(_fp_gt_fp_gt),
	.a(_fp_gt_a),
	.b(_fp_gt_b),
	.result(_fp_gt_result)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	new_z_r = 'x;
	if(_MandelbrotStep_D30) new_z_r = _fp_add_2_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	new_z_i = 'x;
	if(_MandelbrotStep_D30) new_z_i = _fp_add_3_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	is_done = 1'bx;
	if(_MandelbrotStep_D51) is_done = _fp_gt_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	z_sq_r = 'x;
	if(_MandelbrotStep_D19) z_sq_r = _fp_sub_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_mul_fp_mul = 1'bx;
	_fp_mul_fp_mul = 1'b0;
	if(MandelbrotStep) _fp_mul_fp_mul = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_mul_a = 'x;
	if(MandelbrotStep) _fp_mul_a = z_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_mul_b = 'x;
	if(MandelbrotStep) _fp_mul_b = z_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_mul_2_fp_mul = 1'bx;
	_fp_mul_2_fp_mul = 1'b0;
	if(MandelbrotStep) _fp_mul_2_fp_mul = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_mul_2_a = 'x;
	if(MandelbrotStep) _fp_mul_2_a = z_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_mul_2_b = 'x;
	if(MandelbrotStep) _fp_mul_2_b = z_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_sub_fp_sub = 1'bx;
	_fp_sub_fp_sub = 1'b0;
	if(_MandelbrotStep_D8) _fp_sub_fp_sub = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_sub_a = 'x;
	if(_MandelbrotStep_D8) _fp_sub_a = _fp_mul_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_sub_b = 'x;
	if(_MandelbrotStep_D8) _fp_sub_b = _fp_mul_2_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	z_ri = 'x;
	if(_MandelbrotStep_D8) z_ri = _fp_mul_3_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_mul_3_fp_mul = 1'bx;
	_fp_mul_3_fp_mul = 1'b0;
	if(MandelbrotStep) _fp_mul_3_fp_mul = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_mul_3_a = 'x;
	if(MandelbrotStep) _fp_mul_3_a = z_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_mul_3_b = 'x;
	if(MandelbrotStep) _fp_mul_3_b = z_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	z_sq_i = 'x;
	if(_MandelbrotStep_D19) z_sq_i = _fp_add_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_add_fp_add = 1'bx;
	_fp_add_fp_add = 1'b0;
	if(_MandelbrotStep_D8) _fp_add_fp_add = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_add_a = 'x;
	if(_MandelbrotStep_D8) _fp_add_a = z_ri;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_add_b = 'x;
	if(_MandelbrotStep_D8) _fp_add_b = z_ri;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_add_2_fp_add = 1'bx;
	_fp_add_2_fp_add = 1'b0;
	if(_MandelbrotStep_D19) _fp_add_2_fp_add = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_add_2_a = 'x;
	if(_MandelbrotStep_D19) _fp_add_2_a = z_sq_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_add_2_b = 'x;
	if(_MandelbrotStep_D19) _fp_add_2_b = c_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_add_3_fp_add = 1'bx;
	_fp_add_3_fp_add = 1'b0;
	if(_MandelbrotStep_D19) _fp_add_3_fp_add = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_add_3_a = 'x;
	if(_MandelbrotStep_D19) _fp_add_3_a = z_sq_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_add_3_b = 'x;
	if(_MandelbrotStep_D19) _fp_add_3_b = c_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	radius_sq = 'x;
	if(_MandelbrotStep_D49) radius_sq = _fp_add_4_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_mul_4_fp_mul = 1'bx;
	_fp_mul_4_fp_mul = 1'b0;
	if(_MandelbrotStep_D30) _fp_mul_4_fp_mul = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_mul_4_a = 'x;
	if(_MandelbrotStep_D30) _fp_mul_4_a = new_z_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_mul_4_b = 'x;
	if(_MandelbrotStep_D30) _fp_mul_4_b = new_z_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_mul_5_fp_mul = 1'bx;
	_fp_mul_5_fp_mul = 1'b0;
	if(_MandelbrotStep_D30) _fp_mul_5_fp_mul = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_mul_5_a = 'x;
	if(_MandelbrotStep_D30) _fp_mul_5_a = new_z_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_mul_5_b = 'x;
	if(_MandelbrotStep_D30) _fp_mul_5_b = new_z_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_add_4_fp_add = 1'bx;
	_fp_add_4_fp_add = 1'b0;
	if(_MandelbrotStep_D38) _fp_add_4_fp_add = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_add_4_a = 'x;
	if(_MandelbrotStep_D38) _fp_add_4_a = _fp_mul_4_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_add_4_b = 'x;
	if(_MandelbrotStep_D38) _fp_add_4_b = _fp_mul_5_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	four = 'x;
	if(_MandelbrotStep_D6) four = _fp_fromint_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_fromint_fp_fromint = 1'bx;
	_fp_fromint_fp_fromint = 1'b0;
	if(MandelbrotStep) _fp_fromint_fp_fromint = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_fromint_a = 32'sdx;
	if(MandelbrotStep) _fp_fromint_a = 3'd4;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_gt_fp_gt = 1'bx;
	_fp_gt_fp_gt = 1'b0;
	if(_MandelbrotStep_D49) _fp_gt_fp_gt = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_gt_a = 'x;
	if(_MandelbrotStep_D49) _fp_gt_a = radius_sq;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fp_gt_b = 'x;
	if(_MandelbrotStep_D49) _fp_gt_b = _four_D49;
end
endmodule

// unsafe_int_cast #(FROM_I: 1, TO_I: 101, FROM: 0, TO: 100)
module unsafe_int_cast__FROM_I1_TO_I101_FROM0_TO100(
	input clk,
	input wire[6:0] in,
	output /*mux_wire*/ logic[6:0] out
);

	assign out = in;
endmodule

// transmute_to_bits #(T: type int #(FROM: 0, TO: 16))
module transmute_to_bits__Ttypeint__FROM0_TO16(
	input clk,
	input wire[3:0] value,
	output /*mux_wire*/ logic[3:0] bits
);

assign bits = value;
endmodule

// transmute_from_bits #(T: type int #(FROM: 0, TO: 16))
module transmute_from_bits__Ttypeint__FROM0_TO16(
	input clk,
	input wire[3:0] bits,
	output /*mux_wire*/ logic[3:0] value
);

assign value = bits;
endmodule

// fp_fmadd #()
module fp_fmadd(
	input clk,
	input wire fp_fmadd,
	input wire[31:0] a,
	input wire[31:0] b,
	input wire[31:0] c,
	output /*mux_wire*/ logic[31:0] result
);

/*latency*/ logic _fp_fmadd_D1; always_ff @(posedge clk) begin _fp_fmadd_D1 <= fp_fmadd; end
/*latency*/ logic _fp_fmadd_D2; always_ff @(posedge clk) begin _fp_fmadd_D2 <= _fp_fmadd_D1; end
/*latency*/ logic _fp_fmadd_D3; always_ff @(posedge clk) begin _fp_fmadd_D3 <= _fp_fmadd_D2; end
/*latency*/ logic _fp_fmadd_D4; always_ff @(posedge clk) begin _fp_fmadd_D4 <= _fp_fmadd_D3; end
/*latency*/ logic _fp_fmadd_D5; always_ff @(posedge clk) begin _fp_fmadd_D5 <= _fp_fmadd_D4; end
/*latency*/ logic _fp_fmadd_D6; always_ff @(posedge clk) begin _fp_fmadd_D6 <= _fp_fmadd_D5; end
/*latency*/ logic _fp_fmadd_D7; always_ff @(posedge clk) begin _fp_fmadd_D7 <= _fp_fmadd_D6; end
/*latency*/ logic _fp_fmadd_D8; always_ff @(posedge clk) begin _fp_fmadd_D8 <= _fp_fmadd_D7; end
/*latency*/ logic _fp_fmadd_D9; always_ff @(posedge clk) begin _fp_fmadd_D9 <= _fp_fmadd_D8; end
/*latency*/ logic _fp_fmadd_D10; always_ff @(posedge clk) begin _fp_fmadd_D10 <= _fp_fmadd_D9; end
/*latency*/ logic _fp_fmadd_D11; always_ff @(posedge clk) begin _fp_fmadd_D11 <= _fp_fmadd_D10; end
/*latency*/ logic _fp_fmadd_D12; always_ff @(posedge clk) begin _fp_fmadd_D12 <= _fp_fmadd_D11; end
/*latency*/ logic _fp_fmadd_D13; always_ff @(posedge clk) begin _fp_fmadd_D13 <= _fp_fmadd_D12; end
/*latency*/ logic _fp_fmadd_D14; always_ff @(posedge clk) begin _fp_fmadd_D14 <= _fp_fmadd_D13; end
/*latency*/ logic _fp_fmadd_D15; always_ff @(posedge clk) begin _fp_fmadd_D15 <= _fp_fmadd_D14; end
/*latency*/ logic _fp_fmadd_D16; always_ff @(posedge clk) begin _fp_fmadd_D16 <= _fp_fmadd_D15; end
/*mux_wire*/ logic _ip_s_axis_a_tvalid;
/*mux_wire*/ logic[31:0] _ip_s_axis_a_tdata;
/*mux_wire*/ logic _ip_s_axis_b_tvalid;
/*mux_wire*/ logic[31:0] _ip_s_axis_b_tdata;
/*mux_wire*/ logic _ip_s_axis_c_tvalid;
/*mux_wire*/ logic[31:0] _ip_s_axis_c_tdata;
wire[31:0] _ip_m_axis_result_tdata;
/*mux_wire*/ logic _;
wire _ip_m_axis_result_tvalid;
fp_fmadd_ip #() ip(
	.aclk(clk),
	.s_axis_a_tvalid(_ip_s_axis_a_tvalid),
	.s_axis_a_tdata(_ip_s_axis_a_tdata),
	.s_axis_b_tvalid(_ip_s_axis_b_tvalid),
	.s_axis_b_tdata(_ip_s_axis_b_tdata),
	.s_axis_c_tvalid(_ip_s_axis_c_tvalid),
	.s_axis_c_tdata(_ip_s_axis_c_tdata),
	.m_axis_result_tvalid(_ip_m_axis_result_tvalid),
	.m_axis_result_tdata(_ip_m_axis_result_tdata)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	result = 'x;
	if(_fp_fmadd_D16) result = _ip_m_axis_result_tdata;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_a_tvalid = 1'bx;
	_ip_s_axis_a_tvalid = 1'b0;
	if(fp_fmadd) _ip_s_axis_a_tvalid = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_a_tdata = 'x;
	if(fp_fmadd) _ip_s_axis_a_tdata = a;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_b_tvalid = 1'bx;
	_ip_s_axis_b_tvalid = 1'b0;
	if(fp_fmadd) _ip_s_axis_b_tvalid = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_b_tdata = 'x;
	if(fp_fmadd) _ip_s_axis_b_tdata = b;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_c_tvalid = 1'bx;
	_ip_s_axis_c_tvalid = 1'b0;
	if(fp_fmadd) _ip_s_axis_c_tvalid = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_c_tdata = 'x;
	if(fp_fmadd) _ip_s_axis_c_tdata = c;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ = 1'bx;
	if(_fp_fmadd_D16) _ = _ip_m_axis_result_tvalid;
end
endmodule

// transmute_to_bits #(T: type int #(FROM: 0, TO: 101))
module transmute_to_bits__Ttypeint__FROM0_TO101(
	input clk,
	input wire[6:0] value,
	output /*mux_wire*/ logic[6:0] bits
);

assign bits = value;
endmodule

// transmute_to_bits #(T: type bool #()[8])
module transmute_to_bits__Ttypebool____8(
	input clk,
	input wire[7:0] value,
	output /*mux_wire*/ logic[7:0] bits
);

assign bits = value;
endmodule

// transmute_from_bits #(T: type int #(FROM: 0, TO: 101))
module transmute_from_bits__Ttypeint__FROM0_TO101(
	input clk,
	input wire[6:0] bits,
	output /*mux_wire*/ logic[6:0] value
);

assign value = bits;
endmodule

// transmute_from_bits #(T: type bool #()[8])
module transmute_from_bits__Ttypebool____8(
	input clk,
	input wire[7:0] bits,
	output /*mux_wire*/ logic[7:0] value
);

assign value = bits;
endmodule

// CrossActionNoData #()
module CrossActionNoData(
	input in_clk,
	input wire in,
	output /*mux_wire*/ logic out
);

/*mux_wire*/ logic _cross_valid_in;
wire _cross_valid_out;
CrossDomain__Ttypebool cross_valid(
	.in_clk(in_clk),
	.in(_cross_valid_in),
	.out(_cross_valid_out)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_cross_valid_in = 1'bx;
	if(in) _cross_valid_in = 1'b1;
	if(!in) _cross_valid_in = 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	out = 1'bx;
	out = 1'b0;
	if(_cross_valid_out) out = 1'b1;
end
endmodule

// LatencyOffset #(T: type bool #(), OFFSET: -75)
module LatencyOffset__Ttypebool____OFFSET_75(
	input clk,
	input wire in,
	output /*mux_wire*/ logic out
);

	assign out = in;
endmodule

// RAM #(T: type float #(), DEPTH: 75)
module RAM__Ttypefloat____DEPTH75(
	input clk,
	input wire write,
	input wire[6:0] addra,
	input wire[31:0] dina,
	input wire read,
	input wire[6:0] addrb,
	output /*mux_wire*/ logic[31:0] doutb
);

/*latency*/ logic _read_D1001; always_ff @(posedge clk) begin _read_D1001 <= read; end
/*latency*/ logic _read_D1002; always_ff @(posedge clk) begin _read_D1002 <= _read_D1001; end
/*mux_wire*/ logic[31:0] din;
/*mux_wire*/ logic[31:0] _transmute_to_bits_value;
wire[31:0] _transmute_to_bits_bits;
/*mux_wire*/ logic _ram_write;
/*mux_wire*/ logic[6:0] _ram_addra;
/*mux_wire*/ logic[31:0] _ram_dina;
/*mux_wire*/ logic[31:0] dout;
/*mux_wire*/ logic _ram_read;
/*mux_wire*/ logic[6:0] _ram_addrb;
wire[31:0] _ram_doutb;
/*mux_wire*/ logic[31:0] _transmute_from_bits_bits;
wire[31:0] _transmute_from_bits_value;
RawRAM #(.WIDTH(32), .DEPTH(75)) ram(
	.clk(clk),
	.write(_ram_write),
	.addra(_ram_addra),
	.dina(_ram_dina),
	.read(_ram_read),
	.addrb(_ram_addrb),
	.doutb(_ram_doutb)
);
transmute_to_bits__Ttypefloat transmute_to_bits(
	.clk(clk),
	.value(_transmute_to_bits_value),
	.bits(_transmute_to_bits_bits)
);
transmute_from_bits__Ttypefloat transmute_from_bits(
	.clk(clk),
	.bits(_transmute_from_bits_bits),
	.value(_transmute_from_bits_value)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	din = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(write) din = _transmute_to_bits_bits;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_to_bits_value = 'x;
	if(write) _transmute_to_bits_value = dina;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ram_write = 1'bx;
	_ram_write = 1'b0;
	if(write) _ram_write = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ram_addra = 7'dx;
	if(write) _ram_addra = addra;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ram_dina = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(write) _ram_dina = din;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	doutb = 'x;
	if(_read_D1002) doutb = _transmute_from_bits_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	dout = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_read_D1002) dout = _ram_doutb;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ram_read = 1'bx;
	_ram_read = 1'b0;
	if(read) _ram_read = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ram_addrb = 7'dx;
	if(read) _ram_addrb = addrb;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_from_bits_bits = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_read_D1002) _transmute_from_bits_bits = dout;
end
endmodule

// RAM #(T: type int #(FROM: 0, TO: 100), DEPTH: 75)
module RAM__Ttypeint__FROM0_TO100__DEPTH75(
	input clk,
	input wire write,
	input wire[6:0] addra,
	input wire[6:0] dina,
	input wire read,
	input wire[6:0] addrb,
	output /*mux_wire*/ logic[6:0] doutb
);

/*latency*/ logic _read_D1001; always_ff @(posedge clk) begin _read_D1001 <= read; end
/*latency*/ logic _read_D1002; always_ff @(posedge clk) begin _read_D1002 <= _read_D1001; end
/*mux_wire*/ logic[6:0] din;
/*mux_wire*/ logic[6:0] _transmute_to_bits_value;
wire[6:0] _transmute_to_bits_bits;
/*mux_wire*/ logic _ram_write;
/*mux_wire*/ logic[6:0] _ram_addra;
/*mux_wire*/ logic[6:0] _ram_dina;
/*mux_wire*/ logic[6:0] dout;
/*mux_wire*/ logic _ram_read;
/*mux_wire*/ logic[6:0] _ram_addrb;
wire[6:0] _ram_doutb;
/*mux_wire*/ logic[6:0] _transmute_from_bits_bits;
wire[6:0] _transmute_from_bits_value;
RawRAM #(.WIDTH(7), .DEPTH(75)) ram(
	.clk(clk),
	.write(_ram_write),
	.addra(_ram_addra),
	.dina(_ram_dina),
	.read(_ram_read),
	.addrb(_ram_addrb),
	.doutb(_ram_doutb)
);
transmute_to_bits__Ttypeint__FROM0_TO100 transmute_to_bits(
	.clk(clk),
	.value(_transmute_to_bits_value),
	.bits(_transmute_to_bits_bits)
);
transmute_from_bits__Ttypeint__FROM0_TO100 transmute_from_bits(
	.clk(clk),
	.bits(_transmute_from_bits_bits),
	.value(_transmute_from_bits_value)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	din = 7'bxxxxxxx;
	if(write) din = _transmute_to_bits_bits;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_to_bits_value = 7'dx;
	if(write) _transmute_to_bits_value = dina;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ram_write = 1'bx;
	_ram_write = 1'b0;
	if(write) _ram_write = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ram_addra = 7'dx;
	if(write) _ram_addra = addra;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ram_dina = 7'bxxxxxxx;
	if(write) _ram_dina = din;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	doutb = 7'dx;
	if(_read_D1002) doutb = _transmute_from_bits_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	dout = 7'bxxxxxxx;
	if(_read_D1002) dout = _ram_doutb;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ram_read = 1'bx;
	_ram_read = 1'b0;
	if(read) _ram_read = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ram_addrb = 7'dx;
	if(read) _ram_addrb = addrb;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_from_bits_bits = 7'bxxxxxxx;
	if(_read_D1002) _transmute_from_bits_bits = dout;
end
endmodule

// RAM #(T: type bool #()[8], DEPTH: 75)
module RAM__Ttypebool____8__DEPTH75(
	input clk,
	input wire write,
	input wire[6:0] addra,
	input wire[7:0] dina,
	input wire read,
	input wire[6:0] addrb,
	output /*mux_wire*/ logic[7:0] doutb
);

/*latency*/ logic _read_D1001; always_ff @(posedge clk) begin _read_D1001 <= read; end
/*latency*/ logic _read_D1002; always_ff @(posedge clk) begin _read_D1002 <= _read_D1001; end
/*mux_wire*/ logic[7:0] din;
/*mux_wire*/ logic[7:0] _transmute_to_bits_value;
wire[7:0] _transmute_to_bits_bits;
/*mux_wire*/ logic _ram_write;
/*mux_wire*/ logic[6:0] _ram_addra;
/*mux_wire*/ logic[7:0] _ram_dina;
/*mux_wire*/ logic[7:0] dout;
/*mux_wire*/ logic _ram_read;
/*mux_wire*/ logic[6:0] _ram_addrb;
wire[7:0] _ram_doutb;
/*mux_wire*/ logic[7:0] _transmute_from_bits_bits;
wire[7:0] _transmute_from_bits_value;
RawRAM #(.WIDTH(8), .DEPTH(75)) ram(
	.clk(clk),
	.write(_ram_write),
	.addra(_ram_addra),
	.dina(_ram_dina),
	.read(_ram_read),
	.addrb(_ram_addrb),
	.doutb(_ram_doutb)
);
transmute_to_bits__Ttypebool____8 transmute_to_bits(
	.clk(clk),
	.value(_transmute_to_bits_value),
	.bits(_transmute_to_bits_bits)
);
transmute_from_bits__Ttypebool____8 transmute_from_bits(
	.clk(clk),
	.bits(_transmute_from_bits_bits),
	.value(_transmute_from_bits_value)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	din = 8'bxxxxxxxx;
	if(write) din = _transmute_to_bits_bits;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_to_bits_value = 8'bxxxxxxxx;
	if(write) _transmute_to_bits_value = dina;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ram_write = 1'bx;
	_ram_write = 1'b0;
	if(write) _ram_write = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ram_addra = 7'dx;
	if(write) _ram_addra = addra;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ram_dina = 8'bxxxxxxxx;
	if(write) _ram_dina = din;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	doutb = 8'bxxxxxxxx;
	if(_read_D1002) doutb = _transmute_from_bits_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	dout = 8'bxxxxxxxx;
	if(_read_D1002) dout = _ram_doutb;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ram_read = 1'bx;
	_ram_read = 1'b0;
	if(read) _ram_read = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ram_addrb = 7'dx;
	if(read) _ram_addrb = addrb;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_from_bits_bits = 8'bxxxxxxxx;
	if(_read_D1002) _transmute_from_bits_bits = dout;
end
endmodule

// fp_fromint_ip #()
// Provided externally
// module fp_fromint_ip(
// 	input aclk,
// 	input wire s_axis_a_tvalid,
// 	input wire signed[31:0] s_axis_a_tdata,
// 	output /*mux_wire*/ logic m_axis_result_tvalid,
// 	output /*mux_wire*/ logic[31:0] m_axis_result_tdata
// );
// fp_mul #()
module fp_mul(
	input clk,
	input wire fp_mul,
	input wire[31:0] a,
	input wire[31:0] b,
	output /*mux_wire*/ logic[31:0] result
);

/*latency*/ logic _fp_mul_D1; always_ff @(posedge clk) begin _fp_mul_D1 <= fp_mul; end
/*latency*/ logic _fp_mul_D2; always_ff @(posedge clk) begin _fp_mul_D2 <= _fp_mul_D1; end
/*latency*/ logic _fp_mul_D3; always_ff @(posedge clk) begin _fp_mul_D3 <= _fp_mul_D2; end
/*latency*/ logic _fp_mul_D4; always_ff @(posedge clk) begin _fp_mul_D4 <= _fp_mul_D3; end
/*latency*/ logic _fp_mul_D5; always_ff @(posedge clk) begin _fp_mul_D5 <= _fp_mul_D4; end
/*latency*/ logic _fp_mul_D6; always_ff @(posedge clk) begin _fp_mul_D6 <= _fp_mul_D5; end
/*latency*/ logic _fp_mul_D7; always_ff @(posedge clk) begin _fp_mul_D7 <= _fp_mul_D6; end
/*latency*/ logic _fp_mul_D8; always_ff @(posedge clk) begin _fp_mul_D8 <= _fp_mul_D7; end
/*mux_wire*/ logic _ip_s_axis_a_tvalid;
/*mux_wire*/ logic[31:0] _ip_s_axis_a_tdata;
/*mux_wire*/ logic _ip_s_axis_b_tvalid;
/*mux_wire*/ logic[31:0] _ip_s_axis_b_tdata;
wire[31:0] _ip_m_axis_result_tdata;
/*mux_wire*/ logic _;
wire _ip_m_axis_result_tvalid;
fp_mul_ip #() ip(
	.aclk(clk),
	.s_axis_a_tvalid(_ip_s_axis_a_tvalid),
	.s_axis_a_tdata(_ip_s_axis_a_tdata),
	.s_axis_b_tvalid(_ip_s_axis_b_tvalid),
	.s_axis_b_tdata(_ip_s_axis_b_tdata),
	.m_axis_result_tvalid(_ip_m_axis_result_tvalid),
	.m_axis_result_tdata(_ip_m_axis_result_tdata)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	result = 'x;
	if(_fp_mul_D8) result = _ip_m_axis_result_tdata;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_a_tvalid = 1'bx;
	_ip_s_axis_a_tvalid = 1'b0;
	if(fp_mul) _ip_s_axis_a_tvalid = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_a_tdata = 'x;
	if(fp_mul) _ip_s_axis_a_tdata = a;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_b_tvalid = 1'bx;
	_ip_s_axis_b_tvalid = 1'b0;
	if(fp_mul) _ip_s_axis_b_tvalid = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_b_tdata = 'x;
	if(fp_mul) _ip_s_axis_b_tdata = b;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ = 1'bx;
	if(_fp_mul_D8) _ = _ip_m_axis_result_tvalid;
end
endmodule

// fp_sub #()
module fp_sub(
	input clk,
	input wire fp_sub,
	input wire[31:0] a,
	input wire[31:0] b,
	output /*mux_wire*/ logic[31:0] result
);

/*latency*/ logic _fp_sub_D1; always_ff @(posedge clk) begin _fp_sub_D1 <= fp_sub; end
/*latency*/ logic _fp_sub_D2; always_ff @(posedge clk) begin _fp_sub_D2 <= _fp_sub_D1; end
/*latency*/ logic _fp_sub_D3; always_ff @(posedge clk) begin _fp_sub_D3 <= _fp_sub_D2; end
/*latency*/ logic _fp_sub_D4; always_ff @(posedge clk) begin _fp_sub_D4 <= _fp_sub_D3; end
/*latency*/ logic _fp_sub_D5; always_ff @(posedge clk) begin _fp_sub_D5 <= _fp_sub_D4; end
/*latency*/ logic _fp_sub_D6; always_ff @(posedge clk) begin _fp_sub_D6 <= _fp_sub_D5; end
/*latency*/ logic _fp_sub_D7; always_ff @(posedge clk) begin _fp_sub_D7 <= _fp_sub_D6; end
/*latency*/ logic _fp_sub_D8; always_ff @(posedge clk) begin _fp_sub_D8 <= _fp_sub_D7; end
/*latency*/ logic _fp_sub_D9; always_ff @(posedge clk) begin _fp_sub_D9 <= _fp_sub_D8; end
/*latency*/ logic _fp_sub_D10; always_ff @(posedge clk) begin _fp_sub_D10 <= _fp_sub_D9; end
/*latency*/ logic _fp_sub_D11; always_ff @(posedge clk) begin _fp_sub_D11 <= _fp_sub_D10; end
/*mux_wire*/ logic _ip_s_axis_a_tvalid;
/*mux_wire*/ logic[31:0] _ip_s_axis_a_tdata;
/*mux_wire*/ logic _ip_s_axis_b_tvalid;
/*mux_wire*/ logic[31:0] _ip_s_axis_b_tdata;
wire[31:0] _ip_m_axis_result_tdata;
/*mux_wire*/ logic _;
wire _ip_m_axis_result_tvalid;
fp_sub_ip #() ip(
	.aclk(clk),
	.s_axis_a_tvalid(_ip_s_axis_a_tvalid),
	.s_axis_a_tdata(_ip_s_axis_a_tdata),
	.s_axis_b_tvalid(_ip_s_axis_b_tvalid),
	.s_axis_b_tdata(_ip_s_axis_b_tdata),
	.m_axis_result_tvalid(_ip_m_axis_result_tvalid),
	.m_axis_result_tdata(_ip_m_axis_result_tdata)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	result = 'x;
	if(_fp_sub_D11) result = _ip_m_axis_result_tdata;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_a_tvalid = 1'bx;
	_ip_s_axis_a_tvalid = 1'b0;
	if(fp_sub) _ip_s_axis_a_tvalid = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_a_tdata = 'x;
	if(fp_sub) _ip_s_axis_a_tdata = a;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_b_tvalid = 1'bx;
	_ip_s_axis_b_tvalid = 1'b0;
	if(fp_sub) _ip_s_axis_b_tvalid = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_b_tdata = 'x;
	if(fp_sub) _ip_s_axis_b_tdata = b;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ = 1'bx;
	if(_fp_sub_D11) _ = _ip_m_axis_result_tvalid;
end
endmodule

// fp_add #()
module fp_add(
	input clk,
	input wire fp_add,
	input wire[31:0] a,
	input wire[31:0] b,
	output /*mux_wire*/ logic[31:0] result
);

/*latency*/ logic _fp_add_D1; always_ff @(posedge clk) begin _fp_add_D1 <= fp_add; end
/*latency*/ logic _fp_add_D2; always_ff @(posedge clk) begin _fp_add_D2 <= _fp_add_D1; end
/*latency*/ logic _fp_add_D3; always_ff @(posedge clk) begin _fp_add_D3 <= _fp_add_D2; end
/*latency*/ logic _fp_add_D4; always_ff @(posedge clk) begin _fp_add_D4 <= _fp_add_D3; end
/*latency*/ logic _fp_add_D5; always_ff @(posedge clk) begin _fp_add_D5 <= _fp_add_D4; end
/*latency*/ logic _fp_add_D6; always_ff @(posedge clk) begin _fp_add_D6 <= _fp_add_D5; end
/*latency*/ logic _fp_add_D7; always_ff @(posedge clk) begin _fp_add_D7 <= _fp_add_D6; end
/*latency*/ logic _fp_add_D8; always_ff @(posedge clk) begin _fp_add_D8 <= _fp_add_D7; end
/*latency*/ logic _fp_add_D9; always_ff @(posedge clk) begin _fp_add_D9 <= _fp_add_D8; end
/*latency*/ logic _fp_add_D10; always_ff @(posedge clk) begin _fp_add_D10 <= _fp_add_D9; end
/*latency*/ logic _fp_add_D11; always_ff @(posedge clk) begin _fp_add_D11 <= _fp_add_D10; end
/*mux_wire*/ logic _ip_s_axis_a_tvalid;
/*mux_wire*/ logic[31:0] _ip_s_axis_a_tdata;
/*mux_wire*/ logic _ip_s_axis_b_tvalid;
/*mux_wire*/ logic[31:0] _ip_s_axis_b_tdata;
wire[31:0] _ip_m_axis_result_tdata;
/*mux_wire*/ logic _;
wire _ip_m_axis_result_tvalid;
fp_add_ip #() ip(
	.aclk(clk),
	.s_axis_a_tvalid(_ip_s_axis_a_tvalid),
	.s_axis_a_tdata(_ip_s_axis_a_tdata),
	.s_axis_b_tvalid(_ip_s_axis_b_tvalid),
	.s_axis_b_tdata(_ip_s_axis_b_tdata),
	.m_axis_result_tvalid(_ip_m_axis_result_tvalid),
	.m_axis_result_tdata(_ip_m_axis_result_tdata)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	result = 'x;
	if(_fp_add_D11) result = _ip_m_axis_result_tdata;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_a_tvalid = 1'bx;
	_ip_s_axis_a_tvalid = 1'b0;
	if(fp_add) _ip_s_axis_a_tvalid = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_a_tdata = 'x;
	if(fp_add) _ip_s_axis_a_tdata = a;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_b_tvalid = 1'bx;
	_ip_s_axis_b_tvalid = 1'b0;
	if(fp_add) _ip_s_axis_b_tvalid = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_b_tdata = 'x;
	if(fp_add) _ip_s_axis_b_tdata = b;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ = 1'bx;
	if(_fp_add_D11) _ = _ip_m_axis_result_tvalid;
end
endmodule

// fp_gt #()
module fp_gt(
	input clk,
	input wire fp_gt,
	input wire[31:0] a,
	input wire[31:0] b,
	output /*mux_wire*/ logic result
);

/*latency*/ logic _fp_gt_D1; always_ff @(posedge clk) begin _fp_gt_D1 <= fp_gt; end
/*latency*/ logic _fp_gt_D2; always_ff @(posedge clk) begin _fp_gt_D2 <= _fp_gt_D1; end
/*mux_wire*/ logic _ip_s_axis_a_tvalid;
/*mux_wire*/ logic[31:0] _ip_s_axis_a_tdata;
/*mux_wire*/ logic _ip_s_axis_b_tvalid;
/*mux_wire*/ logic[31:0] _ip_s_axis_b_tdata;
wire[7:0] _ip_m_axis_result_tdata;
wire _7 = _ip_m_axis_result_tdata[0];
/*mux_wire*/ logic _;
wire _ip_m_axis_result_tvalid;
fp_gt_ip #() ip(
	.aclk(clk),
	.s_axis_a_tvalid(_ip_s_axis_a_tvalid),
	.s_axis_a_tdata(_ip_s_axis_a_tdata),
	.s_axis_b_tvalid(_ip_s_axis_b_tvalid),
	.s_axis_b_tdata(_ip_s_axis_b_tdata),
	.m_axis_result_tvalid(_ip_m_axis_result_tvalid),
	.m_axis_result_tdata(_ip_m_axis_result_tdata)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	result = 1'bx;
	if(_fp_gt_D2) result = _7;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_a_tvalid = 1'bx;
	_ip_s_axis_a_tvalid = 1'b0;
	if(fp_gt) _ip_s_axis_a_tvalid = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_a_tdata = 'x;
	if(fp_gt) _ip_s_axis_a_tdata = a;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_b_tvalid = 1'bx;
	_ip_s_axis_b_tvalid = 1'b0;
	if(fp_gt) _ip_s_axis_b_tvalid = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ip_s_axis_b_tdata = 'x;
	if(fp_gt) _ip_s_axis_b_tdata = b;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_ = 1'bx;
	if(_fp_gt_D2) _ = _ip_m_axis_result_tvalid;
end
endmodule

// fp_fmadd_ip #()
// Provided externally
// module fp_fmadd_ip(
// 	input aclk,
// 	input wire s_axis_a_tvalid,
// 	input wire[31:0] s_axis_a_tdata,
// 	input wire s_axis_b_tvalid,
// 	input wire[31:0] s_axis_b_tdata,
// 	input wire s_axis_c_tvalid,
// 	input wire[31:0] s_axis_c_tdata,
// 	output /*mux_wire*/ logic m_axis_result_tvalid,
// 	output /*mux_wire*/ logic[31:0] m_axis_result_tdata
// );
// CrossDomain #(T: type bool #())
module CrossDomain__Ttypebool(
	input in_clk,
	input wire in,
	output /*mux_wire*/ logic out
);

	assign out = in;
endmodule

// RawRAM #(WIDTH: 32, DEPTH: 75)
// Provided externally
// module RawRAM__WIDTH32_DEPTH75(
// 	input clk,
// 	input wire write,
// 	input wire[6:0] addra,
// 	input wire[31:0] dina,
// 	input wire read,
// 	input wire[6:0] addrb,
// 	output /*mux_wire*/ logic[31:0] doutb
// );
// transmute_to_bits #(T: type float #())
module transmute_to_bits__Ttypefloat(
	input clk,
	input wire[31:0] value,
	output /*mux_wire*/ logic[31:0] bits
);

assign bits = value;
endmodule

// RawRAM #(WIDTH: 7, DEPTH: 75)
// Provided externally
// module RawRAM__WIDTH7_DEPTH75(
// 	input clk,
// 	input wire write,
// 	input wire[6:0] addra,
// 	input wire[6:0] dina,
// 	input wire read,
// 	input wire[6:0] addrb,
// 	output /*mux_wire*/ logic[6:0] doutb
// );
// transmute_to_bits #(T: type int #(FROM: 0, TO: 100))
module transmute_to_bits__Ttypeint__FROM0_TO100(
	input clk,
	input wire[6:0] value,
	output /*mux_wire*/ logic[6:0] bits
);

assign bits = value;
endmodule

// transmute_from_bits #(T: type int #(FROM: 0, TO: 100))
module transmute_from_bits__Ttypeint__FROM0_TO100(
	input clk,
	input wire[6:0] bits,
	output /*mux_wire*/ logic[6:0] value
);

assign value = bits;
endmodule

// RawRAM #(WIDTH: 8, DEPTH: 75)
// Provided externally
// module RawRAM__WIDTH8_DEPTH75(
// 	input clk,
// 	input wire write,
// 	input wire[6:0] addra,
// 	input wire[7:0] dina,
// 	input wire read,
// 	input wire[6:0] addrb,
// 	output /*mux_wire*/ logic[7:0] doutb
// );
// fp_mul_ip #()
// Provided externally
// module fp_mul_ip(
// 	input aclk,
// 	input wire s_axis_a_tvalid,
// 	input wire[31:0] s_axis_a_tdata,
// 	input wire s_axis_b_tvalid,
// 	input wire[31:0] s_axis_b_tdata,
// 	output /*mux_wire*/ logic m_axis_result_tvalid,
// 	output /*mux_wire*/ logic[31:0] m_axis_result_tdata
// );
// fp_sub_ip #()
// Provided externally
// module fp_sub_ip(
// 	input aclk,
// 	input wire s_axis_a_tvalid,
// 	input wire[31:0] s_axis_a_tdata,
// 	input wire s_axis_b_tvalid,
// 	input wire[31:0] s_axis_b_tdata,
// 	output /*mux_wire*/ logic m_axis_result_tvalid,
// 	output /*mux_wire*/ logic[31:0] m_axis_result_tdata
// );
// fp_add_ip #()
// Provided externally
// module fp_add_ip(
// 	input aclk,
// 	input wire s_axis_a_tvalid,
// 	input wire[31:0] s_axis_a_tdata,
// 	input wire s_axis_b_tvalid,
// 	input wire[31:0] s_axis_b_tdata,
// 	output /*mux_wire*/ logic m_axis_result_tvalid,
// 	output /*mux_wire*/ logic[31:0] m_axis_result_tdata
// );
// fp_gt_ip #()
// Provided externally
// module fp_gt_ip(
// 	input aclk,
// 	input wire s_axis_a_tvalid,
// 	input wire[31:0] s_axis_a_tdata,
// 	input wire s_axis_b_tvalid,
// 	input wire[31:0] s_axis_b_tdata,
// 	output /*mux_wire*/ logic m_axis_result_tvalid,
// 	output /*mux_wire*/ logic[7:0] m_axis_result_tdata
// );
