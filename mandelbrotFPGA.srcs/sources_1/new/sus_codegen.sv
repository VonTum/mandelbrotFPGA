// THIS IS A GENERATED FILE (Generated at 2025-08-29T16:10:18+02:00)
// This file was generated with SUS Compiler 0.3.0-devel (4ee0d50df3397055e6f4748049ab1111b6dc6bdf) built at 2025-08-29T01:45:39+02:00
// TapascoTop #()
module TapascoTop(
	input clk,
	input wire nreset,
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
assign _2 = !nreset;
/*mux_wire*/ logic _acc_rst;
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
assign _45 = !nreset;
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
assign _75 = !nreset;
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
wire _97;
assign _97 = write_addr == 6'd48;
wire _101;
assign _101 = write_addr == 7'd64;
wire _103 = _strb[0];
wire[7:0] _104;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _104[_g0] = _data[_g0];
end
endgenerate
wire _105 = _strb[1];
wire[7:0] _106;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _106[_g0] = _data[8 + _g0];
end
endgenerate
wire _107 = _strb[2];
wire[7:0] _108;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _108[_g0] = _data[16 + _g0];
end
endgenerate
wire _109 = _strb[3];
wire[7:0] _110;
generate
for(_g0 = 0; _g0 < 8; _g0 = _g0 + 1) begin
assign _110[_g0] = _data[24 + _g0];
end
endgenerate
wire _113;
assign _113 = write_addr == 6'd32;
wire _117;
assign _117 = write_addr == 6'd48;
wire _121;
assign _121 = write_addr == 7'd64;
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
wire _133;
assign _133 = !nreset;
wire _137;
assign _137 = !mem_data_valid;
wire _139;
assign _139 = !mem_addr_valid;
wire _140;
assign _140 = _137 & _139;
wire _acc_may_read_px;
/*mux_wire*/ logic[31:0] data;
/*mux_wire*/ logic[31:0] addr;
/*mux_wire*/ logic done;
/*mux_wire*/ logic _acc_read_px;
wire[31:0] _acc_iter_count;
wire[31:0] _acc_addr;
wire _acc_done;
/*mux_wire*/ logic[31:0] _transmute_to_bits_value;
wire[31:0] _transmute_to_bits_bits;
wire[33:0] _152;
assign _152 = mem_addr * 3'd4;
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
WholeMandelbrotComputer__WIDTH16_HEIGHT16 acc(
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
	.addr(_acc_addr),
	.done(_acc_done)
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
	if(_140) if(_acc_may_read_px) if(done) intr = 1'b1;
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
	if(_85) if(_slave_write_data_request_fire) if(!_90) if(_113) register0 <= tmp;
end
always_ff @(posedge clk) begin
	if(_85) if(_slave_write_data_request_fire) if(!_90) if(!_113) if(_117) register1 <= tmp;
end
always_ff @(posedge clk) begin
	if(_85) if(_slave_write_data_request_fire) if(!_90) if(!_113) if(!_117) if(_121) register2 <= tmp;
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
	if(_85) if(_slave_write_data_request_fire) if(!_90) if(_97) tmp = register1;
	if(_85) if(_slave_write_data_request_fire) if(!_90) if(!_97) if(_101) tmp = register2;
	for(int _v0 = 0; _v0 < 8; _v0 = _v0 + 1) begin
if(_85) if(_slave_write_data_request_fire) if(!_90) if(_103) tmp[_v0] = _104[_v0];
end
	for(int _v0 = 0; _v0 < 8; _v0 = _v0 + 1) begin
if(_85) if(_slave_write_data_request_fire) if(!_90) if(_105) tmp[8 + _v0] = _106[_v0];
end
	for(int _v0 = 0; _v0 < 8; _v0 = _v0 + 1) begin
if(_85) if(_slave_write_data_request_fire) if(!_90) if(_107) tmp[16 + _v0] = _108[_v0];
end
	for(int _v0 = 0; _v0 < 8; _v0 = _v0 + 1) begin
if(_85) if(_slave_write_data_request_fire) if(!_90) if(_109) tmp[24 + _v0] = _110[_v0];
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
	if(_140) if(_acc_may_read_px) mem_addr <= addr;
end
always_ff @(posedge clk) begin
	if(_140) if(_acc_may_read_px) mem_data <= _transmute_to_bits_bits;
end
always_ff @(posedge clk) begin
	if(_133) mem_addr_valid <= 1'b0;
	if(_140) if(_acc_may_read_px) mem_addr_valid <= 1'b1;
	if(mem_addr_valid) if(_mem_write_addr_request_fire) mem_addr_valid <= 1'b0;
end
always_ff @(posedge clk) begin
	if(_133) mem_data_valid <= 1'b0;
	if(_140) if(_acc_may_read_px) mem_data_valid <= 1'b1;
	if(mem_data_valid) if(_mem_write_data_request_fire) mem_data_valid <= 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	data = 32'dx;
	if(_140) if(_acc_may_read_px) data = _acc_iter_count;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	addr = 32'dx;
	if(_140) if(_acc_may_read_px) addr = _acc_addr;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	done = 1'bx;
	if(_140) if(_acc_may_read_px) done = _acc_done;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_acc_read_px = 1'bx;
	_acc_read_px = 1'b0;
	if(_140) if(_acc_may_read_px) _acc_read_px = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_to_bits_value = 32'dx;
	if(_140) if(_acc_may_read_px) _transmute_to_bits_value = data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_unsafe_int_cast_in = 34'dx;
	if(mem_addr_valid) _unsafe_int_cast_in = _152;
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

// WholeMandelbrotComputer #(WIDTH: 16, HEIGHT: 16)
module WholeMandelbrotComputer__WIDTH16_HEIGHT16(
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
	output /*mux_wire*/ logic[31:0] addr,
	output /*mux_wire*/ logic done
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
wire _pixel_producer_last;
/*mux_wire*/ logic[3:0] _mandel_iter_extra_data_v1_i;
/*mux_wire*/ logic[3:0] _mandel_iter_extra_data_v2_i;
/*mux_wire*/ logic _mandel_iter_extra_data_v3_i;
wire[8:0] _mandel_iter_extra_data_packed_o;
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D1; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D1 <= _mandel_iter_extra_data_packed_o; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D2; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D2 <= __mandel_iter_extra_data_packed_o_D1; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D3; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D3 <= __mandel_iter_extra_data_packed_o_D2; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D4; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D4 <= __mandel_iter_extra_data_packed_o_D3; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D5; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D5 <= __mandel_iter_extra_data_packed_o_D4; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D6; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D6 <= __mandel_iter_extra_data_packed_o_D5; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D7; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D7 <= __mandel_iter_extra_data_packed_o_D6; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D8; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D8 <= __mandel_iter_extra_data_packed_o_D7; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D9; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D9 <= __mandel_iter_extra_data_packed_o_D8; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D10; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D10 <= __mandel_iter_extra_data_packed_o_D9; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D11; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D11 <= __mandel_iter_extra_data_packed_o_D10; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D12; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D12 <= __mandel_iter_extra_data_packed_o_D11; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D13; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D13 <= __mandel_iter_extra_data_packed_o_D12; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D14; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D14 <= __mandel_iter_extra_data_packed_o_D13; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D15; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D15 <= __mandel_iter_extra_data_packed_o_D14; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D16; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D16 <= __mandel_iter_extra_data_packed_o_D15; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D17; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D17 <= __mandel_iter_extra_data_packed_o_D16; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D18; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D18 <= __mandel_iter_extra_data_packed_o_D17; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D19; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D19 <= __mandel_iter_extra_data_packed_o_D18; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D20; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D20 <= __mandel_iter_extra_data_packed_o_D19; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D21; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D21 <= __mandel_iter_extra_data_packed_o_D20; end
/*latency*/ logic[8:0] __mandel_iter_extra_data_packed_o_D22; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D22 <= __mandel_iter_extra_data_packed_o_D21; end
/*mux_wire*/ logic _mandel_iter_start;
/*mux_wire*/ logic[31:0] _mandel_iter_r;
/*mux_wire*/ logic[31:0] _mandel_iter_i;
/*mux_wire*/ logic[8:0] _mandel_iter_extra_data;
/*mux_wire*/ logic[8:0] extra_data;
/*mux_wire*/ logic _outputFIFO_pop;
wire[15:0] _outputFIFO_pop_data;
/*mux_wire*/ logic[15:0] _data_packed_i;
wire[6:0] _data_v1_o;
wire[8:0] _data_v2_o;
/*mux_wire*/ logic[3:0] x_2;
/*mux_wire*/ logic[3:0] y_2;
/*mux_wire*/ logic[8:0] _mandel_iter_extra_data_packed_i;
wire[3:0] _mandel_iter_extra_data_v1_o;
wire[3:0] _mandel_iter_extra_data_v2_o;
wire _mandel_iter_extra_data_v3_o;
wire[7:0] _35;
assign _35 = y_2 * 5'd16;
wire[7:0] _37;
assign _37 = _35 + x_2;
wire _outputFIFO_may_pop;
wire _mandel_iter_finish;
wire[6:0] _mandel_iter_iteration_count;
wire[8:0] _mandel_iter_extra_data_o;
/*mux_wire*/ logic[6:0] iter_count_2;
/*mux_wire*/ logic[8:0] extra_data_2;
/*mux_wire*/ logic[6:0] _data_v1_i;
/*mux_wire*/ logic[8:0] _data_v2_i;
wire[15:0] _data_packed_o;
/*mux_wire*/ logic _outputFIFO_push;
/*mux_wire*/ logic[15:0] _outputFIFO_push_data;
ScreenIterator__WIDTH16_HEIGHT16 pixel_producer(
	.clk(clk),
	.may_next(_pixel_producer_may_next),
	.start(_pixel_producer_start),
	.last(_pixel_producer_last),
	.may_start(_pixel_producer_may_start),
	.next(_pixel_producer_next),
	.x(_pixel_producer_x),
	.y(_pixel_producer_y),
	.rst(_pixel_producer_rst)
);
SameCycleReadFIFO__Ttypebool____16__DEPTH64_MAY_PUSH_LATENCY22_EXTRA_IN_FLIGHT2 outputFIFO(
	.clk(clk),
	.rst(_outputFIFO_rst),
	.may_push(_outputFIFO_may_push),
	.push(_outputFIFO_push),
	.push_data(_outputFIFO_push_data),
	.may_pop(_outputFIFO_may_pop),
	.pop(_outputFIFO_pop),
	.pop_data(_outputFIFO_pop_data)
);
MandelbrotSlowIter2__ExtraDataTtypebool____9__INPUT_DATA_LATENCY22 mandel_iter(
	.clk(clk),
	.rst(_mandel_iter_rst),
	.may_start(_mandel_iter_may_start),
	.start(_mandel_iter_start),
	.r(_mandel_iter_r),
	.i(_mandel_iter_i),
	.extra_data(_mandel_iter_extra_data),
	.finish(_mandel_iter_finish),
	.iteration_count(_mandel_iter_iteration_count),
	.extra_data_o(_mandel_iter_extra_data_o)
);
tuple3__T1typeint__FROM0_TO16__T2typeint__FROM0_TO16__T3typebool mandel_iter_extra_data(
	.clk(clk),
	.v1_i(_mandel_iter_extra_data_v1_i),
	.v2_i(_mandel_iter_extra_data_v2_i),
	.v3_i(_mandel_iter_extra_data_v3_i),
	.packed_o(_mandel_iter_extra_data_packed_o),
	.packed_i(_mandel_iter_extra_data_packed_i),
	.v1_o(_mandel_iter_extra_data_v1_o),
	.v2_o(_mandel_iter_extra_data_v2_o),
	.v3_o(_mandel_iter_extra_data_v3_o)
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
tuple2__T1typeint__FROM0_TO101__T2typebool____9 data(
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
	_mandel_iter_extra_data_v3_i = 1'bx;
	if(_12) if(_mandel_iter_may_start) _mandel_iter_extra_data_v3_i = _pixel_producer_last;
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
	_mandel_iter_extra_data = 9'bxxxxxxxxx;
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
	if(may_read_px) if(read_px) addr = _37;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	done = 1'bx;
	if(may_read_px) if(read_px) done = _mandel_iter_extra_data_v3_o;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	extra_data = 9'bxxxxxxxxx;
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
	_data_packed_i = 16'bxxxxxxxxxxxxxxxx;
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
	_mandel_iter_extra_data_packed_i = 9'bxxxxxxxxx;
	if(may_read_px) if(read_px) _mandel_iter_extra_data_packed_i = extra_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter_count_2 = 7'dx;
	if(_mandel_iter_finish) iter_count_2 = _mandel_iter_iteration_count;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	extra_data_2 = 9'bxxxxxxxxx;
	if(_mandel_iter_finish) extra_data_2 = _mandel_iter_extra_data_o;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_data_v1_i = 7'dx;
	if(_mandel_iter_finish) _data_v1_i = iter_count_2;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_data_v2_i = 9'bxxxxxxxxx;
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
	_outputFIFO_push_data = 16'bxxxxxxxxxxxxxxxx;
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

// SameCycleReadFIFO #(T: type bool #()[16], DEPTH: 64, MAY_PUSH_LATENCY: 22, EXTRA_IN_FLIGHT: 2)
module SameCycleReadFIFO__Ttypebool____16__DEPTH64_MAY_PUSH_LATENCY22_EXTRA_IN_FLIGHT2(
	input clk,
	input wire rst,
	output /*mux_wire*/ logic may_push,
	input wire push,
	input wire[15:0] push_data,
	output /*mux_wire*/ logic may_pop,
	input wire pop,
	output /*mux_wire*/ logic[15:0] pop_data
);

/*mux_wire*/ logic _fifo_rst;
wire _fifo_may_push;
/*mux_wire*/ logic[15:0] as_bits;
/*mux_wire*/ logic[15:0] _transmute_to_bits_value;
wire[15:0] _transmute_to_bits_bits;
/*mux_wire*/ logic _fifo_push;
/*mux_wire*/ logic[15:0] _fifo_push_data;
wire _fifo_may_pop;
/*mux_wire*/ logic[15:0] pop_data_as_bits;
/*mux_wire*/ logic _fifo_pop;
wire[15:0] _fifo_pop_data;
/*mux_wire*/ logic[15:0] _transmute_from_bits_bits;
wire[15:0] _transmute_from_bits_value;
RawFIFO #(.WIDTH(16), .DEPTH(64), .MAY_PUSH_LATENCY(22), .EXTRA_IN_FLIGHT(2), .READ_DATA_LATENCY(0)) fifo(
	.clk(clk),
	.rst(_fifo_rst),
	.may_push(_fifo_may_push),
	.push(_fifo_push),
	.push_data(_fifo_push_data),
	.may_pop(_fifo_may_pop),
	.pop(_fifo_pop),
	.pop_data(_fifo_pop_data)
);
transmute_to_bits__Ttypebool____16 transmute_to_bits(
	.clk(clk),
	.value(_transmute_to_bits_value),
	.bits(_transmute_to_bits_bits)
);
transmute_from_bits__Ttypebool____16 transmute_from_bits(
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
	as_bits = 16'bxxxxxxxxxxxxxxxx;
	if(push) as_bits = _transmute_to_bits_bits;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_to_bits_value = 16'bxxxxxxxxxxxxxxxx;
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
	_fifo_push_data = 16'bxxxxxxxxxxxxxxxx;
	if(push) _fifo_push_data = as_bits;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_pop = 1'bx;
	may_pop = _fifo_may_pop;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_data = 16'bxxxxxxxxxxxxxxxx;
	if(pop) pop_data = _transmute_from_bits_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_data_as_bits = 16'bxxxxxxxxxxxxxxxx;
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
	_transmute_from_bits_bits = 16'bxxxxxxxxxxxxxxxx;
	if(pop) _transmute_from_bits_bits = pop_data_as_bits;
end
endmodule

// MandelbrotSlowIter2 #(ExtraDataT: type bool #()[9], INPUT_DATA_LATENCY: 22)
module MandelbrotSlowIter2__ExtraDataTtypebool____9__INPUT_DATA_LATENCY22(
	input clk,
	input wire rst,
	output /*mux_wire*/ logic may_start,
	input wire start,
	input wire[31:0] r,
	input wire[31:0] i,
	input wire[8:0] extra_data,
	output /*mux_wire*/ logic finish,
	output /*mux_wire*/ logic[6:0] iteration_count,
	output /*mux_wire*/ logic[8:0] extra_data_o
);

/*mux_wire*/ logic _iter_rst;
wire _iter_may_start;
wire[31:0] _7[1:0];
assign _7[0] = r;
assign _7[1] = i;
/*mux_wire*/ logic _iter_start;
/*mux_wire*/ logic[31:0] _iter_initial_data_start[1:0];
/*mux_wire*/ logic[8:0] _iter_extra_data;
wire _iter_finish;
/*latency*/ logic __iter_finish_N21; always_ff @(posedge clk) begin __iter_finish_N21 <= _iter_finish; end
/*latency*/ logic __iter_finish_N20; always_ff @(posedge clk) begin __iter_finish_N20 <= __iter_finish_N21; end
/*latency*/ logic __iter_finish_N19; always_ff @(posedge clk) begin __iter_finish_N19 <= __iter_finish_N20; end
/*latency*/ logic __iter_finish_N18; always_ff @(posedge clk) begin __iter_finish_N18 <= __iter_finish_N19; end
/*latency*/ logic __iter_finish_N17; always_ff @(posedge clk) begin __iter_finish_N17 <= __iter_finish_N18; end
/*latency*/ logic __iter_finish_N16; always_ff @(posedge clk) begin __iter_finish_N16 <= __iter_finish_N17; end
/*latency*/ logic __iter_finish_N15; always_ff @(posedge clk) begin __iter_finish_N15 <= __iter_finish_N16; end
/*latency*/ logic __iter_finish_N14; always_ff @(posedge clk) begin __iter_finish_N14 <= __iter_finish_N15; end
/*latency*/ logic __iter_finish_N13; always_ff @(posedge clk) begin __iter_finish_N13 <= __iter_finish_N14; end
/*latency*/ logic __iter_finish_N12; always_ff @(posedge clk) begin __iter_finish_N12 <= __iter_finish_N13; end
/*latency*/ logic __iter_finish_N11; always_ff @(posedge clk) begin __iter_finish_N11 <= __iter_finish_N12; end
/*latency*/ logic __iter_finish_N10; always_ff @(posedge clk) begin __iter_finish_N10 <= __iter_finish_N11; end
/*latency*/ logic __iter_finish_N9; always_ff @(posedge clk) begin __iter_finish_N9 <= __iter_finish_N10; end
/*latency*/ logic __iter_finish_N8; always_ff @(posedge clk) begin __iter_finish_N8 <= __iter_finish_N9; end
/*latency*/ logic __iter_finish_N7; always_ff @(posedge clk) begin __iter_finish_N7 <= __iter_finish_N8; end
/*latency*/ logic __iter_finish_N6; always_ff @(posedge clk) begin __iter_finish_N6 <= __iter_finish_N7; end
/*latency*/ logic __iter_finish_N5; always_ff @(posedge clk) begin __iter_finish_N5 <= __iter_finish_N6; end
/*latency*/ logic __iter_finish_N4; always_ff @(posedge clk) begin __iter_finish_N4 <= __iter_finish_N5; end
/*latency*/ logic __iter_finish_N3; always_ff @(posedge clk) begin __iter_finish_N3 <= __iter_finish_N4; end
/*latency*/ logic __iter_finish_N2; always_ff @(posedge clk) begin __iter_finish_N2 <= __iter_finish_N3; end
/*latency*/ logic __iter_finish_N1; always_ff @(posedge clk) begin __iter_finish_N1 <= __iter_finish_N2; end
/*latency*/ logic __iter_finish_D0; always_ff @(posedge clk) begin __iter_finish_D0 <= __iter_finish_N1; end
wire[6:0] _iter_result_data;
wire[8:0] _iter_extra_result_data;
/*mux_wire*/ logic[6:0] iteration_count_2;
/*latency*/ logic[6:0] _iteration_count_2_N21; always_ff @(posedge clk) begin _iteration_count_2_N21 <= iteration_count_2; end
/*latency*/ logic[6:0] _iteration_count_2_N20; always_ff @(posedge clk) begin _iteration_count_2_N20 <= _iteration_count_2_N21; end
/*latency*/ logic[6:0] _iteration_count_2_N19; always_ff @(posedge clk) begin _iteration_count_2_N19 <= _iteration_count_2_N20; end
/*latency*/ logic[6:0] _iteration_count_2_N18; always_ff @(posedge clk) begin _iteration_count_2_N18 <= _iteration_count_2_N19; end
/*latency*/ logic[6:0] _iteration_count_2_N17; always_ff @(posedge clk) begin _iteration_count_2_N17 <= _iteration_count_2_N18; end
/*latency*/ logic[6:0] _iteration_count_2_N16; always_ff @(posedge clk) begin _iteration_count_2_N16 <= _iteration_count_2_N17; end
/*latency*/ logic[6:0] _iteration_count_2_N15; always_ff @(posedge clk) begin _iteration_count_2_N15 <= _iteration_count_2_N16; end
/*latency*/ logic[6:0] _iteration_count_2_N14; always_ff @(posedge clk) begin _iteration_count_2_N14 <= _iteration_count_2_N15; end
/*latency*/ logic[6:0] _iteration_count_2_N13; always_ff @(posedge clk) begin _iteration_count_2_N13 <= _iteration_count_2_N14; end
/*latency*/ logic[6:0] _iteration_count_2_N12; always_ff @(posedge clk) begin _iteration_count_2_N12 <= _iteration_count_2_N13; end
/*latency*/ logic[6:0] _iteration_count_2_N11; always_ff @(posedge clk) begin _iteration_count_2_N11 <= _iteration_count_2_N12; end
/*latency*/ logic[6:0] _iteration_count_2_N10; always_ff @(posedge clk) begin _iteration_count_2_N10 <= _iteration_count_2_N11; end
/*latency*/ logic[6:0] _iteration_count_2_N9; always_ff @(posedge clk) begin _iteration_count_2_N9 <= _iteration_count_2_N10; end
/*latency*/ logic[6:0] _iteration_count_2_N8; always_ff @(posedge clk) begin _iteration_count_2_N8 <= _iteration_count_2_N9; end
/*latency*/ logic[6:0] _iteration_count_2_N7; always_ff @(posedge clk) begin _iteration_count_2_N7 <= _iteration_count_2_N8; end
/*latency*/ logic[6:0] _iteration_count_2_N6; always_ff @(posedge clk) begin _iteration_count_2_N6 <= _iteration_count_2_N7; end
/*latency*/ logic[6:0] _iteration_count_2_N5; always_ff @(posedge clk) begin _iteration_count_2_N5 <= _iteration_count_2_N6; end
/*latency*/ logic[6:0] _iteration_count_2_N4; always_ff @(posedge clk) begin _iteration_count_2_N4 <= _iteration_count_2_N5; end
/*latency*/ logic[6:0] _iteration_count_2_N3; always_ff @(posedge clk) begin _iteration_count_2_N3 <= _iteration_count_2_N4; end
/*latency*/ logic[6:0] _iteration_count_2_N2; always_ff @(posedge clk) begin _iteration_count_2_N2 <= _iteration_count_2_N3; end
/*latency*/ logic[6:0] _iteration_count_2_N1; always_ff @(posedge clk) begin _iteration_count_2_N1 <= _iteration_count_2_N2; end
/*latency*/ logic[6:0] _iteration_count_2_D0; always_ff @(posedge clk) begin _iteration_count_2_D0 <= _iteration_count_2_N1; end
/*mux_wire*/ logic[8:0] extra_data_2;
/*mux_wire*/ logic[31:0] zero;
/*mux_wire*/ logic _fp_fromint_fp_fromint;
/*mux_wire*/ logic signed[31:0] _fp_fromint_a;
wire[31:0] _fp_fromint_result;
wire _iter_iter;
/*latency*/ logic __iter_iter_D1001; always_ff @(posedge clk) begin __iter_iter_D1001 <= _iter_iter; end
/*latency*/ logic __iter_iter_D1002; always_ff @(posedge clk) begin __iter_iter_D1002 <= __iter_iter_D1001; end
/*latency*/ logic __iter_iter_D1003; always_ff @(posedge clk) begin __iter_iter_D1003 <= __iter_iter_D1002; end
/*latency*/ logic __iter_iter_D1004; always_ff @(posedge clk) begin __iter_iter_D1004 <= __iter_iter_D1003; end
/*latency*/ logic __iter_iter_D1005; always_ff @(posedge clk) begin __iter_iter_D1005 <= __iter_iter_D1004; end
/*latency*/ logic __iter_iter_D1006; always_ff @(posedge clk) begin __iter_iter_D1006 <= __iter_iter_D1005; end
/*latency*/ logic __iter_iter_D1007; always_ff @(posedge clk) begin __iter_iter_D1007 <= __iter_iter_D1006; end
/*latency*/ logic __iter_iter_D1008; always_ff @(posedge clk) begin __iter_iter_D1008 <= __iter_iter_D1007; end
/*latency*/ logic __iter_iter_D1009; always_ff @(posedge clk) begin __iter_iter_D1009 <= __iter_iter_D1008; end
/*latency*/ logic __iter_iter_D1010; always_ff @(posedge clk) begin __iter_iter_D1010 <= __iter_iter_D1009; end
/*latency*/ logic __iter_iter_D1011; always_ff @(posedge clk) begin __iter_iter_D1011 <= __iter_iter_D1010; end
/*latency*/ logic __iter_iter_D1012; always_ff @(posedge clk) begin __iter_iter_D1012 <= __iter_iter_D1011; end
/*latency*/ logic __iter_iter_D1013; always_ff @(posedge clk) begin __iter_iter_D1013 <= __iter_iter_D1012; end
/*latency*/ logic __iter_iter_D1014; always_ff @(posedge clk) begin __iter_iter_D1014 <= __iter_iter_D1013; end
/*latency*/ logic __iter_iter_D1015; always_ff @(posedge clk) begin __iter_iter_D1015 <= __iter_iter_D1014; end
/*latency*/ logic __iter_iter_D1016; always_ff @(posedge clk) begin __iter_iter_D1016 <= __iter_iter_D1015; end
/*latency*/ logic __iter_iter_D1017; always_ff @(posedge clk) begin __iter_iter_D1017 <= __iter_iter_D1016; end
/*latency*/ logic __iter_iter_D1018; always_ff @(posedge clk) begin __iter_iter_D1018 <= __iter_iter_D1017; end
/*latency*/ logic __iter_iter_D1019; always_ff @(posedge clk) begin __iter_iter_D1019 <= __iter_iter_D1018; end
/*latency*/ logic __iter_iter_D1020; always_ff @(posedge clk) begin __iter_iter_D1020 <= __iter_iter_D1019; end
/*latency*/ logic __iter_iter_D1021; always_ff @(posedge clk) begin __iter_iter_D1021 <= __iter_iter_D1020; end
/*latency*/ logic __iter_iter_D1022; always_ff @(posedge clk) begin __iter_iter_D1022 <= __iter_iter_D1021; end
/*latency*/ logic __iter_iter_D1023; always_ff @(posedge clk) begin __iter_iter_D1023 <= __iter_iter_D1022; end
/*latency*/ logic __iter_iter_D1024; always_ff @(posedge clk) begin __iter_iter_D1024 <= __iter_iter_D1023; end
/*latency*/ logic __iter_iter_D1025; always_ff @(posedge clk) begin __iter_iter_D1025 <= __iter_iter_D1024; end
/*latency*/ logic __iter_iter_D1026; always_ff @(posedge clk) begin __iter_iter_D1026 <= __iter_iter_D1025; end
/*latency*/ logic __iter_iter_D1027; always_ff @(posedge clk) begin __iter_iter_D1027 <= __iter_iter_D1026; end
/*latency*/ logic __iter_iter_D1028; always_ff @(posedge clk) begin __iter_iter_D1028 <= __iter_iter_D1027; end
/*latency*/ logic __iter_iter_D1029; always_ff @(posedge clk) begin __iter_iter_D1029 <= __iter_iter_D1028; end
/*latency*/ logic __iter_iter_D1030; always_ff @(posedge clk) begin __iter_iter_D1030 <= __iter_iter_D1029; end
/*latency*/ logic __iter_iter_D1031; always_ff @(posedge clk) begin __iter_iter_D1031 <= __iter_iter_D1030; end
/*latency*/ logic __iter_iter_D1032; always_ff @(posedge clk) begin __iter_iter_D1032 <= __iter_iter_D1031; end
/*latency*/ logic __iter_iter_D1033; always_ff @(posedge clk) begin __iter_iter_D1033 <= __iter_iter_D1032; end
/*latency*/ logic __iter_iter_D1034; always_ff @(posedge clk) begin __iter_iter_D1034 <= __iter_iter_D1033; end
/*latency*/ logic __iter_iter_D1035; always_ff @(posedge clk) begin __iter_iter_D1035 <= __iter_iter_D1034; end
/*latency*/ logic __iter_iter_D1036; always_ff @(posedge clk) begin __iter_iter_D1036 <= __iter_iter_D1035; end
/*latency*/ logic __iter_iter_D1037; always_ff @(posedge clk) begin __iter_iter_D1037 <= __iter_iter_D1036; end
/*latency*/ logic __iter_iter_D1038; always_ff @(posedge clk) begin __iter_iter_D1038 <= __iter_iter_D1037; end
/*latency*/ logic __iter_iter_D1039; always_ff @(posedge clk) begin __iter_iter_D1039 <= __iter_iter_D1038; end
/*latency*/ logic __iter_iter_D1040; always_ff @(posedge clk) begin __iter_iter_D1040 <= __iter_iter_D1039; end
/*latency*/ logic __iter_iter_D1041; always_ff @(posedge clk) begin __iter_iter_D1041 <= __iter_iter_D1040; end
/*latency*/ logic __iter_iter_D1042; always_ff @(posedge clk) begin __iter_iter_D1042 <= __iter_iter_D1041; end
/*latency*/ logic __iter_iter_D1043; always_ff @(posedge clk) begin __iter_iter_D1043 <= __iter_iter_D1042; end
/*latency*/ logic __iter_iter_D1044; always_ff @(posedge clk) begin __iter_iter_D1044 <= __iter_iter_D1043; end
/*latency*/ logic __iter_iter_D1045; always_ff @(posedge clk) begin __iter_iter_D1045 <= __iter_iter_D1044; end
/*latency*/ logic __iter_iter_D1046; always_ff @(posedge clk) begin __iter_iter_D1046 <= __iter_iter_D1045; end
/*latency*/ logic __iter_iter_D1047; always_ff @(posedge clk) begin __iter_iter_D1047 <= __iter_iter_D1046; end
/*latency*/ logic __iter_iter_D1048; always_ff @(posedge clk) begin __iter_iter_D1048 <= __iter_iter_D1047; end
/*latency*/ logic __iter_iter_D1049; always_ff @(posedge clk) begin __iter_iter_D1049 <= __iter_iter_D1048; end
/*latency*/ logic __iter_iter_D1050; always_ff @(posedge clk) begin __iter_iter_D1050 <= __iter_iter_D1049; end
/*latency*/ logic __iter_iter_D1051; always_ff @(posedge clk) begin __iter_iter_D1051 <= __iter_iter_D1050; end
wire[5:0] _iter_iter_sentinel_out;
/*mux_wire*/ logic[5:0] sentinel;
/*mux_wire*/ logic _z_r_link;
/*mux_wire*/ logic[5:0] _z_r__sentinel;
/*mux_wire*/ logic _z_i_link;
/*mux_wire*/ logic[5:0] _z_i__sentinel;
/*mux_wire*/ logic _c_r_link;
/*mux_wire*/ logic[5:0] _c_r__sentinel;
/*mux_wire*/ logic _c_i_link;
/*mux_wire*/ logic[5:0] _c_i__sentinel;
/*mux_wire*/ logic _iteration_link;
/*mux_wire*/ logic[5:0] _iteration__sentinel;
wire _iter_is_initial;
wire[31:0] _iter_initial_data[1:0];
/*mux_wire*/ logic[31:0] init_data[1:0];
/*mux_wire*/ logic _z_r_init;
/*mux_wire*/ logic[31:0] _z_r_initial_data;
/*mux_wire*/ logic _z_i_init;
/*mux_wire*/ logic[31:0] _z_i_initial_data;
wire[31:0] _39 = init_data[0];
/*mux_wire*/ logic _c_r_init;
/*mux_wire*/ logic[31:0] _c_r_initial_data;
wire[31:0] _42 = init_data[1];
/*mux_wire*/ logic _c_i_init;
/*mux_wire*/ logic[31:0] _c_i_initial_data;
/*mux_wire*/ logic _iteration_init;
/*mux_wire*/ logic[6:0] _iteration_initial_data;
/*mux_wire*/ logic is_done;
wire[31:0] _z_r_old;
wire[31:0] _z_i_old;
wire[31:0] _c_r_old;
/*latency*/ logic[31:0] __c_r_old_D1001; always_ff @(posedge clk) begin __c_r_old_D1001 <= _c_r_old; end
/*latency*/ logic[31:0] __c_r_old_D1002; always_ff @(posedge clk) begin __c_r_old_D1002 <= __c_r_old_D1001; end
/*latency*/ logic[31:0] __c_r_old_D1003; always_ff @(posedge clk) begin __c_r_old_D1003 <= __c_r_old_D1002; end
/*latency*/ logic[31:0] __c_r_old_D1004; always_ff @(posedge clk) begin __c_r_old_D1004 <= __c_r_old_D1003; end
/*latency*/ logic[31:0] __c_r_old_D1005; always_ff @(posedge clk) begin __c_r_old_D1005 <= __c_r_old_D1004; end
/*latency*/ logic[31:0] __c_r_old_D1006; always_ff @(posedge clk) begin __c_r_old_D1006 <= __c_r_old_D1005; end
/*latency*/ logic[31:0] __c_r_old_D1007; always_ff @(posedge clk) begin __c_r_old_D1007 <= __c_r_old_D1006; end
/*latency*/ logic[31:0] __c_r_old_D1008; always_ff @(posedge clk) begin __c_r_old_D1008 <= __c_r_old_D1007; end
/*latency*/ logic[31:0] __c_r_old_D1009; always_ff @(posedge clk) begin __c_r_old_D1009 <= __c_r_old_D1008; end
/*latency*/ logic[31:0] __c_r_old_D1010; always_ff @(posedge clk) begin __c_r_old_D1010 <= __c_r_old_D1009; end
/*latency*/ logic[31:0] __c_r_old_D1011; always_ff @(posedge clk) begin __c_r_old_D1011 <= __c_r_old_D1010; end
/*latency*/ logic[31:0] __c_r_old_D1012; always_ff @(posedge clk) begin __c_r_old_D1012 <= __c_r_old_D1011; end
/*latency*/ logic[31:0] __c_r_old_D1013; always_ff @(posedge clk) begin __c_r_old_D1013 <= __c_r_old_D1012; end
/*latency*/ logic[31:0] __c_r_old_D1014; always_ff @(posedge clk) begin __c_r_old_D1014 <= __c_r_old_D1013; end
/*latency*/ logic[31:0] __c_r_old_D1015; always_ff @(posedge clk) begin __c_r_old_D1015 <= __c_r_old_D1014; end
/*latency*/ logic[31:0] __c_r_old_D1016; always_ff @(posedge clk) begin __c_r_old_D1016 <= __c_r_old_D1015; end
/*latency*/ logic[31:0] __c_r_old_D1017; always_ff @(posedge clk) begin __c_r_old_D1017 <= __c_r_old_D1016; end
/*latency*/ logic[31:0] __c_r_old_D1018; always_ff @(posedge clk) begin __c_r_old_D1018 <= __c_r_old_D1017; end
/*latency*/ logic[31:0] __c_r_old_D1019; always_ff @(posedge clk) begin __c_r_old_D1019 <= __c_r_old_D1018; end
wire[31:0] _c_i_old;
/*latency*/ logic[31:0] __c_i_old_D1001; always_ff @(posedge clk) begin __c_i_old_D1001 <= _c_i_old; end
/*latency*/ logic[31:0] __c_i_old_D1002; always_ff @(posedge clk) begin __c_i_old_D1002 <= __c_i_old_D1001; end
/*latency*/ logic[31:0] __c_i_old_D1003; always_ff @(posedge clk) begin __c_i_old_D1003 <= __c_i_old_D1002; end
/*latency*/ logic[31:0] __c_i_old_D1004; always_ff @(posedge clk) begin __c_i_old_D1004 <= __c_i_old_D1003; end
/*latency*/ logic[31:0] __c_i_old_D1005; always_ff @(posedge clk) begin __c_i_old_D1005 <= __c_i_old_D1004; end
/*latency*/ logic[31:0] __c_i_old_D1006; always_ff @(posedge clk) begin __c_i_old_D1006 <= __c_i_old_D1005; end
/*latency*/ logic[31:0] __c_i_old_D1007; always_ff @(posedge clk) begin __c_i_old_D1007 <= __c_i_old_D1006; end
/*latency*/ logic[31:0] __c_i_old_D1008; always_ff @(posedge clk) begin __c_i_old_D1008 <= __c_i_old_D1007; end
/*latency*/ logic[31:0] __c_i_old_D1009; always_ff @(posedge clk) begin __c_i_old_D1009 <= __c_i_old_D1008; end
/*latency*/ logic[31:0] __c_i_old_D1010; always_ff @(posedge clk) begin __c_i_old_D1010 <= __c_i_old_D1009; end
/*latency*/ logic[31:0] __c_i_old_D1011; always_ff @(posedge clk) begin __c_i_old_D1011 <= __c_i_old_D1010; end
/*latency*/ logic[31:0] __c_i_old_D1012; always_ff @(posedge clk) begin __c_i_old_D1012 <= __c_i_old_D1011; end
/*latency*/ logic[31:0] __c_i_old_D1013; always_ff @(posedge clk) begin __c_i_old_D1013 <= __c_i_old_D1012; end
/*latency*/ logic[31:0] __c_i_old_D1014; always_ff @(posedge clk) begin __c_i_old_D1014 <= __c_i_old_D1013; end
/*latency*/ logic[31:0] __c_i_old_D1015; always_ff @(posedge clk) begin __c_i_old_D1015 <= __c_i_old_D1014; end
/*latency*/ logic[31:0] __c_i_old_D1016; always_ff @(posedge clk) begin __c_i_old_D1016 <= __c_i_old_D1015; end
/*latency*/ logic[31:0] __c_i_old_D1017; always_ff @(posedge clk) begin __c_i_old_D1017 <= __c_i_old_D1016; end
/*latency*/ logic[31:0] __c_i_old_D1018; always_ff @(posedge clk) begin __c_i_old_D1018 <= __c_i_old_D1017; end
/*latency*/ logic[31:0] __c_i_old_D1019; always_ff @(posedge clk) begin __c_i_old_D1019 <= __c_i_old_D1018; end
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
/*mux_wire*/ logic[31:0] _c_r_new;
/*mux_wire*/ logic[31:0] _c_i_new;
wire[6:0] _iteration_old;
/*latency*/ logic[6:0] __iteration_old_D1001; always_ff @(posedge clk) begin __iteration_old_D1001 <= _iteration_old; end
/*latency*/ logic[6:0] __iteration_old_D1002; always_ff @(posedge clk) begin __iteration_old_D1002 <= __iteration_old_D1001; end
/*latency*/ logic[6:0] __iteration_old_D1003; always_ff @(posedge clk) begin __iteration_old_D1003 <= __iteration_old_D1002; end
/*latency*/ logic[6:0] __iteration_old_D1004; always_ff @(posedge clk) begin __iteration_old_D1004 <= __iteration_old_D1003; end
/*latency*/ logic[6:0] __iteration_old_D1005; always_ff @(posedge clk) begin __iteration_old_D1005 <= __iteration_old_D1004; end
/*latency*/ logic[6:0] __iteration_old_D1006; always_ff @(posedge clk) begin __iteration_old_D1006 <= __iteration_old_D1005; end
/*latency*/ logic[6:0] __iteration_old_D1007; always_ff @(posedge clk) begin __iteration_old_D1007 <= __iteration_old_D1006; end
/*latency*/ logic[6:0] __iteration_old_D1008; always_ff @(posedge clk) begin __iteration_old_D1008 <= __iteration_old_D1007; end
/*latency*/ logic[6:0] __iteration_old_D1009; always_ff @(posedge clk) begin __iteration_old_D1009 <= __iteration_old_D1008; end
/*latency*/ logic[6:0] __iteration_old_D1010; always_ff @(posedge clk) begin __iteration_old_D1010 <= __iteration_old_D1009; end
/*latency*/ logic[6:0] __iteration_old_D1011; always_ff @(posedge clk) begin __iteration_old_D1011 <= __iteration_old_D1010; end
/*latency*/ logic[6:0] __iteration_old_D1012; always_ff @(posedge clk) begin __iteration_old_D1012 <= __iteration_old_D1011; end
/*latency*/ logic[6:0] __iteration_old_D1013; always_ff @(posedge clk) begin __iteration_old_D1013 <= __iteration_old_D1012; end
/*latency*/ logic[6:0] __iteration_old_D1014; always_ff @(posedge clk) begin __iteration_old_D1014 <= __iteration_old_D1013; end
/*latency*/ logic[6:0] __iteration_old_D1015; always_ff @(posedge clk) begin __iteration_old_D1015 <= __iteration_old_D1014; end
/*latency*/ logic[6:0] __iteration_old_D1016; always_ff @(posedge clk) begin __iteration_old_D1016 <= __iteration_old_D1015; end
/*latency*/ logic[6:0] __iteration_old_D1017; always_ff @(posedge clk) begin __iteration_old_D1017 <= __iteration_old_D1016; end
/*latency*/ logic[6:0] __iteration_old_D1018; always_ff @(posedge clk) begin __iteration_old_D1018 <= __iteration_old_D1017; end
/*latency*/ logic[6:0] __iteration_old_D1019; always_ff @(posedge clk) begin __iteration_old_D1019 <= __iteration_old_D1018; end
/*latency*/ logic[6:0] __iteration_old_D1020; always_ff @(posedge clk) begin __iteration_old_D1020 <= __iteration_old_D1019; end
/*latency*/ logic[6:0] __iteration_old_D1021; always_ff @(posedge clk) begin __iteration_old_D1021 <= __iteration_old_D1020; end
/*latency*/ logic[6:0] __iteration_old_D1022; always_ff @(posedge clk) begin __iteration_old_D1022 <= __iteration_old_D1021; end
/*latency*/ logic[6:0] __iteration_old_D1023; always_ff @(posedge clk) begin __iteration_old_D1023 <= __iteration_old_D1022; end
/*latency*/ logic[6:0] __iteration_old_D1024; always_ff @(posedge clk) begin __iteration_old_D1024 <= __iteration_old_D1023; end
/*latency*/ logic[6:0] __iteration_old_D1025; always_ff @(posedge clk) begin __iteration_old_D1025 <= __iteration_old_D1024; end
/*latency*/ logic[6:0] __iteration_old_D1026; always_ff @(posedge clk) begin __iteration_old_D1026 <= __iteration_old_D1025; end
/*latency*/ logic[6:0] __iteration_old_D1027; always_ff @(posedge clk) begin __iteration_old_D1027 <= __iteration_old_D1026; end
/*latency*/ logic[6:0] __iteration_old_D1028; always_ff @(posedge clk) begin __iteration_old_D1028 <= __iteration_old_D1027; end
/*latency*/ logic[6:0] __iteration_old_D1029; always_ff @(posedge clk) begin __iteration_old_D1029 <= __iteration_old_D1028; end
/*latency*/ logic[6:0] __iteration_old_D1030; always_ff @(posedge clk) begin __iteration_old_D1030 <= __iteration_old_D1029; end
/*latency*/ logic[6:0] __iteration_old_D1031; always_ff @(posedge clk) begin __iteration_old_D1031 <= __iteration_old_D1030; end
/*latency*/ logic[6:0] __iteration_old_D1032; always_ff @(posedge clk) begin __iteration_old_D1032 <= __iteration_old_D1031; end
/*latency*/ logic[6:0] __iteration_old_D1033; always_ff @(posedge clk) begin __iteration_old_D1033 <= __iteration_old_D1032; end
/*latency*/ logic[6:0] __iteration_old_D1034; always_ff @(posedge clk) begin __iteration_old_D1034 <= __iteration_old_D1033; end
/*latency*/ logic[6:0] __iteration_old_D1035; always_ff @(posedge clk) begin __iteration_old_D1035 <= __iteration_old_D1034; end
/*latency*/ logic[6:0] __iteration_old_D1036; always_ff @(posedge clk) begin __iteration_old_D1036 <= __iteration_old_D1035; end
/*latency*/ logic[6:0] __iteration_old_D1037; always_ff @(posedge clk) begin __iteration_old_D1037 <= __iteration_old_D1036; end
/*latency*/ logic[6:0] __iteration_old_D1038; always_ff @(posedge clk) begin __iteration_old_D1038 <= __iteration_old_D1037; end
/*latency*/ logic[6:0] __iteration_old_D1039; always_ff @(posedge clk) begin __iteration_old_D1039 <= __iteration_old_D1038; end
/*latency*/ logic[6:0] __iteration_old_D1040; always_ff @(posedge clk) begin __iteration_old_D1040 <= __iteration_old_D1039; end
/*latency*/ logic[6:0] __iteration_old_D1041; always_ff @(posedge clk) begin __iteration_old_D1041 <= __iteration_old_D1040; end
/*latency*/ logic[6:0] __iteration_old_D1042; always_ff @(posedge clk) begin __iteration_old_D1042 <= __iteration_old_D1041; end
/*latency*/ logic[6:0] __iteration_old_D1043; always_ff @(posedge clk) begin __iteration_old_D1043 <= __iteration_old_D1042; end
/*latency*/ logic[6:0] __iteration_old_D1044; always_ff @(posedge clk) begin __iteration_old_D1044 <= __iteration_old_D1043; end
/*latency*/ logic[6:0] __iteration_old_D1045; always_ff @(posedge clk) begin __iteration_old_D1045 <= __iteration_old_D1044; end
/*latency*/ logic[6:0] __iteration_old_D1046; always_ff @(posedge clk) begin __iteration_old_D1046 <= __iteration_old_D1045; end
/*latency*/ logic[6:0] __iteration_old_D1047; always_ff @(posedge clk) begin __iteration_old_D1047 <= __iteration_old_D1046; end
/*latency*/ logic[6:0] __iteration_old_D1048; always_ff @(posedge clk) begin __iteration_old_D1048 <= __iteration_old_D1047; end
/*latency*/ logic[6:0] __iteration_old_D1049; always_ff @(posedge clk) begin __iteration_old_D1049 <= __iteration_old_D1048; end
/*latency*/ logic[6:0] __iteration_old_D1050; always_ff @(posedge clk) begin __iteration_old_D1050 <= __iteration_old_D1049; end
/*latency*/ logic[6:0] __iteration_old_D1051; always_ff @(posedge clk) begin __iteration_old_D1051 <= __iteration_old_D1050; end
wire[6:0] _58;
assign _58 = _iteration_old + 1'd1;
/*mux_wire*/ logic[6:0] _unsafe_int_cast_in;
wire[6:0] _unsafe_int_cast_out;
/*mux_wire*/ logic[6:0] _iteration_new;
/*mux_wire*/ logic _iter_done;
/*mux_wire*/ logic[6:0] _iter_result;
wire _65;
assign _65 = _iteration_old == 7'd99;
/*latency*/ logic __65_D1001; always_ff @(posedge clk) begin __65_D1001 <= _65; end
/*latency*/ logic __65_D1002; always_ff @(posedge clk) begin __65_D1002 <= __65_D1001; end
/*latency*/ logic __65_D1003; always_ff @(posedge clk) begin __65_D1003 <= __65_D1002; end
/*latency*/ logic __65_D1004; always_ff @(posedge clk) begin __65_D1004 <= __65_D1003; end
/*latency*/ logic __65_D1005; always_ff @(posedge clk) begin __65_D1005 <= __65_D1004; end
/*latency*/ logic __65_D1006; always_ff @(posedge clk) begin __65_D1006 <= __65_D1005; end
/*latency*/ logic __65_D1007; always_ff @(posedge clk) begin __65_D1007 <= __65_D1006; end
/*latency*/ logic __65_D1008; always_ff @(posedge clk) begin __65_D1008 <= __65_D1007; end
/*latency*/ logic __65_D1009; always_ff @(posedge clk) begin __65_D1009 <= __65_D1008; end
/*latency*/ logic __65_D1010; always_ff @(posedge clk) begin __65_D1010 <= __65_D1009; end
/*latency*/ logic __65_D1011; always_ff @(posedge clk) begin __65_D1011 <= __65_D1010; end
/*latency*/ logic __65_D1012; always_ff @(posedge clk) begin __65_D1012 <= __65_D1011; end
/*latency*/ logic __65_D1013; always_ff @(posedge clk) begin __65_D1013 <= __65_D1012; end
/*latency*/ logic __65_D1014; always_ff @(posedge clk) begin __65_D1014 <= __65_D1013; end
/*latency*/ logic __65_D1015; always_ff @(posedge clk) begin __65_D1015 <= __65_D1014; end
/*latency*/ logic __65_D1016; always_ff @(posedge clk) begin __65_D1016 <= __65_D1015; end
/*latency*/ logic __65_D1017; always_ff @(posedge clk) begin __65_D1017 <= __65_D1016; end
/*latency*/ logic __65_D1018; always_ff @(posedge clk) begin __65_D1018 <= __65_D1017; end
/*latency*/ logic __65_D1019; always_ff @(posedge clk) begin __65_D1019 <= __65_D1018; end
/*latency*/ logic __65_D1020; always_ff @(posedge clk) begin __65_D1020 <= __65_D1019; end
/*latency*/ logic __65_D1021; always_ff @(posedge clk) begin __65_D1021 <= __65_D1020; end
/*latency*/ logic __65_D1022; always_ff @(posedge clk) begin __65_D1022 <= __65_D1021; end
/*latency*/ logic __65_D1023; always_ff @(posedge clk) begin __65_D1023 <= __65_D1022; end
/*latency*/ logic __65_D1024; always_ff @(posedge clk) begin __65_D1024 <= __65_D1023; end
/*latency*/ logic __65_D1025; always_ff @(posedge clk) begin __65_D1025 <= __65_D1024; end
/*latency*/ logic __65_D1026; always_ff @(posedge clk) begin __65_D1026 <= __65_D1025; end
/*latency*/ logic __65_D1027; always_ff @(posedge clk) begin __65_D1027 <= __65_D1026; end
/*latency*/ logic __65_D1028; always_ff @(posedge clk) begin __65_D1028 <= __65_D1027; end
/*latency*/ logic __65_D1029; always_ff @(posedge clk) begin __65_D1029 <= __65_D1028; end
/*latency*/ logic __65_D1030; always_ff @(posedge clk) begin __65_D1030 <= __65_D1029; end
/*latency*/ logic __65_D1031; always_ff @(posedge clk) begin __65_D1031 <= __65_D1030; end
/*latency*/ logic __65_D1032; always_ff @(posedge clk) begin __65_D1032 <= __65_D1031; end
/*latency*/ logic __65_D1033; always_ff @(posedge clk) begin __65_D1033 <= __65_D1032; end
/*latency*/ logic __65_D1034; always_ff @(posedge clk) begin __65_D1034 <= __65_D1033; end
/*latency*/ logic __65_D1035; always_ff @(posedge clk) begin __65_D1035 <= __65_D1034; end
/*latency*/ logic __65_D1036; always_ff @(posedge clk) begin __65_D1036 <= __65_D1035; end
/*latency*/ logic __65_D1037; always_ff @(posedge clk) begin __65_D1037 <= __65_D1036; end
/*latency*/ logic __65_D1038; always_ff @(posedge clk) begin __65_D1038 <= __65_D1037; end
/*latency*/ logic __65_D1039; always_ff @(posedge clk) begin __65_D1039 <= __65_D1038; end
/*latency*/ logic __65_D1040; always_ff @(posedge clk) begin __65_D1040 <= __65_D1039; end
/*latency*/ logic __65_D1041; always_ff @(posedge clk) begin __65_D1041 <= __65_D1040; end
/*latency*/ logic __65_D1042; always_ff @(posedge clk) begin __65_D1042 <= __65_D1041; end
/*latency*/ logic __65_D1043; always_ff @(posedge clk) begin __65_D1043 <= __65_D1042; end
/*latency*/ logic __65_D1044; always_ff @(posedge clk) begin __65_D1044 <= __65_D1043; end
/*latency*/ logic __65_D1045; always_ff @(posedge clk) begin __65_D1045 <= __65_D1044; end
/*latency*/ logic __65_D1046; always_ff @(posedge clk) begin __65_D1046 <= __65_D1045; end
/*latency*/ logic __65_D1047; always_ff @(posedge clk) begin __65_D1047 <= __65_D1046; end
/*latency*/ logic __65_D1048; always_ff @(posedge clk) begin __65_D1048 <= __65_D1047; end
/*latency*/ logic __65_D1049; always_ff @(posedge clk) begin __65_D1049 <= __65_D1048; end
/*latency*/ logic __65_D1050; always_ff @(posedge clk) begin __65_D1050 <= __65_D1049; end
/*latency*/ logic __65_D1051; always_ff @(posedge clk) begin __65_D1051 <= __65_D1050; end
SlowIterator2__InitialTtypefloat____2__ResultTtypeint__FROM0_TO101__ExtraDataTtypebool____9__COMPUTATION_LATENCY51_REQUEST_DATA_LATENCY22 iter(
	.clk(clk),
	.rst(_iter_rst),
	.iter(_iter_iter),
	.iter_sentinel_out(_iter_iter_sentinel_out),
	.done(_iter_done),
	.result(_iter_result),
	.is_initial(_iter_is_initial),
	.initial_data(_iter_initial_data),
	.may_start(_iter_may_start),
	.start(_iter_start),
	.initial_data_start(_iter_initial_data_start),
	.extra_data(_iter_extra_data),
	.finish(_iter_finish),
	.result_data(_iter_result_data),
	.extra_result_data(_iter_extra_result_data)
);
SlowIteratorState__Ttypefloat____MAX_LATENCY52_LATENCY30 z_r(
	.clk(clk),
	.link(_z_r_link),
	._sentinel(_z_r__sentinel),
	.old(_z_r_old),
	.new_1(_z_r_new),
	.init(_z_r_init),
	.initial_data(_z_r_initial_data)
);
SlowIteratorState__Ttypefloat____MAX_LATENCY52_LATENCY30 z_i(
	.clk(clk),
	.link(_z_i_link),
	._sentinel(_z_i__sentinel),
	.old(_z_i_old),
	.new_1(_z_i_new),
	.init(_z_i_init),
	.initial_data(_z_i_initial_data)
);
SlowIteratorState__Ttypefloat____MAX_LATENCY52_LATENCY0 c_r(
	.clk(clk),
	.link(_c_r_link),
	._sentinel(_c_r__sentinel),
	.old(_c_r_old),
	.new_1(_c_r_new),
	.init(_c_r_init),
	.initial_data(_c_r_initial_data)
);
SlowIteratorState__Ttypefloat____MAX_LATENCY52_LATENCY0 c_i(
	.clk(clk),
	.link(_c_i_link),
	._sentinel(_c_i__sentinel),
	.old(_c_i_old),
	.new_1(_c_i_new),
	.init(_c_i_init),
	.initial_data(_c_i_initial_data)
);
SlowIteratorState__Ttypeint__FROM0_TO100__MAX_LATENCY52_LATENCY0 iteration(
	.clk(clk),
	.link(_iteration_link),
	._sentinel(_iteration__sentinel),
	.old(_iteration_old),
	.new_1(_iteration_new),
	.init(_iteration_init),
	.initial_data(_iteration_initial_data)
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
	_iter_start = 1'bx;
	_iter_start = 1'b0;
	if(start) _iter_start = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_initial_data_start = {'x, 'x};
	for(int _v0 = 0; _v0 < 2; _v0 = _v0 + 1) begin
if(start) _iter_initial_data_start[_v0] = _7[_v0];
end
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_extra_data = 9'bxxxxxxxxx;
	if(start) _iter_extra_data = extra_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	finish = 1'bx;
	finish = 1'b0;
	if(__iter_finish_D0) finish = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iteration_count = 7'dx;
	if(__iter_finish_D0) iteration_count = _iteration_count_2_D0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	extra_data_o = 9'bxxxxxxxxx;
	if(__iter_finish_D0) extra_data_o = extra_data_2;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iteration_count_2 = 7'dx;
	if(_iter_finish) iteration_count_2 = _iter_result_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	extra_data_2 = 9'bxxxxxxxxx;
	if(__iter_finish_D0) extra_data_2 = _iter_extra_result_data;
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
	sentinel = 6'dx;
	if(_iter_iter) sentinel = _iter_iter_sentinel_out;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_r_link = 1'bx;
	_z_r_link = 1'b0;
	if(_iter_iter) _z_r_link = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_r__sentinel = 6'dx;
	if(_iter_iter) _z_r__sentinel = sentinel;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_i_link = 1'bx;
	_z_i_link = 1'b0;
	if(_iter_iter) _z_i_link = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_i__sentinel = 6'dx;
	if(_iter_iter) _z_i__sentinel = sentinel;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_r_link = 1'bx;
	_c_r_link = 1'b0;
	if(_iter_iter) _c_r_link = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_r__sentinel = 6'dx;
	if(_iter_iter) _c_r__sentinel = sentinel;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_i_link = 1'bx;
	_c_i_link = 1'b0;
	if(_iter_iter) _c_i_link = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_i__sentinel = 6'dx;
	if(_iter_iter) _c_i__sentinel = sentinel;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iteration_link = 1'bx;
	_iteration_link = 1'b0;
	if(_iter_iter) _iteration_link = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iteration__sentinel = 6'dx;
	if(_iter_iter) _iteration__sentinel = sentinel;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	init_data = {'x, 'x};
	for(int _v0 = 0; _v0 < 2; _v0 = _v0 + 1) begin
if(_iter_iter) if(_iter_is_initial) init_data[_v0] = _iter_initial_data[_v0];
end
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_r_init = 1'bx;
	_z_r_init = 1'b0;
	if(_iter_iter) if(_iter_is_initial) _z_r_init = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_r_initial_data = 'x;
	if(_iter_iter) if(_iter_is_initial) _z_r_initial_data = zero;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_i_init = 1'bx;
	_z_i_init = 1'b0;
	if(_iter_iter) if(_iter_is_initial) _z_i_init = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_i_initial_data = 'x;
	if(_iter_iter) if(_iter_is_initial) _z_i_initial_data = zero;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_r_init = 1'bx;
	_c_r_init = 1'b0;
	if(_iter_iter) if(_iter_is_initial) _c_r_init = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_r_initial_data = 'x;
	if(_iter_iter) if(_iter_is_initial) _c_r_initial_data = _39;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_i_init = 1'bx;
	_c_i_init = 1'b0;
	if(_iter_iter) if(_iter_is_initial) _c_i_init = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_i_initial_data = 'x;
	if(_iter_iter) if(_iter_is_initial) _c_i_initial_data = _42;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iteration_init = 1'bx;
	_iteration_init = 1'b0;
	if(_iter_iter) if(_iter_is_initial) _iteration_init = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iteration_initial_data = 7'dx;
	if(_iter_iter) if(_iter_is_initial) _iteration_initial_data = 1'd0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	is_done = 1'bx;
	if(__iter_iter_D1051) is_done = _MandelbrotStep_is_done;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_MandelbrotStep_MandelbrotStep = 1'bx;
	_MandelbrotStep_MandelbrotStep = 1'b0;
	if(_iter_iter) _MandelbrotStep_MandelbrotStep = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_MandelbrotStep_z_r = 'x;
	if(_iter_iter) _MandelbrotStep_z_r = _z_r_old;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_MandelbrotStep_z_i = 'x;
	if(_iter_iter) _MandelbrotStep_z_i = _z_i_old;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_MandelbrotStep_c_r = 'x;
	if(__iter_iter_D1019) _MandelbrotStep_c_r = __c_r_old_D1019;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_MandelbrotStep_c_i = 'x;
	if(__iter_iter_D1019) _MandelbrotStep_c_i = __c_i_old_D1019;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_r_new = 'x;
	if(__iter_iter_D1030) _z_r_new = _MandelbrotStep_new_z_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_i_new = 'x;
	if(__iter_iter_D1030) _z_i_new = _MandelbrotStep_new_z_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_r_new = 'x;
	if(_iter_iter) _c_r_new = _c_r_old;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_i_new = 'x;
	if(_iter_iter) _c_i_new = _c_i_old;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_unsafe_int_cast_in = 7'dx;
	if(_iter_iter) _unsafe_int_cast_in = _58;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iteration_new = 7'dx;
	if(_iter_iter) _iteration_new = _unsafe_int_cast_out;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_done = 1'bx;
	_iter_done = 1'b0;
	if(__iter_iter_D1051) if(is_done) _iter_done = 1'b1;
	if(__iter_iter_D1051) if(!is_done) if(__65_D1051) _iter_done = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_result = 7'dx;
	if(__iter_iter_D1051) if(is_done) _iter_result = __iteration_old_D1051;
	if(__iter_iter_D1051) if(!is_done) if(__65_D1051) _iter_result = 7'd100;
end
endmodule

// tuple3 #(T1: type int #(FROM: 0, TO: 16), T2: type int #(FROM: 0, TO: 16), T3: type bool #())
module tuple3__T1typeint__FROM0_TO16__T2typeint__FROM0_TO16__T3typebool(
	input clk,
	input wire[3:0] v1_i,
	input wire[3:0] v2_i,
	input wire v3_i,
	output /*mux_wire*/ logic[8:0] packed_o,
	input wire[8:0] packed_i,
	output /*mux_wire*/ logic[3:0] v1_o,
	output /*mux_wire*/ logic[3:0] v2_o,
	output /*mux_wire*/ logic v3_o
);

genvar _g0;
/*mux_wire*/ logic[3:0] _transmute_to_bits_value;
wire[3:0] _transmute_to_bits_bits;
/*mux_wire*/ logic[3:0] _transmute_to_bits_2_value;
wire[3:0] _transmute_to_bits_2_bits;
/*mux_wire*/ logic _transmute_to_bits_3_value;
wire[0:0] _transmute_to_bits_3_bits;
wire[3:0] _4;
generate
for(_g0 = 0; _g0 < 4; _g0 = _g0 + 1) begin
assign _4[_g0] = packed_i[_g0];
end
endgenerate
/*mux_wire*/ logic[3:0] _transmute_from_bits_bits;
wire[3:0] _transmute_from_bits_value;
wire[3:0] _5;
generate
for(_g0 = 0; _g0 < 4; _g0 = _g0 + 1) begin
assign _5[_g0] = packed_i[4 + _g0];
end
endgenerate
/*mux_wire*/ logic[3:0] _transmute_from_bits_2_bits;
wire[3:0] _transmute_from_bits_2_value;
wire[0:0] _6;
generate
for(_g0 = 0; _g0 < 1; _g0 = _g0 + 1) begin
assign _6[_g0] = packed_i[8 + _g0];
end
endgenerate
/*mux_wire*/ logic[0:0] _transmute_from_bits_3_bits;
wire _transmute_from_bits_3_value;
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
transmute_to_bits__Ttypebool transmute_to_bits_3(
	.clk(clk),
	.value(_transmute_to_bits_3_value),
	.bits(_transmute_to_bits_3_bits)
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
transmute_from_bits__Ttypebool transmute_from_bits_3(
	.clk(clk),
	.bits(_transmute_from_bits_3_bits),
	.value(_transmute_from_bits_3_value)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	packed_o = 9'bxxxxxxxxx;
	for(int _v0 = 0; _v0 < 4; _v0 = _v0 + 1) begin
packed_o[_v0] = _transmute_to_bits_bits[_v0];
end
	for(int _v0 = 0; _v0 < 4; _v0 = _v0 + 1) begin
packed_o[4 + _v0] = _transmute_to_bits_2_bits[_v0];
end
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
packed_o[8 + _v0] = _transmute_to_bits_3_bits[_v0];
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
	_transmute_to_bits_3_value = 1'bx;
	_transmute_to_bits_3_value = v3_i;
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
	v3_o = 1'bx;
	v3_o = _transmute_from_bits_3_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_from_bits_bits = 4'bxxxx;
	_transmute_from_bits_bits = _4;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_from_bits_2_bits = 4'bxxxx;
	_transmute_from_bits_2_bits = _5;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_from_bits_3_bits = 1'bx;
	_transmute_from_bits_3_bits = _6;
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

// tuple2 #(T1: type int #(FROM: 0, TO: 101), T2: type bool #()[9])
module tuple2__T1typeint__FROM0_TO101__T2typebool____9(
	input clk,
	input wire[6:0] v1_i,
	input wire[8:0] v2_i,
	output /*mux_wire*/ logic[15:0] packed_o,
	input wire[15:0] packed_i,
	output /*mux_wire*/ logic[6:0] v1_o,
	output /*mux_wire*/ logic[8:0] v2_o
);

genvar _g0;
/*mux_wire*/ logic[6:0] _transmute_to_bits_value;
wire[6:0] _transmute_to_bits_bits;
/*mux_wire*/ logic[8:0] _transmute_to_bits_2_value;
wire[8:0] _transmute_to_bits_2_bits;
wire[6:0] _3;
generate
for(_g0 = 0; _g0 < 7; _g0 = _g0 + 1) begin
assign _3[_g0] = packed_i[_g0];
end
endgenerate
/*mux_wire*/ logic[6:0] _transmute_from_bits_bits;
wire[6:0] _transmute_from_bits_value;
wire[8:0] _4;
generate
for(_g0 = 0; _g0 < 9; _g0 = _g0 + 1) begin
assign _4[_g0] = packed_i[7 + _g0];
end
endgenerate
/*mux_wire*/ logic[8:0] _transmute_from_bits_2_bits;
wire[8:0] _transmute_from_bits_2_value;
transmute_to_bits__Ttypeint__FROM0_TO101 transmute_to_bits(
	.clk(clk),
	.value(_transmute_to_bits_value),
	.bits(_transmute_to_bits_bits)
);
transmute_to_bits__Ttypebool____9 transmute_to_bits_2(
	.clk(clk),
	.value(_transmute_to_bits_2_value),
	.bits(_transmute_to_bits_2_bits)
);
transmute_from_bits__Ttypeint__FROM0_TO101 transmute_from_bits(
	.clk(clk),
	.bits(_transmute_from_bits_bits),
	.value(_transmute_from_bits_value)
);
transmute_from_bits__Ttypebool____9 transmute_from_bits_2(
	.clk(clk),
	.bits(_transmute_from_bits_2_bits),
	.value(_transmute_from_bits_2_value)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	packed_o = 16'bxxxxxxxxxxxxxxxx;
	for(int _v0 = 0; _v0 < 7; _v0 = _v0 + 1) begin
packed_o[_v0] = _transmute_to_bits_bits[_v0];
end
	for(int _v0 = 0; _v0 < 9; _v0 = _v0 + 1) begin
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
	_transmute_to_bits_2_value = 9'bxxxxxxxxx;
	_transmute_to_bits_2_value = v2_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v1_o = 7'dx;
	v1_o = _transmute_from_bits_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v2_o = 9'bxxxxxxxxx;
	v2_o = _transmute_from_bits_2_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_from_bits_bits = 7'bxxxxxxx;
	_transmute_from_bits_bits = _3;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_transmute_from_bits_2_bits = 9'bxxxxxxxxx;
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

// RawFIFO #(WIDTH: 16, DEPTH: 64, MAY_PUSH_LATENCY: 22, EXTRA_IN_FLIGHT: 2, READ_DATA_LATENCY: 0)
// Provided externally
// module RawFIFO__WIDTH16_DEPTH64_MAY_PUSH_LATENCY22_EXTRA_IN_FLIGHT2_READ_DATA_LATENCY0(
// 	input clk,
// 	input wire rst,
// 	output /*mux_wire*/ logic may_push,
// 	input wire push,
// 	input wire[15:0] push_data,
// 	output /*mux_wire*/ logic may_pop,
// 	input wire pop,
// 	output /*mux_wire*/ logic[15:0] pop_data
// );
// transmute_to_bits #(T: type bool #()[16])
module transmute_to_bits__Ttypebool____16(
	input clk,
	input wire[15:0] value,
	output /*mux_wire*/ logic[15:0] bits
);

assign bits = value;
endmodule

// transmute_from_bits #(T: type bool #()[16])
module transmute_from_bits__Ttypebool____16(
	input clk,
	input wire[15:0] bits,
	output /*mux_wire*/ logic[15:0] value
);

assign value = bits;
endmodule

// SlowIterator2 #(InitialT: type float #()[2], ResultT: type int #(FROM: 0, TO: 101), ExtraDataT: type bool #()[9], COMPUTATION_LATENCY: 51, REQUEST_DATA_LATENCY: 22)
module SlowIterator2__InitialTtypefloat____2__ResultTtypeint__FROM0_TO101__ExtraDataTtypebool____9__COMPUTATION_LATENCY51_REQUEST_DATA_LATENCY22(
	input clk,
	input wire rst,
	output /*mux_wire*/ logic iter,
	output /*mux_wire*/ logic[5:0] iter_sentinel_out,
	input wire done,
	input wire[6:0] result,
	output /*mux_wire*/ logic is_initial,
	output /*mux_wire*/ logic[31:0] initial_data[1:0],
	output /*mux_wire*/ logic may_start,
	input wire start,
	input wire[31:0] initial_data_start[1:0],
	input wire[8:0] extra_data,
	output /*mux_wire*/ logic finish,
	output /*mux_wire*/ logic[6:0] result_data,
	output /*mux_wire*/ logic[8:0] extra_result_data
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
/*latency*/ logic _may_start_D1; always_ff @(posedge clk) begin _may_start_D1 <= may_start; end
/*latency*/ logic _may_start_D2; always_ff @(posedge clk) begin _may_start_D2 <= _may_start_D1; end
/*latency*/ logic _may_start_D3; always_ff @(posedge clk) begin _may_start_D3 <= _may_start_D2; end
/*latency*/ logic _may_start_D4; always_ff @(posedge clk) begin _may_start_D4 <= _may_start_D3; end
/*latency*/ logic _may_start_D5; always_ff @(posedge clk) begin _may_start_D5 <= _may_start_D4; end
/*latency*/ logic _may_start_D6; always_ff @(posedge clk) begin _may_start_D6 <= _may_start_D5; end
/*latency*/ logic _may_start_D7; always_ff @(posedge clk) begin _may_start_D7 <= _may_start_D6; end
/*latency*/ logic _may_start_D8; always_ff @(posedge clk) begin _may_start_D8 <= _may_start_D7; end
/*latency*/ logic _may_start_D9; always_ff @(posedge clk) begin _may_start_D9 <= _may_start_D8; end
/*latency*/ logic _may_start_D10; always_ff @(posedge clk) begin _may_start_D10 <= _may_start_D9; end
/*latency*/ logic _may_start_D11; always_ff @(posedge clk) begin _may_start_D11 <= _may_start_D10; end
/*latency*/ logic _may_start_D12; always_ff @(posedge clk) begin _may_start_D12 <= _may_start_D11; end
/*latency*/ logic _may_start_D13; always_ff @(posedge clk) begin _may_start_D13 <= _may_start_D12; end
/*latency*/ logic _may_start_D14; always_ff @(posedge clk) begin _may_start_D14 <= _may_start_D13; end
/*latency*/ logic _may_start_D15; always_ff @(posedge clk) begin _may_start_D15 <= _may_start_D14; end
/*latency*/ logic _may_start_D16; always_ff @(posedge clk) begin _may_start_D16 <= _may_start_D15; end
/*latency*/ logic _may_start_D17; always_ff @(posedge clk) begin _may_start_D17 <= _may_start_D16; end
/*latency*/ logic _may_start_D18; always_ff @(posedge clk) begin _may_start_D18 <= _may_start_D17; end
/*latency*/ logic _may_start_D19; always_ff @(posedge clk) begin _may_start_D19 <= _may_start_D18; end
/*latency*/ logic _may_start_D20; always_ff @(posedge clk) begin _may_start_D20 <= _may_start_D19; end
/*latency*/ logic _may_start_D21; always_ff @(posedge clk) begin _may_start_D21 <= _may_start_D20; end
/*latency*/ logic _may_start_D22; always_ff @(posedge clk) begin _may_start_D22 <= _may_start_D21; end
/*mux_wire*/ logic _rst_act_in;
/*mux_wire*/ logic iter_continue;
/*mux_wire*/ logic _iter_is_finished_in;
/*mux_wire*/ logic[6:0] _iter_is_finished_data_in;
/*mux_wire*/ logic _LatencyOffset_in;
wire _LatencyOffset_out;
wire _iter_with_initial_data_out;
wire[31:0] _iter_with_initial_data_data_out[1:0];
/*mux_wire*/ logic[31:0] initial_data_cross[1:0];
/*state*/ logic[8:0] extra_data_stored;
/*mux_wire*/ logic retry_loop;
/*mux_wire*/ logic _iter_with_initial_data_in;
/*mux_wire*/ logic[31:0] _iter_with_initial_data_data_in[1:0];
/*state*/ logic last_reset_was_true;
/*mux_wire*/ logic retry_loop_done;
/*mux_wire*/ logic _LatencyOffset_2_in;
wire _LatencyOffset_2_out;
wire _rst_act_out;
/*latency*/ logic __rst_act_out_D1; always_ff @(posedge clk) begin __rst_act_out_D1 <= _rst_act_out; end
/*latency*/ logic __rst_act_out_D2; always_ff @(posedge clk) begin __rst_act_out_D2 <= __rst_act_out_D1; end
/*latency*/ logic __rst_act_out_D3; always_ff @(posedge clk) begin __rst_act_out_D3 <= __rst_act_out_D2; end
/*latency*/ logic __rst_act_out_D4; always_ff @(posedge clk) begin __rst_act_out_D4 <= __rst_act_out_D3; end
/*latency*/ logic __rst_act_out_D5; always_ff @(posedge clk) begin __rst_act_out_D5 <= __rst_act_out_D4; end
/*latency*/ logic __rst_act_out_D6; always_ff @(posedge clk) begin __rst_act_out_D6 <= __rst_act_out_D5; end
/*latency*/ logic __rst_act_out_D7; always_ff @(posedge clk) begin __rst_act_out_D7 <= __rst_act_out_D6; end
/*latency*/ logic __rst_act_out_D8; always_ff @(posedge clk) begin __rst_act_out_D8 <= __rst_act_out_D7; end
/*latency*/ logic __rst_act_out_D9; always_ff @(posedge clk) begin __rst_act_out_D9 <= __rst_act_out_D8; end
/*latency*/ logic __rst_act_out_D10; always_ff @(posedge clk) begin __rst_act_out_D10 <= __rst_act_out_D9; end
/*latency*/ logic __rst_act_out_D11; always_ff @(posedge clk) begin __rst_act_out_D11 <= __rst_act_out_D10; end
/*latency*/ logic __rst_act_out_D12; always_ff @(posedge clk) begin __rst_act_out_D12 <= __rst_act_out_D11; end
/*latency*/ logic __rst_act_out_D13; always_ff @(posedge clk) begin __rst_act_out_D13 <= __rst_act_out_D12; end
/*latency*/ logic __rst_act_out_D14; always_ff @(posedge clk) begin __rst_act_out_D14 <= __rst_act_out_D13; end
/*latency*/ logic __rst_act_out_D15; always_ff @(posedge clk) begin __rst_act_out_D15 <= __rst_act_out_D14; end
/*latency*/ logic __rst_act_out_D16; always_ff @(posedge clk) begin __rst_act_out_D16 <= __rst_act_out_D15; end
/*latency*/ logic __rst_act_out_D17; always_ff @(posedge clk) begin __rst_act_out_D17 <= __rst_act_out_D16; end
/*latency*/ logic __rst_act_out_D18; always_ff @(posedge clk) begin __rst_act_out_D18 <= __rst_act_out_D17; end
/*latency*/ logic __rst_act_out_D19; always_ff @(posedge clk) begin __rst_act_out_D19 <= __rst_act_out_D18; end
/*latency*/ logic __rst_act_out_D20; always_ff @(posedge clk) begin __rst_act_out_D20 <= __rst_act_out_D19; end
/*latency*/ logic __rst_act_out_D21; always_ff @(posedge clk) begin __rst_act_out_D21 <= __rst_act_out_D20; end
/*latency*/ logic __rst_act_out_D22; always_ff @(posedge clk) begin __rst_act_out_D22 <= __rst_act_out_D21; end
wire _29;
assign _29 = last_reset_was_true | retry_loop_done;
wire _iter_is_finished_out;
/*latency*/ logic __iter_is_finished_out_D1; always_ff @(posedge clk) begin __iter_is_finished_out_D1 <= _iter_is_finished_out; end
/*latency*/ logic __iter_is_finished_out_D2; always_ff @(posedge clk) begin __iter_is_finished_out_D2 <= __iter_is_finished_out_D1; end
/*latency*/ logic __iter_is_finished_out_D3; always_ff @(posedge clk) begin __iter_is_finished_out_D3 <= __iter_is_finished_out_D2; end
/*latency*/ logic __iter_is_finished_out_D4; always_ff @(posedge clk) begin __iter_is_finished_out_D4 <= __iter_is_finished_out_D3; end
/*latency*/ logic __iter_is_finished_out_D5; always_ff @(posedge clk) begin __iter_is_finished_out_D5 <= __iter_is_finished_out_D4; end
/*latency*/ logic __iter_is_finished_out_D6; always_ff @(posedge clk) begin __iter_is_finished_out_D6 <= __iter_is_finished_out_D5; end
/*latency*/ logic __iter_is_finished_out_D7; always_ff @(posedge clk) begin __iter_is_finished_out_D7 <= __iter_is_finished_out_D6; end
/*latency*/ logic __iter_is_finished_out_D8; always_ff @(posedge clk) begin __iter_is_finished_out_D8 <= __iter_is_finished_out_D7; end
/*latency*/ logic __iter_is_finished_out_D9; always_ff @(posedge clk) begin __iter_is_finished_out_D9 <= __iter_is_finished_out_D8; end
/*latency*/ logic __iter_is_finished_out_D10; always_ff @(posedge clk) begin __iter_is_finished_out_D10 <= __iter_is_finished_out_D9; end
/*latency*/ logic __iter_is_finished_out_D11; always_ff @(posedge clk) begin __iter_is_finished_out_D11 <= __iter_is_finished_out_D10; end
/*latency*/ logic __iter_is_finished_out_D12; always_ff @(posedge clk) begin __iter_is_finished_out_D12 <= __iter_is_finished_out_D11; end
/*latency*/ logic __iter_is_finished_out_D13; always_ff @(posedge clk) begin __iter_is_finished_out_D13 <= __iter_is_finished_out_D12; end
/*latency*/ logic __iter_is_finished_out_D14; always_ff @(posedge clk) begin __iter_is_finished_out_D14 <= __iter_is_finished_out_D13; end
/*latency*/ logic __iter_is_finished_out_D15; always_ff @(posedge clk) begin __iter_is_finished_out_D15 <= __iter_is_finished_out_D14; end
/*latency*/ logic __iter_is_finished_out_D16; always_ff @(posedge clk) begin __iter_is_finished_out_D16 <= __iter_is_finished_out_D15; end
/*latency*/ logic __iter_is_finished_out_D17; always_ff @(posedge clk) begin __iter_is_finished_out_D17 <= __iter_is_finished_out_D16; end
/*latency*/ logic __iter_is_finished_out_D18; always_ff @(posedge clk) begin __iter_is_finished_out_D18 <= __iter_is_finished_out_D17; end
/*latency*/ logic __iter_is_finished_out_D19; always_ff @(posedge clk) begin __iter_is_finished_out_D19 <= __iter_is_finished_out_D18; end
/*latency*/ logic __iter_is_finished_out_D20; always_ff @(posedge clk) begin __iter_is_finished_out_D20 <= __iter_is_finished_out_D19; end
/*latency*/ logic __iter_is_finished_out_D21; always_ff @(posedge clk) begin __iter_is_finished_out_D21 <= __iter_is_finished_out_D20; end
/*latency*/ logic __iter_is_finished_out_D22; always_ff @(posedge clk) begin __iter_is_finished_out_D22 <= __iter_is_finished_out_D21; end
wire[6:0] _iter_is_finished_data_out;
/*mux_wire*/ logic[6:0] result_data_2;
CrossActionNoData rst_act(
	.in_clk(clk),
	.in(_rst_act_in),
	.out(_rst_act_out)
);
CrossAction__Ttypeint__FROM0_TO101 iter_is_finished(
	.in_clk(clk),
	.in(_iter_is_finished_in),
	.data_in(_iter_is_finished_data_in),
	.out(_iter_is_finished_out),
	.data_out(_iter_is_finished_data_out)
);
CrossAction__Ttypefloat____2 iter_with_initial_data(
	.in_clk(clk),
	.in(_iter_with_initial_data_in),
	.data_in(_iter_with_initial_data_data_in),
	.out(_iter_with_initial_data_out),
	.data_out(_iter_with_initial_data_data_out)
);
LatencyOffset__Ttypebool____OFFSET_51 LatencyOffset(
	.clk(clk),
	.in(_LatencyOffset_in),
	.out(_LatencyOffset_out)
);
LatencyOffset__Ttypebool____OFFSET_22 LatencyOffset_2(
	.clk(clk),
	.in(_LatencyOffset_2_in),
	.out(_LatencyOffset_2_out)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_rst_act_in = 1'bx;
	_rst_act_in = 1'b0;
	if(rst) _rst_act_in = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter_continue = 1'bx;
	iter_continue = 1'b0;
	if(_iter_D51) if(!done) iter_continue = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter = 1'bx;
	iter = 1'b0;
	if(_LatencyOffset_out) iter = 1'b1;
	if(_iter_with_initial_data_out) iter = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter_sentinel_out = 6'dx;
	if(_LatencyOffset_out) iter_sentinel_out = 1'd0;
	if(_iter_with_initial_data_out) iter_sentinel_out = 1'd0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_is_finished_in = 1'bx;
	_iter_is_finished_in = 1'b0;
	if(_iter_D51) if(done) _iter_is_finished_in = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_is_finished_data_in = 7'dx;
	if(_iter_D51) if(done) _iter_is_finished_data_in = result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	is_initial = 1'bx;
	is_initial = 1'b0;
	if(_iter_with_initial_data_out) is_initial = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	initial_data = {'x, 'x};
	for(int _v0 = 0; _v0 < 2; _v0 = _v0 + 1) begin
if(_iter_with_initial_data_out) initial_data[_v0] = initial_data_cross[_v0];
end
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_LatencyOffset_in = 1'bx;
	_LatencyOffset_in = iter_continue;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	initial_data_cross = {'x, 'x};
	for(int _v0 = 0; _v0 < 2; _v0 = _v0 + 1) begin
if(_iter_with_initial_data_out) initial_data_cross[_v0] = _iter_with_initial_data_data_out[_v0];
end
end
always_ff @(posedge clk) begin
	if(_may_start_D22) if(start) extra_data_stored <= extra_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	retry_loop = 1'bx;
	retry_loop = 1'b0;
	if(_may_start_D22) if(!start) retry_loop = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_start = 1'bx;
	may_start = 1'b0;
	if(!_rst_act_out) if(_29) may_start = 1'b1;
	if(!_rst_act_out) if(_iter_is_finished_out) may_start = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_with_initial_data_in = 1'bx;
	_iter_with_initial_data_in = 1'b0;
	if(_may_start_D22) if(start) _iter_with_initial_data_in = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_with_initial_data_data_in = {'x, 'x};
	for(int _v0 = 0; _v0 < 2; _v0 = _v0 + 1) begin
if(_may_start_D22) if(start) _iter_with_initial_data_data_in[_v0] = initial_data_start[_v0];
end
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	finish = 1'bx;
	finish = 1'b0;
	if(!_rst_act_out) if(_iter_is_finished_out) finish = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	result_data = 7'dx;
	if(!_rst_act_out) if(_iter_is_finished_out) result_data = result_data_2;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	extra_result_data = 9'bxxxxxxxxx;
	if(!__rst_act_out_D22) if(__iter_is_finished_out_D22) extra_result_data = extra_data_stored;
end
always_ff @(posedge clk) begin
	if(_rst_act_out) last_reset_was_true <= 1'b1;
	if(!_rst_act_out) last_reset_was_true <= 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	retry_loop_done = 1'bx;
	retry_loop_done = _LatencyOffset_2_out;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_LatencyOffset_2_in = 1'bx;
	_LatencyOffset_2_in = retry_loop;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	result_data_2 = 7'dx;
	if(!_rst_act_out) if(_iter_is_finished_out) result_data_2 = _iter_is_finished_data_out;
end
endmodule

// SlowIteratorState #(T: type float #(), MAX_LATENCY: 52, LATENCY: 30)
module SlowIteratorState__Ttypefloat____MAX_LATENCY52_LATENCY30(
	input clk,
	input wire link,
	input wire[5:0] _sentinel,
	output /*mux_wire*/ logic[31:0] old,
	input wire[31:0] new_1,
	input wire init,
	input wire[31:0] initial_data
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
/*state*/ logic[31:0] iter_state;
/*mux_wire*/ logic[31:0] iter_stack_backwards;
/*mux_wire*/ logic[31:0] _LatencyOffset_in;
wire[31:0] _LatencyOffset_out;
LatencyOffset__Ttypefloat____OFFSET_30 LatencyOffset(
	.clk(clk),
	.in(_LatencyOffset_in),
	.out(_LatencyOffset_out)
);
always_ff @(posedge clk) begin
	if(_link_D30) iter_state <= new_1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter_stack_backwards = 'x;
	iter_stack_backwards = _LatencyOffset_out;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_LatencyOffset_in = 'x;
	_LatencyOffset_in = iter_state;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	old = 'x;
	if(link) if(init) old = initial_data;
	if(link) if(!init) old = iter_stack_backwards;
end
endmodule

// SlowIteratorState #(T: type float #(), MAX_LATENCY: 52, LATENCY: 0)
module SlowIteratorState__Ttypefloat____MAX_LATENCY52_LATENCY0(
	input clk,
	input wire link,
	input wire[5:0] _sentinel,
	output /*mux_wire*/ logic[31:0] old,
	input wire[31:0] new_1,
	input wire init,
	input wire[31:0] initial_data
);

/*state*/ logic[31:0] iter_state;
/*mux_wire*/ logic[31:0] iter_stack_backwards;
/*mux_wire*/ logic[31:0] _LatencyOffset_in;
wire[31:0] _LatencyOffset_out;
LatencyOffset__Ttypefloat____OFFSET0 LatencyOffset(
	.clk(clk),
	.in(_LatencyOffset_in),
	.out(_LatencyOffset_out)
);
always_ff @(posedge clk) begin
	if(link) iter_state <= new_1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter_stack_backwards = 'x;
	iter_stack_backwards = _LatencyOffset_out;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_LatencyOffset_in = 'x;
	_LatencyOffset_in = iter_state;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	old = 'x;
	if(link) if(init) old = initial_data;
	if(link) if(!init) old = iter_stack_backwards;
end
endmodule

// SlowIteratorState #(T: type int #(FROM: 0, TO: 100), MAX_LATENCY: 52, LATENCY: 0)
module SlowIteratorState__Ttypeint__FROM0_TO100__MAX_LATENCY52_LATENCY0(
	input clk,
	input wire link,
	input wire[5:0] _sentinel,
	output /*mux_wire*/ logic[6:0] old,
	input wire[6:0] new_1,
	input wire init,
	input wire[6:0] initial_data
);

/*state*/ logic[6:0] iter_state;
/*mux_wire*/ logic[6:0] iter_stack_backwards;
/*mux_wire*/ logic[6:0] _LatencyOffset_in;
wire[6:0] _LatencyOffset_out;
LatencyOffset__Ttypeint__FROM0_TO100__OFFSET0 LatencyOffset(
	.clk(clk),
	.in(_LatencyOffset_in),
	.out(_LatencyOffset_out)
);
always_ff @(posedge clk) begin
	if(link) iter_state <= new_1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter_stack_backwards = 7'dx;
	iter_stack_backwards = _LatencyOffset_out;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_LatencyOffset_in = 7'dx;
	_LatencyOffset_in = iter_state;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	old = 7'dx;
	if(link) if(init) old = initial_data;
	if(link) if(!init) old = iter_stack_backwards;
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

// transmute_to_bits #(T: type bool #())
module transmute_to_bits__Ttypebool(
	input clk,
	input wire value,
	output /*mux_wire*/ logic[0:0] bits
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

// transmute_from_bits #(T: type bool #())
module transmute_from_bits__Ttypebool(
	input clk,
	input wire[0:0] bits,
	output /*mux_wire*/ logic value
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

// transmute_to_bits #(T: type bool #()[9])
module transmute_to_bits__Ttypebool____9(
	input clk,
	input wire[8:0] value,
	output /*mux_wire*/ logic[8:0] bits
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

// transmute_from_bits #(T: type bool #()[9])
module transmute_from_bits__Ttypebool____9(
	input clk,
	input wire[8:0] bits,
	output /*mux_wire*/ logic[8:0] value
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

// CrossAction #(T: type int #(FROM: 0, TO: 101))
module CrossAction__Ttypeint__FROM0_TO101(
	input in_clk,
	input wire in,
	input wire[6:0] data_in,
	output /*mux_wire*/ logic out,
	output /*mux_wire*/ logic[6:0] data_out
);

/*mux_wire*/ logic _cross_valid_in;
/*mux_wire*/ logic[6:0] _cross_data_in;
wire _cross_valid_out;
wire[6:0] _cross_data_out;
CrossDomain__Ttypebool cross_valid(
	.in_clk(in_clk),
	.in(_cross_valid_in),
	.out(_cross_valid_out)
);
CrossDomain__Ttypeint__FROM0_TO101 cross_data(
	.in_clk(in_clk),
	.in(_cross_data_in),
	.out(_cross_data_out)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_cross_valid_in = 1'bx;
	if(in) _cross_valid_in = 1'b1;
	if(!in) _cross_valid_in = 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_cross_data_in = 7'dx;
	if(in) _cross_data_in = data_in;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	out = 1'bx;
	out = 1'b0;
	if(_cross_valid_out) out = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	data_out = 7'dx;
	if(_cross_valid_out) data_out = _cross_data_out;
end
endmodule

// CrossAction #(T: type float #()[2])
module CrossAction__Ttypefloat____2(
	input in_clk,
	input wire in,
	input wire[31:0] data_in[1:0],
	output /*mux_wire*/ logic out,
	output /*mux_wire*/ logic[31:0] data_out[1:0]
);

/*mux_wire*/ logic _cross_valid_in;
/*mux_wire*/ logic[31:0] _cross_data_in[1:0];
wire _cross_valid_out;
wire[31:0] _cross_data_out[1:0];
CrossDomain__Ttypebool cross_valid(
	.in_clk(in_clk),
	.in(_cross_valid_in),
	.out(_cross_valid_out)
);
CrossDomain__Ttypefloat____2 cross_data(
	.in_clk(in_clk),
	.in(_cross_data_in),
	.out(_cross_data_out)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_cross_valid_in = 1'bx;
	if(in) _cross_valid_in = 1'b1;
	if(!in) _cross_valid_in = 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_cross_data_in = {'x, 'x};
	for(int _v0 = 0; _v0 < 2; _v0 = _v0 + 1) begin
if(in) _cross_data_in[_v0] = data_in[_v0];
end
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	out = 1'bx;
	out = 1'b0;
	if(_cross_valid_out) out = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	data_out = {'x, 'x};
	for(int _v0 = 0; _v0 < 2; _v0 = _v0 + 1) begin
if(_cross_valid_out) data_out[_v0] = _cross_data_out[_v0];
end
end
endmodule

// LatencyOffset #(T: type bool #(), OFFSET: -51)
module LatencyOffset__Ttypebool____OFFSET_51(
	input clk,
	input wire in,
	output /*mux_wire*/ logic out
);

	assign out = in;
endmodule

// LatencyOffset #(T: type bool #(), OFFSET: -22)
module LatencyOffset__Ttypebool____OFFSET_22(
	input clk,
	input wire in,
	output /*mux_wire*/ logic out
);

	assign out = in;
endmodule

// LatencyOffset #(T: type float #(), OFFSET: -30)
module LatencyOffset__Ttypefloat____OFFSET_30(
	input clk,
	input wire[31:0] in,
	output /*mux_wire*/ logic[31:0] out
);

	assign out = in;
endmodule

// LatencyOffset #(T: type float #(), OFFSET: 0)
module LatencyOffset__Ttypefloat____OFFSET0(
	input clk,
	input wire[31:0] in,
	output /*mux_wire*/ logic[31:0] out
);

	assign out = in;
endmodule

// LatencyOffset #(T: type int #(FROM: 0, TO: 100), OFFSET: 0)
module LatencyOffset__Ttypeint__FROM0_TO100__OFFSET0(
	input clk,
	input wire[6:0] in,
	output /*mux_wire*/ logic[6:0] out
);

	assign out = in;
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

// CrossDomain #(T: type int #(FROM: 0, TO: 101))
module CrossDomain__Ttypeint__FROM0_TO101(
	input in_clk,
	input wire[6:0] in,
	output /*mux_wire*/ logic[6:0] out
);

	assign out = in;
endmodule

// CrossDomain #(T: type float #()[2])
module CrossDomain__Ttypefloat____2(
	input in_clk,
	input wire[31:0] in[1:0],
	output /*mux_wire*/ logic[31:0] out[1:0]
);

	assign out = in;
endmodule

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
