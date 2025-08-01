// THIS IS A GENERATED FILE (Generated at 2025-08-01T13:28:54+02:00)
// This file was generated with SUS Compiler 0.3.0-devel (d145b2f05f9b736d07b9c8c1bd3f0cae2d802e21) built at 2025-08-01T12:38:47+02:00
// WholeMandelbrotComputer #()
module WholeMandelbrotComputer(
	input clk,
	input wire rst,
	output /*mux_wire*/ logic may_start,
	input wire set_reg,
	input wire[2:0] id,
	input wire[31:0] value,
	output /*mux_wire*/ logic may_read_px,
	input wire read_px,
	output /*mux_wire*/ logic[6:0] iter_count,
	output /*mux_wire*/ logic[31:0] addr,
	output /*mux_wire*/ logic done
);

/*mux_wire*/ logic _pixel_producer_rst;
/*mux_wire*/ logic _mandel_iter_rst;
/*mux_wire*/ logic _outputFIFO_rst;
/*state*/ logic[31:0] origin_r_st;
/*latency*/ logic[31:0] _origin_r_st_D7; always_ff @(posedge clk) begin _origin_r_st_D7 <= origin_r_st; end
/*latency*/ logic[31:0] _origin_r_st_D8; always_ff @(posedge clk) begin _origin_r_st_D8 <= _origin_r_st_D7; end
/*latency*/ logic[31:0] _origin_r_st_D9; always_ff @(posedge clk) begin _origin_r_st_D9 <= _origin_r_st_D8; end
/*latency*/ logic[31:0] _origin_r_st_D10; always_ff @(posedge clk) begin _origin_r_st_D10 <= _origin_r_st_D9; end
/*latency*/ logic[31:0] _origin_r_st_D11; always_ff @(posedge clk) begin _origin_r_st_D11 <= _origin_r_st_D10; end
/*latency*/ logic[31:0] _origin_r_st_D12; always_ff @(posedge clk) begin _origin_r_st_D12 <= _origin_r_st_D11; end
/*state*/ logic[31:0] origin_i_st;
/*latency*/ logic[31:0] _origin_i_st_D7; always_ff @(posedge clk) begin _origin_i_st_D7 <= origin_i_st; end
/*latency*/ logic[31:0] _origin_i_st_D8; always_ff @(posedge clk) begin _origin_i_st_D8 <= _origin_i_st_D7; end
/*latency*/ logic[31:0] _origin_i_st_D9; always_ff @(posedge clk) begin _origin_i_st_D9 <= _origin_i_st_D8; end
/*latency*/ logic[31:0] _origin_i_st_D10; always_ff @(posedge clk) begin _origin_i_st_D10 <= _origin_i_st_D9; end
/*latency*/ logic[31:0] _origin_i_st_D11; always_ff @(posedge clk) begin _origin_i_st_D11 <= _origin_i_st_D10; end
/*latency*/ logic[31:0] _origin_i_st_D12; always_ff @(posedge clk) begin _origin_i_st_D12 <= _origin_i_st_D11; end
/*state*/ logic[31:0] scale_st;
/*latency*/ logic[31:0] _scale_st_D7; always_ff @(posedge clk) begin _scale_st_D7 <= scale_st; end
/*latency*/ logic[31:0] _scale_st_D8; always_ff @(posedge clk) begin _scale_st_D8 <= _scale_st_D7; end
/*latency*/ logic[31:0] _scale_st_D9; always_ff @(posedge clk) begin _scale_st_D9 <= _scale_st_D8; end
/*latency*/ logic[31:0] _scale_st_D10; always_ff @(posedge clk) begin _scale_st_D10 <= _scale_st_D9; end
/*latency*/ logic[31:0] _scale_st_D11; always_ff @(posedge clk) begin _scale_st_D11 <= _scale_st_D10; end
/*latency*/ logic[31:0] _scale_st_D12; always_ff @(posedge clk) begin _scale_st_D12 <= _scale_st_D11; end
/*mux_wire*/ logic may_startt;
wire _pixel_producer_may_start;
wire _11;
assign _11 = id == 1'd0;
/*mux_wire*/ logic _pixel_producer_start;
wire _16;
assign _16 = id == 2'd2;
wire _20;
assign _20 = id == 2'd3;
wire _24;
assign _24 = id == 3'd4;
wire _outputFIFO_may_push;
/*mux_wire*/ logic _mayPush_in;
wire _pixel_producer_may_next;
wire _mayPush_out;
wire _29;
assign _29 = _pixel_producer_may_next & _mayPush_out;
/*latency*/ logic __29_D7; always_ff @(posedge clk) begin __29_D7 <= _29; end
/*latency*/ logic __29_D8; always_ff @(posedge clk) begin __29_D8 <= __29_D7; end
/*latency*/ logic __29_D9; always_ff @(posedge clk) begin __29_D9 <= __29_D8; end
/*latency*/ logic __29_D10; always_ff @(posedge clk) begin __29_D10 <= __29_D9; end
/*latency*/ logic __29_D11; always_ff @(posedge clk) begin __29_D11 <= __29_D10; end
/*latency*/ logic __29_D12; always_ff @(posedge clk) begin __29_D12 <= __29_D11; end
/*latency*/ logic __29_D13; always_ff @(posedge clk) begin __29_D13 <= __29_D12; end
/*latency*/ logic __29_D14; always_ff @(posedge clk) begin __29_D14 <= __29_D13; end
/*latency*/ logic __29_D15; always_ff @(posedge clk) begin __29_D15 <= __29_D14; end
/*latency*/ logic __29_D16; always_ff @(posedge clk) begin __29_D16 <= __29_D15; end
/*latency*/ logic __29_D17; always_ff @(posedge clk) begin __29_D17 <= __29_D16; end
/*latency*/ logic __29_D18; always_ff @(posedge clk) begin __29_D18 <= __29_D17; end
/*latency*/ logic __29_D19; always_ff @(posedge clk) begin __29_D19 <= __29_D18; end
/*latency*/ logic __29_D20; always_ff @(posedge clk) begin __29_D20 <= __29_D19; end
/*latency*/ logic __29_D21; always_ff @(posedge clk) begin __29_D21 <= __29_D20; end
/*latency*/ logic __29_D22; always_ff @(posedge clk) begin __29_D22 <= __29_D21; end
/*latency*/ logic __29_D23; always_ff @(posedge clk) begin __29_D23 <= __29_D22; end
/*latency*/ logic __29_D24; always_ff @(posedge clk) begin __29_D24 <= __29_D23; end
/*latency*/ logic __29_D25; always_ff @(posedge clk) begin __29_D25 <= __29_D24; end
/*latency*/ logic __29_D26; always_ff @(posedge clk) begin __29_D26 <= __29_D25; end
/*latency*/ logic __29_D27; always_ff @(posedge clk) begin __29_D27 <= __29_D26; end
/*latency*/ logic __29_D28; always_ff @(posedge clk) begin __29_D28 <= __29_D27; end
wire _mandel_iter_may_start;
/*latency*/ logic __mandel_iter_may_start_D7; always_ff @(posedge clk) begin __mandel_iter_may_start_D7 <= _mandel_iter_may_start; end
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
/*latency*/ logic __mandel_iter_may_start_D23; always_ff @(posedge clk) begin __mandel_iter_may_start_D23 <= __mandel_iter_may_start_D22; end
/*latency*/ logic __mandel_iter_may_start_D24; always_ff @(posedge clk) begin __mandel_iter_may_start_D24 <= __mandel_iter_may_start_D23; end
/*latency*/ logic __mandel_iter_may_start_D25; always_ff @(posedge clk) begin __mandel_iter_may_start_D25 <= __mandel_iter_may_start_D24; end
/*latency*/ logic __mandel_iter_may_start_D26; always_ff @(posedge clk) begin __mandel_iter_may_start_D26 <= __mandel_iter_may_start_D25; end
/*latency*/ logic __mandel_iter_may_start_D27; always_ff @(posedge clk) begin __mandel_iter_may_start_D27 <= __mandel_iter_may_start_D26; end
/*latency*/ logic __mandel_iter_may_start_D28; always_ff @(posedge clk) begin __mandel_iter_may_start_D28 <= __mandel_iter_may_start_D27; end
/*mux_wire*/ logic[5:0] x;
/*mux_wire*/ logic[5:0] y;
/*mux_wire*/ logic _pixel_producer_next;
wire[5:0] _pixel_producer_x;
wire[5:0] _pixel_producer_y;
/*mux_wire*/ logic[31:0] r;
/*mux_wire*/ logic[31:0] i;
/*mux_wire*/ logic __37_PixelToComplex;
/*mux_wire*/ logic[31:0] __37_origin_r;
/*mux_wire*/ logic[31:0] __37_origin_i;
/*mux_wire*/ logic[31:0] __37_step;
/*mux_wire*/ logic[5:0] __37_px_x;
/*mux_wire*/ logic[5:0] __37_px_y;
wire[31:0] __37_r;
wire[31:0] __37_i;
wire _pixel_producer_last;
/*mux_wire*/ logic[5:0] _mandel_iter_extra_data_v1_i;
/*mux_wire*/ logic[5:0] _mandel_iter_extra_data_v2_i;
/*mux_wire*/ logic _mandel_iter_extra_data_v3_i;
wire[12:0] _mandel_iter_extra_data_packed_o;
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D7; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D7 <= _mandel_iter_extra_data_packed_o; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D8; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D8 <= __mandel_iter_extra_data_packed_o_D7; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D9; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D9 <= __mandel_iter_extra_data_packed_o_D8; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D10; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D10 <= __mandel_iter_extra_data_packed_o_D9; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D11; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D11 <= __mandel_iter_extra_data_packed_o_D10; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D12; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D12 <= __mandel_iter_extra_data_packed_o_D11; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D13; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D13 <= __mandel_iter_extra_data_packed_o_D12; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D14; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D14 <= __mandel_iter_extra_data_packed_o_D13; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D15; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D15 <= __mandel_iter_extra_data_packed_o_D14; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D16; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D16 <= __mandel_iter_extra_data_packed_o_D15; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D17; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D17 <= __mandel_iter_extra_data_packed_o_D16; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D18; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D18 <= __mandel_iter_extra_data_packed_o_D17; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D19; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D19 <= __mandel_iter_extra_data_packed_o_D18; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D20; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D20 <= __mandel_iter_extra_data_packed_o_D19; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D21; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D21 <= __mandel_iter_extra_data_packed_o_D20; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D22; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D22 <= __mandel_iter_extra_data_packed_o_D21; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D23; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D23 <= __mandel_iter_extra_data_packed_o_D22; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D24; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D24 <= __mandel_iter_extra_data_packed_o_D23; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D25; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D25 <= __mandel_iter_extra_data_packed_o_D24; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D26; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D26 <= __mandel_iter_extra_data_packed_o_D25; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D27; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D27 <= __mandel_iter_extra_data_packed_o_D26; end
/*latency*/ logic[12:0] __mandel_iter_extra_data_packed_o_D28; always_ff @(posedge clk) begin __mandel_iter_extra_data_packed_o_D28 <= __mandel_iter_extra_data_packed_o_D27; end
/*mux_wire*/ logic _mandel_iter_start;
/*mux_wire*/ logic[31:0] _mandel_iter_r;
/*mux_wire*/ logic[31:0] _mandel_iter_i;
/*mux_wire*/ logic[12:0] _mandel_iter_extra_data;
/*mux_wire*/ logic[12:0] extra_data;
/*mux_wire*/ logic _outputFIFO_pop;
wire[19:0] _outputFIFO_pop_data;
/*mux_wire*/ logic[19:0] _data_packed_i;
wire[6:0] _data_v1_o;
wire[12:0] _data_v2_o;
/*mux_wire*/ logic[5:0] x_2;
/*mux_wire*/ logic[5:0] y_2;
/*mux_wire*/ logic[12:0] _mandel_iter_extra_data_packed_i;
wire[5:0] _mandel_iter_extra_data_v1_o;
wire[5:0] _mandel_iter_extra_data_v2_o;
wire _mandel_iter_extra_data_v3_o;
wire[11:0] _53;
assign _53 = y_2 * 7'd64;
wire[11:0] _55;
assign _55 = _53 + x_2;
wire _outputFIFO_may_pop;
wire _mandel_iter_finish;
/*latency*/ logic __mandel_iter_finish_D7; always_ff @(posedge clk) begin __mandel_iter_finish_D7 <= _mandel_iter_finish; end
/*latency*/ logic __mandel_iter_finish_D8; always_ff @(posedge clk) begin __mandel_iter_finish_D8 <= __mandel_iter_finish_D7; end
/*latency*/ logic __mandel_iter_finish_D9; always_ff @(posedge clk) begin __mandel_iter_finish_D9 <= __mandel_iter_finish_D8; end
/*latency*/ logic __mandel_iter_finish_D10; always_ff @(posedge clk) begin __mandel_iter_finish_D10 <= __mandel_iter_finish_D9; end
/*latency*/ logic __mandel_iter_finish_D11; always_ff @(posedge clk) begin __mandel_iter_finish_D11 <= __mandel_iter_finish_D10; end
/*latency*/ logic __mandel_iter_finish_D12; always_ff @(posedge clk) begin __mandel_iter_finish_D12 <= __mandel_iter_finish_D11; end
/*latency*/ logic __mandel_iter_finish_D13; always_ff @(posedge clk) begin __mandel_iter_finish_D13 <= __mandel_iter_finish_D12; end
/*latency*/ logic __mandel_iter_finish_D14; always_ff @(posedge clk) begin __mandel_iter_finish_D14 <= __mandel_iter_finish_D13; end
/*latency*/ logic __mandel_iter_finish_D15; always_ff @(posedge clk) begin __mandel_iter_finish_D15 <= __mandel_iter_finish_D14; end
/*latency*/ logic __mandel_iter_finish_D16; always_ff @(posedge clk) begin __mandel_iter_finish_D16 <= __mandel_iter_finish_D15; end
/*latency*/ logic __mandel_iter_finish_D17; always_ff @(posedge clk) begin __mandel_iter_finish_D17 <= __mandel_iter_finish_D16; end
/*latency*/ logic __mandel_iter_finish_D18; always_ff @(posedge clk) begin __mandel_iter_finish_D18 <= __mandel_iter_finish_D17; end
/*latency*/ logic __mandel_iter_finish_D19; always_ff @(posedge clk) begin __mandel_iter_finish_D19 <= __mandel_iter_finish_D18; end
/*latency*/ logic __mandel_iter_finish_D20; always_ff @(posedge clk) begin __mandel_iter_finish_D20 <= __mandel_iter_finish_D19; end
/*latency*/ logic __mandel_iter_finish_D21; always_ff @(posedge clk) begin __mandel_iter_finish_D21 <= __mandel_iter_finish_D20; end
/*latency*/ logic __mandel_iter_finish_D22; always_ff @(posedge clk) begin __mandel_iter_finish_D22 <= __mandel_iter_finish_D21; end
/*latency*/ logic __mandel_iter_finish_D23; always_ff @(posedge clk) begin __mandel_iter_finish_D23 <= __mandel_iter_finish_D22; end
/*latency*/ logic __mandel_iter_finish_D24; always_ff @(posedge clk) begin __mandel_iter_finish_D24 <= __mandel_iter_finish_D23; end
/*latency*/ logic __mandel_iter_finish_D25; always_ff @(posedge clk) begin __mandel_iter_finish_D25 <= __mandel_iter_finish_D24; end
/*latency*/ logic __mandel_iter_finish_D26; always_ff @(posedge clk) begin __mandel_iter_finish_D26 <= __mandel_iter_finish_D25; end
/*latency*/ logic __mandel_iter_finish_D27; always_ff @(posedge clk) begin __mandel_iter_finish_D27 <= __mandel_iter_finish_D26; end
/*latency*/ logic __mandel_iter_finish_D28; always_ff @(posedge clk) begin __mandel_iter_finish_D28 <= __mandel_iter_finish_D27; end
wire[6:0] _mandel_iter_iteration_count;
wire[12:0] _mandel_iter_extra_data_2;
/*mux_wire*/ logic[6:0] iter_count_2;
/*latency*/ logic[6:0] _iter_count_2_D7; always_ff @(posedge clk) begin _iter_count_2_D7 <= iter_count_2; end
/*latency*/ logic[6:0] _iter_count_2_D8; always_ff @(posedge clk) begin _iter_count_2_D8 <= _iter_count_2_D7; end
/*latency*/ logic[6:0] _iter_count_2_D9; always_ff @(posedge clk) begin _iter_count_2_D9 <= _iter_count_2_D8; end
/*latency*/ logic[6:0] _iter_count_2_D10; always_ff @(posedge clk) begin _iter_count_2_D10 <= _iter_count_2_D9; end
/*latency*/ logic[6:0] _iter_count_2_D11; always_ff @(posedge clk) begin _iter_count_2_D11 <= _iter_count_2_D10; end
/*latency*/ logic[6:0] _iter_count_2_D12; always_ff @(posedge clk) begin _iter_count_2_D12 <= _iter_count_2_D11; end
/*latency*/ logic[6:0] _iter_count_2_D13; always_ff @(posedge clk) begin _iter_count_2_D13 <= _iter_count_2_D12; end
/*latency*/ logic[6:0] _iter_count_2_D14; always_ff @(posedge clk) begin _iter_count_2_D14 <= _iter_count_2_D13; end
/*latency*/ logic[6:0] _iter_count_2_D15; always_ff @(posedge clk) begin _iter_count_2_D15 <= _iter_count_2_D14; end
/*latency*/ logic[6:0] _iter_count_2_D16; always_ff @(posedge clk) begin _iter_count_2_D16 <= _iter_count_2_D15; end
/*latency*/ logic[6:0] _iter_count_2_D17; always_ff @(posedge clk) begin _iter_count_2_D17 <= _iter_count_2_D16; end
/*latency*/ logic[6:0] _iter_count_2_D18; always_ff @(posedge clk) begin _iter_count_2_D18 <= _iter_count_2_D17; end
/*latency*/ logic[6:0] _iter_count_2_D19; always_ff @(posedge clk) begin _iter_count_2_D19 <= _iter_count_2_D18; end
/*latency*/ logic[6:0] _iter_count_2_D20; always_ff @(posedge clk) begin _iter_count_2_D20 <= _iter_count_2_D19; end
/*latency*/ logic[6:0] _iter_count_2_D21; always_ff @(posedge clk) begin _iter_count_2_D21 <= _iter_count_2_D20; end
/*latency*/ logic[6:0] _iter_count_2_D22; always_ff @(posedge clk) begin _iter_count_2_D22 <= _iter_count_2_D21; end
/*latency*/ logic[6:0] _iter_count_2_D23; always_ff @(posedge clk) begin _iter_count_2_D23 <= _iter_count_2_D22; end
/*latency*/ logic[6:0] _iter_count_2_D24; always_ff @(posedge clk) begin _iter_count_2_D24 <= _iter_count_2_D23; end
/*latency*/ logic[6:0] _iter_count_2_D25; always_ff @(posedge clk) begin _iter_count_2_D25 <= _iter_count_2_D24; end
/*latency*/ logic[6:0] _iter_count_2_D26; always_ff @(posedge clk) begin _iter_count_2_D26 <= _iter_count_2_D25; end
/*latency*/ logic[6:0] _iter_count_2_D27; always_ff @(posedge clk) begin _iter_count_2_D27 <= _iter_count_2_D26; end
/*latency*/ logic[6:0] _iter_count_2_D28; always_ff @(posedge clk) begin _iter_count_2_D28 <= _iter_count_2_D27; end
/*mux_wire*/ logic[12:0] extra_data_2;
/*mux_wire*/ logic[6:0] _data_v1_i;
/*mux_wire*/ logic[12:0] _data_v2_i;
wire[19:0] _data_packed_o;
/*mux_wire*/ logic _outputFIFO_push;
/*mux_wire*/ logic[19:0] _outputFIFO_push_data;
ScreenIterator__WIDTH64_HEIGHT64 pixel_producer(
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
MandelbrotSlowIter2__ExtraDataTtypebool____13__INPUT_DATA_LATENCY22 mandel_iter(
	.clk(clk),
	.rst(_mandel_iter_rst),
	.may_start(_mandel_iter_may_start),
	.start(_mandel_iter_start),
	.r(_mandel_iter_r),
	.i(_mandel_iter_i),
	.extra_data(_mandel_iter_extra_data),
	.finish(_mandel_iter_finish),
	.iteration_count(_mandel_iter_iteration_count),
	.extra_data_2(_mandel_iter_extra_data_2)
);
FIFO__Ttypebool____20__DEPTH64_MAY_PUSH_LATENCY10 outputFIFO(
	.clk(clk),
	.rst(_outputFIFO_rst),
	.may_push(_outputFIFO_may_push),
	.push(_outputFIFO_push),
	.push_data(_outputFIFO_push_data),
	.may_pop(_outputFIFO_may_pop),
	.pop(_outputFIFO_pop),
	.pop_data(_outputFIFO_pop_data)
);
CrossDomain__Ttypebool mayPush(
	.in_clk(clk),
	.in(_mayPush_in),
	.out(_mayPush_out)
);
tuple3__T1typeint__FROM0_TO64__T2typeint__FROM0_TO64__T3typebool mandel_iter_extra_data(
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
PixelToComplex__WIDTH64_HEIGHT64 _37(
	.clk(clk),
	.PixelToComplex(__37_PixelToComplex),
	.origin_r(__37_origin_r),
	.origin_i(__37_origin_i),
	.step(__37_step),
	.px_x(__37_px_x),
	.px_y(__37_px_y),
	.r(__37_r),
	.i(__37_i)
);
tuple2__T1typeint__FROM0_TO101__T2typebool____13 data(
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
	if(rst) _mandel_iter_rst = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_outputFIFO_rst = 1'bx;
	_outputFIFO_rst = 1'b0;
	if(rst) _outputFIFO_rst = 1'b1;
end
always_ff @(posedge clk) begin
	if(set_reg) if(!_11) if(_16) origin_r_st <= value;
end
always_ff @(posedge clk) begin
	if(set_reg) if(!_11) if(!_16) if(_20) origin_i_st <= value;
end
always_ff @(posedge clk) begin
	if(set_reg) if(!_11) if(!_16) if(!_20) if(_24) scale_st <= value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_startt = 1'bx;
	may_startt = _pixel_producer_may_start;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_start = 1'bx;
	may_start = may_startt;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pixel_producer_start = 1'bx;
	_pixel_producer_start = 1'b0;
	if(set_reg) if(_11) _pixel_producer_start = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mayPush_in = 1'bx;
	_mayPush_in = _outputFIFO_may_push;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	x = 6'dx;
	if(_29) if(_mandel_iter_may_start) x = _pixel_producer_x;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	y = 6'dx;
	if(_29) if(_mandel_iter_may_start) y = _pixel_producer_y;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_pixel_producer_next = 1'bx;
	_pixel_producer_next = 1'b0;
	if(_29) if(_mandel_iter_may_start) _pixel_producer_next = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	r = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(__29_D28) if(__mandel_iter_may_start_D28) r = __37_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	i = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(__29_D28) if(__mandel_iter_may_start_D28) i = __37_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__37_PixelToComplex = 1'bx;
	__37_PixelToComplex = 1'b0;
	if(_29) if(_mandel_iter_may_start) __37_PixelToComplex = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__37_origin_r = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(__29_D12) if(__mandel_iter_may_start_D12) __37_origin_r = _origin_r_st_D12;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__37_origin_i = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(__29_D12) if(__mandel_iter_may_start_D12) __37_origin_i = _origin_i_st_D12;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__37_step = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(__29_D12) if(__mandel_iter_may_start_D12) __37_step = _scale_st_D12;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__37_px_x = 6'dx;
	if(_29) if(_mandel_iter_may_start) __37_px_x = x;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__37_px_y = 6'dx;
	if(_29) if(_mandel_iter_may_start) __37_px_y = y;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mandel_iter_extra_data_v1_i = 6'dx;
	if(_29) if(_mandel_iter_may_start) _mandel_iter_extra_data_v1_i = x;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mandel_iter_extra_data_v2_i = 6'dx;
	if(_29) if(_mandel_iter_may_start) _mandel_iter_extra_data_v2_i = y;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mandel_iter_extra_data_v3_i = 1'bx;
	if(_29) if(_mandel_iter_may_start) _mandel_iter_extra_data_v3_i = _pixel_producer_last;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mandel_iter_start = 1'bx;
	_mandel_iter_start = 1'b0;
	if(__29_D28) if(__mandel_iter_may_start_D28) _mandel_iter_start = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mandel_iter_r = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(__29_D28) if(__mandel_iter_may_start_D28) _mandel_iter_r = r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mandel_iter_i = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(__29_D28) if(__mandel_iter_may_start_D28) _mandel_iter_i = i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mandel_iter_extra_data = 13'bxxxxxxxxxxxxx;
	if(__29_D28) if(__mandel_iter_may_start_D28) _mandel_iter_extra_data = __mandel_iter_extra_data_packed_o_D28;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_read_px = 1'bx;
	may_read_px = 1'b0;
	if(_outputFIFO_may_pop) may_read_px = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter_count = 7'dx;
	if(may_read_px) if(read_px) iter_count = _data_v1_o;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	addr = 32'dx;
	if(may_read_px) if(read_px) addr = _55;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	done = 1'bx;
	if(may_read_px) if(read_px) done = _mandel_iter_extra_data_v3_o;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	extra_data = 13'bxxxxxxxxxxxxx;
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
	_data_packed_i = 20'bxxxxxxxxxxxxxxxxxxxx;
	if(may_read_px) if(read_px) _data_packed_i = _outputFIFO_pop_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	x_2 = 6'dx;
	if(may_read_px) if(read_px) x_2 = _mandel_iter_extra_data_v1_o;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	y_2 = 6'dx;
	if(may_read_px) if(read_px) y_2 = _mandel_iter_extra_data_v2_o;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_mandel_iter_extra_data_packed_i = 13'bxxxxxxxxxxxxx;
	if(may_read_px) if(read_px) _mandel_iter_extra_data_packed_i = extra_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter_count_2 = 7'dx;
	if(_mandel_iter_finish) iter_count_2 = _mandel_iter_iteration_count;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	extra_data_2 = 13'bxxxxxxxxxxxxx;
	if(__mandel_iter_finish_D28) extra_data_2 = _mandel_iter_extra_data_2;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_data_v1_i = 7'dx;
	if(__mandel_iter_finish_D28) _data_v1_i = _iter_count_2_D28;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_data_v2_i = 13'bxxxxxxxxxxxxx;
	if(__mandel_iter_finish_D28) _data_v2_i = extra_data_2;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_outputFIFO_push = 1'bx;
	_outputFIFO_push = 1'b0;
	if(__mandel_iter_finish_D28) _outputFIFO_push = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_outputFIFO_push_data = 20'bxxxxxxxxxxxxxxxxxxxx;
	if(__mandel_iter_finish_D28) _outputFIFO_push_data = _data_packed_o;
end
endmodule

// ScreenIterator #(WIDTH: 64, HEIGHT: 64)
module ScreenIterator__WIDTH64_HEIGHT64(
	input clk,
	output /*state*/ logic may_next,
	input wire start,
	output /*mux_wire*/ logic last,
	output /*mux_wire*/ logic may_start,
	input wire next,
	output /*mux_wire*/ logic[5:0] x,
	output /*mux_wire*/ logic[5:0] y,
	input wire rst
);

/*state*/ logic[5:0] cur_x;
/*state*/ logic[5:0] cur_y;
/*mux_wire*/ logic x_at_end;
wire _6;
assign _6 = cur_x == 6'd63;
/*mux_wire*/ logic y_at_end;
wire _9;
assign _9 = cur_y == 6'd63;
wire _12;
assign _12 = !may_next;
wire[6:0] _21;
assign _21 = cur_y + 1'd1;
/*mux_wire*/ logic[6:0] __22_in;
wire[5:0] __22_out;
wire[6:0] _25;
assign _25 = cur_x + 1'd1;
/*mux_wire*/ logic[6:0] __26_in;
wire[5:0] __26_out;
wire _28;
assign _28 = !x_at_end;
wire _30;
assign _30 = !y_at_end;
wire _31;
assign _31 = _28 | _30;
unsafe_int_cast__FROM_I1_TO_I65_FROM0_TO64 _22(
	.clk(clk),
	.in(__22_in),
	.out(__22_out)
);
unsafe_int_cast__FROM_I1_TO_I65_FROM0_TO64 _26(
	.clk(clk),
	.in(__26_in),
	.out(__26_out)
);
always_ff @(posedge clk) begin
	if(start) cur_x <= 1'd0;
	if(next) if(x_at_end) cur_x <= 1'd0;
	if(next) if(!x_at_end) cur_x <= __26_out;
	if(rst) cur_x <= 6'd63;
end
always_ff @(posedge clk) begin
	if(start) cur_y <= 1'd0;
	if(next) if(x_at_end) if(!y_at_end) cur_y <= __22_out;
	if(rst) cur_y <= 6'd63;
end
always_ff @(posedge clk) begin
	if(start) may_next <= 1'b1;
	if(next) may_next <= _31;
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
	x = 6'dx;
	if(next) x = cur_x;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	y = 6'dx;
	if(next) y = cur_y;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__22_in = 7'dx;
	if(next) if(x_at_end) if(!y_at_end) __22_in = _21;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__26_in = 7'dx;
	if(next) if(!x_at_end) __26_in = _25;
end
endmodule

// MandelbrotSlowIter2 #(ExtraDataT: type bool #()[13], INPUT_DATA_LATENCY: 22)
module MandelbrotSlowIter2__ExtraDataTtypebool____13__INPUT_DATA_LATENCY22(
	input clk,
	input wire rst,
	output /*mux_wire*/ logic may_start,
	input wire start,
	input wire[31:0] r,
	input wire[31:0] i,
	input wire[12:0] extra_data,
	output /*mux_wire*/ logic finish,
	output /*mux_wire*/ logic[6:0] iteration_count,
	output /*mux_wire*/ logic[12:0] extra_data_2
);

/*mux_wire*/ logic _iter_reset;
wire _iter_may_start;
wire[31:0] _7[1:0];
assign _7[0] = r;
assign _7[1] = i;
/*mux_wire*/ logic _iter_start;
/*mux_wire*/ logic[31:0] _iter_initial_data[1:0];
/*mux_wire*/ logic[12:0] _iter_extra_data;
wire _iter_finish;
/*latency*/ logic __iter_finish_D1; always_ff @(posedge clk) begin __iter_finish_D1 <= _iter_finish; end
/*latency*/ logic __iter_finish_D2; always_ff @(posedge clk) begin __iter_finish_D2 <= __iter_finish_D1; end
/*latency*/ logic __iter_finish_D3; always_ff @(posedge clk) begin __iter_finish_D3 <= __iter_finish_D2; end
/*latency*/ logic __iter_finish_D4; always_ff @(posedge clk) begin __iter_finish_D4 <= __iter_finish_D3; end
/*latency*/ logic __iter_finish_D5; always_ff @(posedge clk) begin __iter_finish_D5 <= __iter_finish_D4; end
/*latency*/ logic __iter_finish_D6; always_ff @(posedge clk) begin __iter_finish_D6 <= __iter_finish_D5; end
/*latency*/ logic __iter_finish_D7; always_ff @(posedge clk) begin __iter_finish_D7 <= __iter_finish_D6; end
/*latency*/ logic __iter_finish_D8; always_ff @(posedge clk) begin __iter_finish_D8 <= __iter_finish_D7; end
/*latency*/ logic __iter_finish_D9; always_ff @(posedge clk) begin __iter_finish_D9 <= __iter_finish_D8; end
/*latency*/ logic __iter_finish_D10; always_ff @(posedge clk) begin __iter_finish_D10 <= __iter_finish_D9; end
/*latency*/ logic __iter_finish_D11; always_ff @(posedge clk) begin __iter_finish_D11 <= __iter_finish_D10; end
/*latency*/ logic __iter_finish_D12; always_ff @(posedge clk) begin __iter_finish_D12 <= __iter_finish_D11; end
/*latency*/ logic __iter_finish_D13; always_ff @(posedge clk) begin __iter_finish_D13 <= __iter_finish_D12; end
/*latency*/ logic __iter_finish_D14; always_ff @(posedge clk) begin __iter_finish_D14 <= __iter_finish_D13; end
/*latency*/ logic __iter_finish_D15; always_ff @(posedge clk) begin __iter_finish_D15 <= __iter_finish_D14; end
/*latency*/ logic __iter_finish_D16; always_ff @(posedge clk) begin __iter_finish_D16 <= __iter_finish_D15; end
/*latency*/ logic __iter_finish_D17; always_ff @(posedge clk) begin __iter_finish_D17 <= __iter_finish_D16; end
/*latency*/ logic __iter_finish_D18; always_ff @(posedge clk) begin __iter_finish_D18 <= __iter_finish_D17; end
/*latency*/ logic __iter_finish_D19; always_ff @(posedge clk) begin __iter_finish_D19 <= __iter_finish_D18; end
/*latency*/ logic __iter_finish_D20; always_ff @(posedge clk) begin __iter_finish_D20 <= __iter_finish_D19; end
/*latency*/ logic __iter_finish_D21; always_ff @(posedge clk) begin __iter_finish_D21 <= __iter_finish_D20; end
/*latency*/ logic __iter_finish_D22; always_ff @(posedge clk) begin __iter_finish_D22 <= __iter_finish_D21; end
wire[6:0] _iter_result_data;
wire[12:0] _iter_extra_result_data;
/*mux_wire*/ logic[6:0] iteration_count_2;
/*mux_wire*/ logic[12:0] extra_data_3;
/*mux_wire*/ logic[31:0] zero;
/*mux_wire*/ logic __15_fp_fromint;
/*mux_wire*/ logic signed[31:0] __15_a;
wire[31:0] __15_result;
wire _iter_iter;
/*latency*/ logic __iter_iter_D997; always_ff @(posedge clk) begin __iter_iter_D997 <= _iter_iter; end
/*latency*/ logic __iter_iter_D998; always_ff @(posedge clk) begin __iter_iter_D998 <= __iter_iter_D997; end
/*latency*/ logic __iter_iter_D999; always_ff @(posedge clk) begin __iter_iter_D999 <= __iter_iter_D998; end
/*latency*/ logic __iter_iter_D1000; always_ff @(posedge clk) begin __iter_iter_D1000 <= __iter_iter_D999; end
/*latency*/ logic __iter_iter_D1001; always_ff @(posedge clk) begin __iter_iter_D1001 <= __iter_iter_D1000; end
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
/*latency*/ logic[5:0] _sentinel_D997; always_ff @(posedge clk) begin _sentinel_D997 <= sentinel; end
/*latency*/ logic[5:0] _sentinel_D998; always_ff @(posedge clk) begin _sentinel_D998 <= _sentinel_D997; end
/*latency*/ logic[5:0] _sentinel_D999; always_ff @(posedge clk) begin _sentinel_D999 <= _sentinel_D998; end
/*latency*/ logic[5:0] _sentinel_D1000; always_ff @(posedge clk) begin _sentinel_D1000 <= _sentinel_D999; end
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
/*latency*/ logic __iter_is_initial_D997; always_ff @(posedge clk) begin __iter_is_initial_D997 <= _iter_is_initial; end
/*latency*/ logic __iter_is_initial_D998; always_ff @(posedge clk) begin __iter_is_initial_D998 <= __iter_is_initial_D997; end
/*latency*/ logic __iter_is_initial_D999; always_ff @(posedge clk) begin __iter_is_initial_D999 <= __iter_is_initial_D998; end
/*latency*/ logic __iter_is_initial_D1000; always_ff @(posedge clk) begin __iter_is_initial_D1000 <= __iter_is_initial_D999; end
wire[31:0] _iter_initial_data_2[1:0];
/*mux_wire*/ logic[31:0] init_data[1:0];
/*mux_wire*/ logic _z_r_init;
/*mux_wire*/ logic[31:0] _z_r_initial_data;
/*mux_wire*/ logic _z_i_init;
/*mux_wire*/ logic[31:0] _z_i_initial_data;
wire[31:0] _40 = init_data[0];
/*mux_wire*/ logic _c_r_init;
/*mux_wire*/ logic[31:0] _c_r_initial_data;
wire[31:0] _43 = init_data[1];
/*mux_wire*/ logic _c_i_init;
/*mux_wire*/ logic[31:0] _c_i_initial_data;
/*mux_wire*/ logic _iteration_init;
/*mux_wire*/ logic[6:0] _iteration_initial_data;
/*mux_wire*/ logic is_done;
wire[31:0] _z_r_old;
wire[31:0] _z_i_old;
wire[31:0] _c_r_old;
/*latency*/ logic[31:0] __c_r_old_D997; always_ff @(posedge clk) begin __c_r_old_D997 <= _c_r_old; end
/*latency*/ logic[31:0] __c_r_old_D998; always_ff @(posedge clk) begin __c_r_old_D998 <= __c_r_old_D997; end
/*latency*/ logic[31:0] __c_r_old_D999; always_ff @(posedge clk) begin __c_r_old_D999 <= __c_r_old_D998; end
/*latency*/ logic[31:0] __c_r_old_D1000; always_ff @(posedge clk) begin __c_r_old_D1000 <= __c_r_old_D999; end
/*latency*/ logic[31:0] __c_r_old_D1001; always_ff @(posedge clk) begin __c_r_old_D1001 <= __c_r_old_D1000; end
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
/*latency*/ logic[31:0] __c_i_old_D997; always_ff @(posedge clk) begin __c_i_old_D997 <= _c_i_old; end
/*latency*/ logic[31:0] __c_i_old_D998; always_ff @(posedge clk) begin __c_i_old_D998 <= __c_i_old_D997; end
/*latency*/ logic[31:0] __c_i_old_D999; always_ff @(posedge clk) begin __c_i_old_D999 <= __c_i_old_D998; end
/*latency*/ logic[31:0] __c_i_old_D1000; always_ff @(posedge clk) begin __c_i_old_D1000 <= __c_i_old_D999; end
/*latency*/ logic[31:0] __c_i_old_D1001; always_ff @(posedge clk) begin __c_i_old_D1001 <= __c_i_old_D1000; end
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
/*mux_wire*/ logic __53_MandelbrotStep;
/*mux_wire*/ logic[31:0] __53_z_r;
/*mux_wire*/ logic[31:0] __53_z_i;
/*mux_wire*/ logic[31:0] __53_c_r;
/*mux_wire*/ logic[31:0] __53_c_i;
wire[31:0] __53_new_z_r;
wire[31:0] __53_new_z_i;
wire __53_is_done;
/*mux_wire*/ logic[31:0] _z_r_new;
/*mux_wire*/ logic[31:0] _z_i_new;
/*mux_wire*/ logic[31:0] _c_r_new;
/*mux_wire*/ logic[31:0] _c_i_new;
wire[6:0] _iteration_old;
/*latency*/ logic[6:0] __iteration_old_D997; always_ff @(posedge clk) begin __iteration_old_D997 <= _iteration_old; end
/*latency*/ logic[6:0] __iteration_old_D998; always_ff @(posedge clk) begin __iteration_old_D998 <= __iteration_old_D997; end
/*latency*/ logic[6:0] __iteration_old_D999; always_ff @(posedge clk) begin __iteration_old_D999 <= __iteration_old_D998; end
/*latency*/ logic[6:0] __iteration_old_D1000; always_ff @(posedge clk) begin __iteration_old_D1000 <= __iteration_old_D999; end
/*latency*/ logic[6:0] __iteration_old_D1001; always_ff @(posedge clk) begin __iteration_old_D1001 <= __iteration_old_D1000; end
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
wire[6:0] _60;
assign _60 = _iteration_old + 1'd1;
/*mux_wire*/ logic[6:0] __61_in;
wire[6:0] __61_out;
/*mux_wire*/ logic[6:0] _iteration_new;
/*mux_wire*/ logic _iter_done;
/*mux_wire*/ logic[6:0] _iter_result;
wire _68;
assign _68 = _iteration_old == 7'd99;
/*latency*/ logic __68_D997; always_ff @(posedge clk) begin __68_D997 <= _68; end
/*latency*/ logic __68_D998; always_ff @(posedge clk) begin __68_D998 <= __68_D997; end
/*latency*/ logic __68_D999; always_ff @(posedge clk) begin __68_D999 <= __68_D998; end
/*latency*/ logic __68_D1000; always_ff @(posedge clk) begin __68_D1000 <= __68_D999; end
/*latency*/ logic __68_D1001; always_ff @(posedge clk) begin __68_D1001 <= __68_D1000; end
/*latency*/ logic __68_D1002; always_ff @(posedge clk) begin __68_D1002 <= __68_D1001; end
/*latency*/ logic __68_D1003; always_ff @(posedge clk) begin __68_D1003 <= __68_D1002; end
/*latency*/ logic __68_D1004; always_ff @(posedge clk) begin __68_D1004 <= __68_D1003; end
/*latency*/ logic __68_D1005; always_ff @(posedge clk) begin __68_D1005 <= __68_D1004; end
/*latency*/ logic __68_D1006; always_ff @(posedge clk) begin __68_D1006 <= __68_D1005; end
/*latency*/ logic __68_D1007; always_ff @(posedge clk) begin __68_D1007 <= __68_D1006; end
/*latency*/ logic __68_D1008; always_ff @(posedge clk) begin __68_D1008 <= __68_D1007; end
/*latency*/ logic __68_D1009; always_ff @(posedge clk) begin __68_D1009 <= __68_D1008; end
/*latency*/ logic __68_D1010; always_ff @(posedge clk) begin __68_D1010 <= __68_D1009; end
/*latency*/ logic __68_D1011; always_ff @(posedge clk) begin __68_D1011 <= __68_D1010; end
/*latency*/ logic __68_D1012; always_ff @(posedge clk) begin __68_D1012 <= __68_D1011; end
/*latency*/ logic __68_D1013; always_ff @(posedge clk) begin __68_D1013 <= __68_D1012; end
/*latency*/ logic __68_D1014; always_ff @(posedge clk) begin __68_D1014 <= __68_D1013; end
/*latency*/ logic __68_D1015; always_ff @(posedge clk) begin __68_D1015 <= __68_D1014; end
/*latency*/ logic __68_D1016; always_ff @(posedge clk) begin __68_D1016 <= __68_D1015; end
/*latency*/ logic __68_D1017; always_ff @(posedge clk) begin __68_D1017 <= __68_D1016; end
/*latency*/ logic __68_D1018; always_ff @(posedge clk) begin __68_D1018 <= __68_D1017; end
/*latency*/ logic __68_D1019; always_ff @(posedge clk) begin __68_D1019 <= __68_D1018; end
/*latency*/ logic __68_D1020; always_ff @(posedge clk) begin __68_D1020 <= __68_D1019; end
/*latency*/ logic __68_D1021; always_ff @(posedge clk) begin __68_D1021 <= __68_D1020; end
/*latency*/ logic __68_D1022; always_ff @(posedge clk) begin __68_D1022 <= __68_D1021; end
/*latency*/ logic __68_D1023; always_ff @(posedge clk) begin __68_D1023 <= __68_D1022; end
/*latency*/ logic __68_D1024; always_ff @(posedge clk) begin __68_D1024 <= __68_D1023; end
/*latency*/ logic __68_D1025; always_ff @(posedge clk) begin __68_D1025 <= __68_D1024; end
/*latency*/ logic __68_D1026; always_ff @(posedge clk) begin __68_D1026 <= __68_D1025; end
/*latency*/ logic __68_D1027; always_ff @(posedge clk) begin __68_D1027 <= __68_D1026; end
/*latency*/ logic __68_D1028; always_ff @(posedge clk) begin __68_D1028 <= __68_D1027; end
/*latency*/ logic __68_D1029; always_ff @(posedge clk) begin __68_D1029 <= __68_D1028; end
/*latency*/ logic __68_D1030; always_ff @(posedge clk) begin __68_D1030 <= __68_D1029; end
/*latency*/ logic __68_D1031; always_ff @(posedge clk) begin __68_D1031 <= __68_D1030; end
/*latency*/ logic __68_D1032; always_ff @(posedge clk) begin __68_D1032 <= __68_D1031; end
/*latency*/ logic __68_D1033; always_ff @(posedge clk) begin __68_D1033 <= __68_D1032; end
/*latency*/ logic __68_D1034; always_ff @(posedge clk) begin __68_D1034 <= __68_D1033; end
/*latency*/ logic __68_D1035; always_ff @(posedge clk) begin __68_D1035 <= __68_D1034; end
/*latency*/ logic __68_D1036; always_ff @(posedge clk) begin __68_D1036 <= __68_D1035; end
/*latency*/ logic __68_D1037; always_ff @(posedge clk) begin __68_D1037 <= __68_D1036; end
/*latency*/ logic __68_D1038; always_ff @(posedge clk) begin __68_D1038 <= __68_D1037; end
/*latency*/ logic __68_D1039; always_ff @(posedge clk) begin __68_D1039 <= __68_D1038; end
/*latency*/ logic __68_D1040; always_ff @(posedge clk) begin __68_D1040 <= __68_D1039; end
/*latency*/ logic __68_D1041; always_ff @(posedge clk) begin __68_D1041 <= __68_D1040; end
/*latency*/ logic __68_D1042; always_ff @(posedge clk) begin __68_D1042 <= __68_D1041; end
/*latency*/ logic __68_D1043; always_ff @(posedge clk) begin __68_D1043 <= __68_D1042; end
/*latency*/ logic __68_D1044; always_ff @(posedge clk) begin __68_D1044 <= __68_D1043; end
/*latency*/ logic __68_D1045; always_ff @(posedge clk) begin __68_D1045 <= __68_D1044; end
/*latency*/ logic __68_D1046; always_ff @(posedge clk) begin __68_D1046 <= __68_D1045; end
/*latency*/ logic __68_D1047; always_ff @(posedge clk) begin __68_D1047 <= __68_D1046; end
/*latency*/ logic __68_D1048; always_ff @(posedge clk) begin __68_D1048 <= __68_D1047; end
/*latency*/ logic __68_D1049; always_ff @(posedge clk) begin __68_D1049 <= __68_D1048; end
/*latency*/ logic __68_D1050; always_ff @(posedge clk) begin __68_D1050 <= __68_D1049; end
/*latency*/ logic __68_D1051; always_ff @(posedge clk) begin __68_D1051 <= __68_D1050; end
SlowIterator2__InitialTtypefloat____2__ResultTtypeint__FROM0_TO101__ExtraDataTtypebool____13__COMPUTATION_LATENCY55_REQUEST_DATA_LATENCY22 iter(
	.clk(clk),
	.iter(_iter_iter),
	.iter_sentinel_out(_iter_iter_sentinel_out),
	.done(_iter_done),
	.result(_iter_result),
	.is_initial(_iter_is_initial),
	.initial_data(_iter_initial_data_2),
	.may_start(_iter_may_start),
	.start(_iter_start),
	.initial_data_2(_iter_initial_data),
	.extra_data(_iter_extra_data),
	.finish(_iter_finish),
	.result_data(_iter_result_data),
	.extra_result_data(_iter_extra_result_data),
	.reset(_iter_reset)
);
SlowIteratorState__Ttypefloat____MAX_LATENCY56_LATENCY30 z_r(
	.clk(clk),
	.link(_z_r_link),
	._sentinel(_z_r__sentinel),
	.old(_z_r_old),
	.new_1(_z_r_new),
	.init(_z_r_init),
	.initial_data(_z_r_initial_data)
);
SlowIteratorState__Ttypefloat____MAX_LATENCY56_LATENCY30 z_i(
	.clk(clk),
	.link(_z_i_link),
	._sentinel(_z_i__sentinel),
	.old(_z_i_old),
	.new_1(_z_i_new),
	.init(_z_i_init),
	.initial_data(_z_i_initial_data)
);
SlowIteratorState__Ttypefloat____MAX_LATENCY56_LATENCY0 c_r(
	.clk(clk),
	.link(_c_r_link),
	._sentinel(_c_r__sentinel),
	.old(_c_r_old),
	.new_1(_c_r_new),
	.init(_c_r_init),
	.initial_data(_c_r_initial_data)
);
SlowIteratorState__Ttypefloat____MAX_LATENCY56_LATENCY0 c_i(
	.clk(clk),
	.link(_c_i_link),
	._sentinel(_c_i__sentinel),
	.old(_c_i_old),
	.new_1(_c_i_new),
	.init(_c_i_init),
	.initial_data(_c_i_initial_data)
);
SlowIteratorState__Ttypeint__FROM0_TO100__MAX_LATENCY56_LATENCY0 iteration(
	.clk(clk),
	.link(_iteration_link),
	._sentinel(_iteration__sentinel),
	.old(_iteration_old),
	.new_1(_iteration_new),
	.init(_iteration_init),
	.initial_data(_iteration_initial_data)
);
fp_fromint _15(
	.clk(clk),
	.fp_fromint(__15_fp_fromint),
	.a(__15_a),
	.result(__15_result)
);
MandelbrotStep _53(
	.clk(clk),
	.MandelbrotStep(__53_MandelbrotStep),
	.z_r(__53_z_r),
	.z_i(__53_z_i),
	.c_r(__53_c_r),
	.c_i(__53_c_i),
	.new_z_r(__53_new_z_r),
	.new_z_i(__53_new_z_i),
	.is_done(__53_is_done)
);
unsafe_int_cast__FROM_I1_TO_I101_FROM0_TO100 _61(
	.clk(clk),
	.in(__61_in),
	.out(__61_out)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_reset = 1'bx;
	_iter_reset = 1'b0;
	if(rst) _iter_reset = 1'b1;
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
	_iter_initial_data = {32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	for(int _v0 = 0; _v0 < 2; _v0 = _v0 + 1) begin
if(start) _iter_initial_data[_v0] = _7[_v0];
end
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_extra_data = 13'bxxxxxxxxxxxxx;
	if(start) _iter_extra_data = extra_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	finish = 1'bx;
	finish = 1'b0;
	if(_iter_finish) finish = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iteration_count = 7'dx;
	if(_iter_finish) iteration_count = iteration_count_2;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	extra_data_2 = 13'bxxxxxxxxxxxxx;
	if(__iter_finish_D22) extra_data_2 = extra_data_3;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iteration_count_2 = 7'dx;
	if(_iter_finish) iteration_count_2 = _iter_result_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	extra_data_3 = 13'bxxxxxxxxxxxxx;
	if(__iter_finish_D22) extra_data_3 = _iter_extra_result_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	zero = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	zero = __15_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__15_fp_fromint = 1'bx;
	__15_fp_fromint = 1'b0;
	__15_fp_fromint = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__15_a = 32'sdx;
	__15_a = 1'd0;
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
	if(__iter_iter_D1000) _z_r_link = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_r__sentinel = 6'dx;
	if(__iter_iter_D1000) _z_r__sentinel = _sentinel_D1000;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_i_link = 1'bx;
	_z_i_link = 1'b0;
	if(__iter_iter_D1000) _z_i_link = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_i__sentinel = 6'dx;
	if(__iter_iter_D1000) _z_i__sentinel = _sentinel_D1000;
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
	init_data = {32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	for(int _v0 = 0; _v0 < 2; _v0 = _v0 + 1) begin
if(_iter_iter) if(_iter_is_initial) init_data[_v0] = _iter_initial_data_2[_v0];
end
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_r_init = 1'bx;
	_z_r_init = 1'b0;
	if(__iter_iter_D1000) if(__iter_is_initial_D1000) _z_r_init = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_r_initial_data = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(__iter_iter_D1000) if(__iter_is_initial_D1000) _z_r_initial_data = zero;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_i_init = 1'bx;
	_z_i_init = 1'b0;
	if(__iter_iter_D1000) if(__iter_is_initial_D1000) _z_i_init = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_i_initial_data = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(__iter_iter_D1000) if(__iter_is_initial_D1000) _z_i_initial_data = zero;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_r_init = 1'bx;
	_c_r_init = 1'b0;
	if(_iter_iter) if(_iter_is_initial) _c_r_init = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_r_initial_data = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_iter_iter) if(_iter_is_initial) _c_r_initial_data = _40;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_i_init = 1'bx;
	_c_i_init = 1'b0;
	if(_iter_iter) if(_iter_is_initial) _c_i_init = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_i_initial_data = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_iter_iter) if(_iter_is_initial) _c_i_initial_data = _43;
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
	if(__iter_iter_D1051) is_done = __53_is_done;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__53_MandelbrotStep = 1'bx;
	__53_MandelbrotStep = 1'b0;
	if(__iter_iter_D1000) __53_MandelbrotStep = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__53_z_r = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(__iter_iter_D1000) __53_z_r = _z_r_old;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__53_z_i = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(__iter_iter_D1000) __53_z_i = _z_i_old;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__53_c_r = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(__iter_iter_D1019) __53_c_r = __c_r_old_D1019;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__53_c_i = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(__iter_iter_D1019) __53_c_i = __c_i_old_D1019;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_r_new = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(__iter_iter_D1030) _z_r_new = __53_new_z_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_z_i_new = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(__iter_iter_D1030) _z_i_new = __53_new_z_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_r_new = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_iter_iter) _c_r_new = _c_r_old;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_c_i_new = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_iter_iter) _c_i_new = _c_i_old;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__61_in = 7'dx;
	if(_iter_iter) __61_in = _60;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iteration_new = 7'dx;
	if(_iter_iter) _iteration_new = __61_out;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_done = 1'bx;
	_iter_done = 1'b0;
	if(__iter_iter_D1051) if(is_done) _iter_done = 1'b1;
	if(__iter_iter_D1051) if(!is_done) if(__68_D1051) _iter_done = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_result = 7'dx;
	if(__iter_iter_D1051) if(is_done) _iter_result = __iteration_old_D1051;
	if(__iter_iter_D1051) if(!is_done) if(__68_D1051) _iter_result = 7'd100;
end
endmodule

// FIFO #(T: type bool #()[20], DEPTH: 64, MAY_PUSH_LATENCY: 10)
module FIFO__Ttypebool____20__DEPTH64_MAY_PUSH_LATENCY10(
	input clk,
	input wire rst,
	output /*mux_wire*/ logic may_push,
	input wire push,
	input wire[19:0] push_data,
	output /*mux_wire*/ logic may_pop,
	input wire pop,
	output /*mux_wire*/ logic[19:0] pop_data
);

/*mux_wire*/ logic _fifo_rst;
wire _fifo_may_push;
/*mux_wire*/ logic[19:0] as_bits;
/*mux_wire*/ logic[19:0] __5_value;
wire[19:0] __5_bits;
/*mux_wire*/ logic _fifo_push;
/*mux_wire*/ logic[19:0] _fifo_push_data;
wire _fifo_may_pop;
/*mux_wire*/ logic[19:0] pop_data_as_bits;
/*mux_wire*/ logic _fifo_pop;
wire[19:0] _fifo_pop_data;
/*mux_wire*/ logic[19:0] __13_bits;
wire[19:0] __13_value;
RawFIFO #(.WIDTH(20), .DEPTH(64), .MAY_PUSH_LATENCY(10)) fifo(
	.clk(clk),
	.rst(_fifo_rst),
	.may_push(_fifo_may_push),
	.push(_fifo_push),
	.push_data(_fifo_push_data),
	.may_pop(_fifo_may_pop),
	.pop(_fifo_pop),
	.pop_data(_fifo_pop_data)
);
transmute_to_bits__Ttypebool____20 _5(
	.clk(clk),
	.value(__5_value),
	.bits(__5_bits)
);
transmute_from_bits__Ttypebool____20 _13(
	.clk(clk),
	.bits(__13_bits),
	.value(__13_value)
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
	as_bits = 20'bxxxxxxxxxxxxxxxxxxxx;
	if(push) as_bits = __5_bits;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__5_value = 20'bxxxxxxxxxxxxxxxxxxxx;
	if(push) __5_value = push_data;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_push = 1'bx;
	_fifo_push = 1'b0;
	if(push) _fifo_push = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_fifo_push_data = 20'bxxxxxxxxxxxxxxxxxxxx;
	if(push) _fifo_push_data = as_bits;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	may_pop = 1'bx;
	may_pop = _fifo_may_pop;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_data = 20'bxxxxxxxxxxxxxxxxxxxx;
	if(pop) pop_data = __13_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	pop_data_as_bits = 20'bxxxxxxxxxxxxxxxxxxxx;
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
	__13_bits = 20'bxxxxxxxxxxxxxxxxxxxx;
	if(pop) __13_bits = pop_data_as_bits;
end
endmodule

// CrossDomain #(T: type bool #())
module CrossDomain__Ttypebool(
	input in_clk,
	input wire in,
	output /*mux_wire*/ logic out
);

	assign out = in;
endmodule

// tuple3 #(T1: type int #(FROM: 0, TO: 64), T2: type int #(FROM: 0, TO: 64), T3: type bool #())
module tuple3__T1typeint__FROM0_TO64__T2typeint__FROM0_TO64__T3typebool(
	input clk,
	input wire[5:0] v1_i,
	input wire[5:0] v2_i,
	input wire v3_i,
	output /*mux_wire*/ logic[12:0] packed_o,
	input wire[12:0] packed_i,
	output /*mux_wire*/ logic[5:0] v1_o,
	output /*mux_wire*/ logic[5:0] v2_o,
	output /*mux_wire*/ logic v3_o
);

genvar _g0;
/*mux_wire*/ logic[5:0] __2_value;
wire[5:0] __2_bits;
/*mux_wire*/ logic[5:0] __4_value;
wire[5:0] __4_bits;
/*mux_wire*/ logic __6_value;
wire[0:0] __6_bits;
wire[5:0] _7;
generate
for(_g0 = 0; _g0 < 6; _g0 = _g0 + 1) begin
assign _7[_g0] = packed_i[_g0];
end
endgenerate
/*mux_wire*/ logic[5:0] __8_bits;
wire[5:0] __8_value;
wire[5:0] _9;
generate
for(_g0 = 0; _g0 < 6; _g0 = _g0 + 1) begin
assign _9[_g0] = packed_i[6 + _g0];
end
endgenerate
/*mux_wire*/ logic[5:0] __10_bits;
wire[5:0] __10_value;
wire[0:0] _11;
generate
for(_g0 = 0; _g0 < 1; _g0 = _g0 + 1) begin
assign _11[_g0] = packed_i[12 + _g0];
end
endgenerate
/*mux_wire*/ logic[0:0] __12_bits;
wire __12_value;
transmute_to_bits__Ttypeint__FROM0_TO64 _2(
	.clk(clk),
	.value(__2_value),
	.bits(__2_bits)
);
transmute_to_bits__Ttypeint__FROM0_TO64 _4(
	.clk(clk),
	.value(__4_value),
	.bits(__4_bits)
);
transmute_to_bits__Ttypebool _6(
	.clk(clk),
	.value(__6_value),
	.bits(__6_bits)
);
transmute_from_bits__Ttypeint__FROM0_TO64 _8(
	.clk(clk),
	.bits(__8_bits),
	.value(__8_value)
);
transmute_from_bits__Ttypeint__FROM0_TO64 _10(
	.clk(clk),
	.bits(__10_bits),
	.value(__10_value)
);
transmute_from_bits__Ttypebool _12(
	.clk(clk),
	.bits(__12_bits),
	.value(__12_value)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	packed_o = 13'bxxxxxxxxxxxxx;
	for(int _v0 = 0; _v0 < 6; _v0 = _v0 + 1) begin
packed_o[_v0] = __2_bits[_v0];
end
	for(int _v0 = 0; _v0 < 6; _v0 = _v0 + 1) begin
packed_o[6 + _v0] = __4_bits[_v0];
end
	for(int _v0 = 0; _v0 < 1; _v0 = _v0 + 1) begin
packed_o[12 + _v0] = __6_bits[_v0];
end
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__2_value = 6'dx;
	__2_value = v1_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__4_value = 6'dx;
	__4_value = v2_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__6_value = 1'bx;
	__6_value = v3_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v1_o = 6'dx;
	v1_o = __8_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v2_o = 6'dx;
	v2_o = __10_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v3_o = 1'bx;
	v3_o = __12_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__8_bits = 6'bxxxxxx;
	__8_bits = _7;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__10_bits = 6'bxxxxxx;
	__10_bits = _9;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__12_bits = 1'bx;
	__12_bits = _11;
end
endmodule

// PixelToComplex #(WIDTH: 64, HEIGHT: 64)
module PixelToComplex__WIDTH64_HEIGHT64(
	input clk,
	input wire PixelToComplex,
	input wire[31:0] origin_r,
	input wire[31:0] origin_i,
	input wire[31:0] step,
	input wire[5:0] px_x,
	input wire[5:0] px_y,
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
wire signed[5:0] _4;
assign _4 = px_x - 6'd32;
/*mux_wire*/ logic __5_fp_fromint;
/*mux_wire*/ logic signed[31:0] __5_a;
wire[31:0] __5_result;
/*mux_wire*/ logic __9_fp_fmadd;
/*mux_wire*/ logic[31:0] __9_a;
/*mux_wire*/ logic[31:0] __9_b;
/*mux_wire*/ logic[31:0] __9_c;
wire[31:0] __9_result;
wire signed[5:0] _15;
assign _15 = px_y - 6'd32;
/*mux_wire*/ logic __16_fp_fromint;
/*mux_wire*/ logic signed[31:0] __16_a;
wire[31:0] __16_result;
/*mux_wire*/ logic __20_fp_fmadd;
/*mux_wire*/ logic[31:0] __20_a;
/*mux_wire*/ logic[31:0] __20_b;
/*mux_wire*/ logic[31:0] __20_c;
wire[31:0] __20_result;
fp_fromint _5(
	.clk(clk),
	.fp_fromint(__5_fp_fromint),
	.a(__5_a),
	.result(__5_result)
);
fp_fmadd _9(
	.clk(clk),
	.fp_fmadd(__9_fp_fmadd),
	.a(__9_a),
	.b(__9_b),
	.c(__9_c),
	.result(__9_result)
);
fp_fromint _16(
	.clk(clk),
	.fp_fromint(__16_fp_fromint),
	.a(__16_a),
	.result(__16_result)
);
fp_fmadd _20(
	.clk(clk),
	.fp_fmadd(__20_fp_fmadd),
	.a(__20_a),
	.b(__20_b),
	.c(__20_c),
	.result(__20_result)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	r = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_PixelToComplex_D22) r = __9_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	i = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_PixelToComplex_D22) i = __20_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__5_fp_fromint = 1'bx;
	__5_fp_fromint = 1'b0;
	if(PixelToComplex) __5_fp_fromint = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__5_a = 32'sdx;
	if(PixelToComplex) __5_a = _4;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__9_fp_fmadd = 1'bx;
	__9_fp_fmadd = 1'b0;
	if(_PixelToComplex_D6) __9_fp_fmadd = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__9_a = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_PixelToComplex_D6) __9_a = step;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__9_b = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_PixelToComplex_D6) __9_b = __5_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__9_c = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_PixelToComplex_D6) __9_c = origin_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__16_fp_fromint = 1'bx;
	__16_fp_fromint = 1'b0;
	if(PixelToComplex) __16_fp_fromint = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__16_a = 32'sdx;
	if(PixelToComplex) __16_a = _15;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__20_fp_fmadd = 1'bx;
	__20_fp_fmadd = 1'b0;
	if(_PixelToComplex_D6) __20_fp_fmadd = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__20_a = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_PixelToComplex_D6) __20_a = step;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__20_b = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_PixelToComplex_D6) __20_b = __16_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__20_c = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_PixelToComplex_D6) __20_c = origin_i;
end
endmodule

// tuple2 #(T1: type int #(FROM: 0, TO: 101), T2: type bool #()[13])
module tuple2__T1typeint__FROM0_TO101__T2typebool____13(
	input clk,
	input wire[6:0] v1_i,
	input wire[12:0] v2_i,
	output /*mux_wire*/ logic[19:0] packed_o,
	input wire[19:0] packed_i,
	output /*mux_wire*/ logic[6:0] v1_o,
	output /*mux_wire*/ logic[12:0] v2_o
);

genvar _g0;
/*mux_wire*/ logic[6:0] __2_value;
wire[6:0] __2_bits;
/*mux_wire*/ logic[12:0] __4_value;
wire[12:0] __4_bits;
wire[6:0] _5;
generate
for(_g0 = 0; _g0 < 7; _g0 = _g0 + 1) begin
assign _5[_g0] = packed_i[_g0];
end
endgenerate
/*mux_wire*/ logic[6:0] __6_bits;
wire[6:0] __6_value;
wire[12:0] _7;
generate
for(_g0 = 0; _g0 < 13; _g0 = _g0 + 1) begin
assign _7[_g0] = packed_i[7 + _g0];
end
endgenerate
/*mux_wire*/ logic[12:0] __8_bits;
wire[12:0] __8_value;
transmute_to_bits__Ttypeint__FROM0_TO101 _2(
	.clk(clk),
	.value(__2_value),
	.bits(__2_bits)
);
transmute_to_bits__Ttypebool____13 _4(
	.clk(clk),
	.value(__4_value),
	.bits(__4_bits)
);
transmute_from_bits__Ttypeint__FROM0_TO101 _6(
	.clk(clk),
	.bits(__6_bits),
	.value(__6_value)
);
transmute_from_bits__Ttypebool____13 _8(
	.clk(clk),
	.bits(__8_bits),
	.value(__8_value)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	packed_o = 20'bxxxxxxxxxxxxxxxxxxxx;
	for(int _v0 = 0; _v0 < 7; _v0 = _v0 + 1) begin
packed_o[_v0] = __2_bits[_v0];
end
	for(int _v0 = 0; _v0 < 13; _v0 = _v0 + 1) begin
packed_o[7 + _v0] = __4_bits[_v0];
end
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__2_value = 7'dx;
	__2_value = v1_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__4_value = 13'bxxxxxxxxxxxxx;
	__4_value = v2_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v1_o = 7'dx;
	v1_o = __6_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	v2_o = 13'bxxxxxxxxxxxxx;
	v2_o = __8_value;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__6_bits = 7'bxxxxxxx;
	__6_bits = _5;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__8_bits = 13'bxxxxxxxxxxxxx;
	__8_bits = _7;
end
endmodule

// unsafe_int_cast #(FROM_I: 1, TO_I: 65, FROM: 0, TO: 64)
module unsafe_int_cast__FROM_I1_TO_I65_FROM0_TO64(
	input clk,
	input wire[6:0] in,
	output /*mux_wire*/ logic[5:0] out
);

	assign out = in;
endmodule

// SlowIterator2 #(InitialT: type float #()[2], ResultT: type int #(FROM: 0, TO: 101), ExtraDataT: type bool #()[13], COMPUTATION_LATENCY: 55, REQUEST_DATA_LATENCY: 22)
module SlowIterator2__InitialTtypefloat____2__ResultTtypeint__FROM0_TO101__ExtraDataTtypebool____13__COMPUTATION_LATENCY55_REQUEST_DATA_LATENCY22(
	input clk,
	output /*mux_wire*/ logic iter,
	output /*mux_wire*/ logic[5:0] iter_sentinel_out,
	input wire done,
	input wire[6:0] result,
	output /*mux_wire*/ logic is_initial,
	output /*mux_wire*/ logic[31:0] initial_data[1:0],
	output /*mux_wire*/ logic may_start,
	input wire start,
	input wire[31:0] initial_data_2[1:0],
	input wire[12:0] extra_data,
	output /*mux_wire*/ logic finish,
	output /*mux_wire*/ logic[6:0] result_data,
	output /*mux_wire*/ logic[12:0] extra_result_data,
	input wire reset
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
/*latency*/ logic _iter_D54; always_ff @(posedge clk) begin _iter_D54 <= _iter_D53; end
/*latency*/ logic _iter_D55; always_ff @(posedge clk) begin _iter_D55 <= _iter_D54; end
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
/*latency*/ logic _reset_D1; always_ff @(posedge clk) begin _reset_D1 <= reset; end
/*latency*/ logic _reset_D2; always_ff @(posedge clk) begin _reset_D2 <= _reset_D1; end
/*latency*/ logic _reset_D3; always_ff @(posedge clk) begin _reset_D3 <= _reset_D2; end
/*latency*/ logic _reset_D4; always_ff @(posedge clk) begin _reset_D4 <= _reset_D3; end
/*latency*/ logic _reset_D5; always_ff @(posedge clk) begin _reset_D5 <= _reset_D4; end
/*latency*/ logic _reset_D6; always_ff @(posedge clk) begin _reset_D6 <= _reset_D5; end
/*latency*/ logic _reset_D7; always_ff @(posedge clk) begin _reset_D7 <= _reset_D6; end
/*latency*/ logic _reset_D8; always_ff @(posedge clk) begin _reset_D8 <= _reset_D7; end
/*latency*/ logic _reset_D9; always_ff @(posedge clk) begin _reset_D9 <= _reset_D8; end
/*latency*/ logic _reset_D10; always_ff @(posedge clk) begin _reset_D10 <= _reset_D9; end
/*latency*/ logic _reset_D11; always_ff @(posedge clk) begin _reset_D11 <= _reset_D10; end
/*latency*/ logic _reset_D12; always_ff @(posedge clk) begin _reset_D12 <= _reset_D11; end
/*latency*/ logic _reset_D13; always_ff @(posedge clk) begin _reset_D13 <= _reset_D12; end
/*latency*/ logic _reset_D14; always_ff @(posedge clk) begin _reset_D14 <= _reset_D13; end
/*latency*/ logic _reset_D15; always_ff @(posedge clk) begin _reset_D15 <= _reset_D14; end
/*latency*/ logic _reset_D16; always_ff @(posedge clk) begin _reset_D16 <= _reset_D15; end
/*latency*/ logic _reset_D17; always_ff @(posedge clk) begin _reset_D17 <= _reset_D16; end
/*latency*/ logic _reset_D18; always_ff @(posedge clk) begin _reset_D18 <= _reset_D17; end
/*latency*/ logic _reset_D19; always_ff @(posedge clk) begin _reset_D19 <= _reset_D18; end
/*latency*/ logic _reset_D20; always_ff @(posedge clk) begin _reset_D20 <= _reset_D19; end
/*latency*/ logic _reset_D21; always_ff @(posedge clk) begin _reset_D21 <= _reset_D20; end
/*latency*/ logic _reset_D22; always_ff @(posedge clk) begin _reset_D22 <= _reset_D21; end
/*mux_wire*/ logic iter_continue;
/*mux_wire*/ logic _iter_is_finished_in;
/*mux_wire*/ logic[6:0] _iter_is_finished_data_in;
/*mux_wire*/ logic __9_in;
wire __9_out;
wire _iter_with_initial_data_out;
wire[31:0] _iter_with_initial_data_data_out[1:0];
/*mux_wire*/ logic[31:0] initial_data_cross[1:0];
/*state*/ logic[12:0] extra_data_stored;
/*mux_wire*/ logic retry_loop;
/*mux_wire*/ logic _iter_with_initial_data_in;
/*mux_wire*/ logic[31:0] _iter_with_initial_data_data_in[1:0];
/*state*/ logic last_reset_was_true;
/*mux_wire*/ logic retry_loop_done;
/*mux_wire*/ logic __25_in;
wire __25_out;
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
LatencyOffset__Ttypebool____OFFSET_55 _9(
	.clk(clk),
	.in(__9_in),
	.out(__9_out)
);
LatencyOffset__Ttypebool____OFFSET_22 _25(
	.clk(clk),
	.in(__25_in),
	.out(__25_out)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter_continue = 1'bx;
	iter_continue = 1'b0;
	if(_iter_D55) if(!done) iter_continue = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter = 1'bx;
	iter = 1'b0;
	if(__9_out) iter = 1'b1;
	if(_iter_with_initial_data_out) iter = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter_sentinel_out = 6'dx;
	if(__9_out) iter_sentinel_out = 1'd0;
	if(_iter_with_initial_data_out) iter_sentinel_out = 1'd0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_is_finished_in = 1'bx;
	_iter_is_finished_in = 1'b0;
	if(_iter_D55) if(done) _iter_is_finished_in = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_is_finished_data_in = 7'dx;
	if(_iter_D55) if(done) _iter_is_finished_data_in = result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	is_initial = 1'bx;
	is_initial = 1'b0;
	if(_iter_with_initial_data_out) is_initial = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	initial_data = {32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	for(int _v0 = 0; _v0 < 2; _v0 = _v0 + 1) begin
if(_iter_with_initial_data_out) initial_data[_v0] = initial_data_cross[_v0];
end
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__9_in = 1'bx;
	__9_in = iter_continue;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	initial_data_cross = {32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
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
	if(!reset) if(_29) may_start = 1'b1;
	if(!reset) if(_iter_is_finished_out) may_start = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_with_initial_data_in = 1'bx;
	_iter_with_initial_data_in = 1'b0;
	if(_may_start_D22) if(start) _iter_with_initial_data_in = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	_iter_with_initial_data_data_in = {32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	for(int _v0 = 0; _v0 < 2; _v0 = _v0 + 1) begin
if(_may_start_D22) if(start) _iter_with_initial_data_data_in[_v0] = initial_data_2[_v0];
end
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	finish = 1'bx;
	finish = 1'b0;
	if(!reset) if(_iter_is_finished_out) finish = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	result_data = 7'dx;
	if(!reset) if(_iter_is_finished_out) result_data = result_data_2;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	extra_result_data = 13'bxxxxxxxxxxxxx;
	if(!_reset_D22) if(__iter_is_finished_out_D22) extra_result_data = extra_data_stored;
end
always_ff @(posedge clk) begin
	if(reset) last_reset_was_true <= 1'b1;
	if(!reset) last_reset_was_true <= 1'b0;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	retry_loop_done = 1'bx;
	retry_loop_done = __25_out;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__25_in = 1'bx;
	__25_in = retry_loop;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	result_data_2 = 7'dx;
	if(!reset) if(_iter_is_finished_out) result_data_2 = _iter_is_finished_data_out;
end
endmodule

// SlowIteratorState #(T: type float #(), MAX_LATENCY: 56, LATENCY: 30)
module SlowIteratorState__Ttypefloat____MAX_LATENCY56_LATENCY30(
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
/*mux_wire*/ logic[31:0] __2_in;
wire[31:0] __2_out;
LatencyOffset__Ttypefloat____OFFSET_30 _2(
	.clk(clk),
	.in(__2_in),
	.out(__2_out)
);
always_ff @(posedge clk) begin
	if(_link_D30) iter_state <= new_1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter_stack_backwards = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	iter_stack_backwards = __2_out;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__2_in = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	__2_in = iter_state;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	old = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(link) if(init) old = initial_data;
	if(link) if(!init) old = iter_stack_backwards;
end
endmodule

// SlowIteratorState #(T: type float #(), MAX_LATENCY: 56, LATENCY: 0)
module SlowIteratorState__Ttypefloat____MAX_LATENCY56_LATENCY0(
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
/*mux_wire*/ logic[31:0] __2_in;
wire[31:0] __2_out;
LatencyOffset__Ttypefloat____OFFSET0 _2(
	.clk(clk),
	.in(__2_in),
	.out(__2_out)
);
always_ff @(posedge clk) begin
	if(link) iter_state <= new_1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter_stack_backwards = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	iter_stack_backwards = __2_out;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__2_in = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	__2_in = iter_state;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	old = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(link) if(init) old = initial_data;
	if(link) if(!init) old = iter_stack_backwards;
end
endmodule

// SlowIteratorState #(T: type int #(FROM: 0, TO: 100), MAX_LATENCY: 56, LATENCY: 0)
module SlowIteratorState__Ttypeint__FROM0_TO100__MAX_LATENCY56_LATENCY0(
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
/*mux_wire*/ logic[6:0] __2_in;
wire[6:0] __2_out;
LatencyOffset__Ttypeint__FROM0_TO100__OFFSET0 _2(
	.clk(clk),
	.in(__2_in),
	.out(__2_out)
);
always_ff @(posedge clk) begin
	if(link) iter_state <= new_1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	iter_stack_backwards = 7'dx;
	iter_stack_backwards = __2_out;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__2_in = 7'dx;
	__2_in = iter_state;
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
	result = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
/*mux_wire*/ logic __3_fp_mul;
/*mux_wire*/ logic[31:0] __3_a;
/*mux_wire*/ logic[31:0] __3_b;
wire[31:0] __3_result;
/*mux_wire*/ logic __8_fp_mul;
/*mux_wire*/ logic[31:0] __8_a;
/*mux_wire*/ logic[31:0] __8_b;
wire[31:0] __8_result;
/*mux_wire*/ logic __11_fp_sub;
/*mux_wire*/ logic[31:0] __11_a;
/*mux_wire*/ logic[31:0] __11_b;
wire[31:0] __11_result;
/*mux_wire*/ logic[31:0] z_ri;
/*mux_wire*/ logic __16_fp_mul;
/*mux_wire*/ logic[31:0] __16_a;
/*mux_wire*/ logic[31:0] __16_b;
wire[31:0] __16_result;
/*mux_wire*/ logic[31:0] z_sq_i;
/*mux_wire*/ logic __21_fp_add;
/*mux_wire*/ logic[31:0] __21_a;
/*mux_wire*/ logic[31:0] __21_b;
wire[31:0] __21_result;
/*mux_wire*/ logic __26_fp_add;
/*mux_wire*/ logic[31:0] __26_a;
/*mux_wire*/ logic[31:0] __26_b;
wire[31:0] __26_result;
/*mux_wire*/ logic __31_fp_add;
/*mux_wire*/ logic[31:0] __31_a;
/*mux_wire*/ logic[31:0] __31_b;
wire[31:0] __31_result;
/*mux_wire*/ logic[31:0] radius_sq;
/*mux_wire*/ logic __36_fp_mul;
/*mux_wire*/ logic[31:0] __36_a;
/*mux_wire*/ logic[31:0] __36_b;
wire[31:0] __36_result;
/*mux_wire*/ logic __41_fp_mul;
/*mux_wire*/ logic[31:0] __41_a;
/*mux_wire*/ logic[31:0] __41_b;
wire[31:0] __41_result;
/*mux_wire*/ logic __44_fp_add;
/*mux_wire*/ logic[31:0] __44_a;
/*mux_wire*/ logic[31:0] __44_b;
wire[31:0] __44_result;
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
/*mux_wire*/ logic __47_fp_fromint;
/*mux_wire*/ logic signed[31:0] __47_a;
wire[31:0] __47_result;
/*mux_wire*/ logic __53_fp_gt;
/*mux_wire*/ logic[31:0] __53_a;
/*mux_wire*/ logic[31:0] __53_b;
wire __53_result;
fp_mul _3(
	.clk(clk),
	.fp_mul(__3_fp_mul),
	.a(__3_a),
	.b(__3_b),
	.result(__3_result)
);
fp_mul _8(
	.clk(clk),
	.fp_mul(__8_fp_mul),
	.a(__8_a),
	.b(__8_b),
	.result(__8_result)
);
fp_sub _11(
	.clk(clk),
	.fp_sub(__11_fp_sub),
	.a(__11_a),
	.b(__11_b),
	.result(__11_result)
);
fp_mul _16(
	.clk(clk),
	.fp_mul(__16_fp_mul),
	.a(__16_a),
	.b(__16_b),
	.result(__16_result)
);
fp_add _21(
	.clk(clk),
	.fp_add(__21_fp_add),
	.a(__21_a),
	.b(__21_b),
	.result(__21_result)
);
fp_add _26(
	.clk(clk),
	.fp_add(__26_fp_add),
	.a(__26_a),
	.b(__26_b),
	.result(__26_result)
);
fp_add _31(
	.clk(clk),
	.fp_add(__31_fp_add),
	.a(__31_a),
	.b(__31_b),
	.result(__31_result)
);
fp_mul _36(
	.clk(clk),
	.fp_mul(__36_fp_mul),
	.a(__36_a),
	.b(__36_b),
	.result(__36_result)
);
fp_mul _41(
	.clk(clk),
	.fp_mul(__41_fp_mul),
	.a(__41_a),
	.b(__41_b),
	.result(__41_result)
);
fp_add _44(
	.clk(clk),
	.fp_add(__44_fp_add),
	.a(__44_a),
	.b(__44_b),
	.result(__44_result)
);
fp_fromint _47(
	.clk(clk),
	.fp_fromint(__47_fp_fromint),
	.a(__47_a),
	.result(__47_result)
);
fp_gt _53(
	.clk(clk),
	.fp_gt(__53_fp_gt),
	.a(__53_a),
	.b(__53_b),
	.result(__53_result)
);
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	new_z_r = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D30) new_z_r = __26_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	new_z_i = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D30) new_z_i = __31_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	is_done = 1'bx;
	if(_MandelbrotStep_D51) is_done = __53_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	z_sq_r = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D19) z_sq_r = __11_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__3_fp_mul = 1'bx;
	__3_fp_mul = 1'b0;
	if(MandelbrotStep) __3_fp_mul = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__3_a = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(MandelbrotStep) __3_a = z_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__3_b = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(MandelbrotStep) __3_b = z_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__8_fp_mul = 1'bx;
	__8_fp_mul = 1'b0;
	if(MandelbrotStep) __8_fp_mul = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__8_a = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(MandelbrotStep) __8_a = z_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__8_b = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(MandelbrotStep) __8_b = z_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__11_fp_sub = 1'bx;
	__11_fp_sub = 1'b0;
	if(_MandelbrotStep_D8) __11_fp_sub = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__11_a = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D8) __11_a = __3_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__11_b = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D8) __11_b = __8_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	z_ri = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D8) z_ri = __16_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__16_fp_mul = 1'bx;
	__16_fp_mul = 1'b0;
	if(MandelbrotStep) __16_fp_mul = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__16_a = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(MandelbrotStep) __16_a = z_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__16_b = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(MandelbrotStep) __16_b = z_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	z_sq_i = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D19) z_sq_i = __21_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__21_fp_add = 1'bx;
	__21_fp_add = 1'b0;
	if(_MandelbrotStep_D8) __21_fp_add = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__21_a = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D8) __21_a = z_ri;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__21_b = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D8) __21_b = z_ri;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__26_fp_add = 1'bx;
	__26_fp_add = 1'b0;
	if(_MandelbrotStep_D19) __26_fp_add = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__26_a = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D19) __26_a = z_sq_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__26_b = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D19) __26_b = c_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__31_fp_add = 1'bx;
	__31_fp_add = 1'b0;
	if(_MandelbrotStep_D19) __31_fp_add = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__31_a = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D19) __31_a = z_sq_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__31_b = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D19) __31_b = c_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	radius_sq = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D49) radius_sq = __44_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__36_fp_mul = 1'bx;
	__36_fp_mul = 1'b0;
	if(_MandelbrotStep_D30) __36_fp_mul = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__36_a = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D30) __36_a = new_z_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__36_b = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D30) __36_b = new_z_r;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__41_fp_mul = 1'bx;
	__41_fp_mul = 1'b0;
	if(_MandelbrotStep_D30) __41_fp_mul = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__41_a = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D30) __41_a = new_z_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__41_b = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D30) __41_b = new_z_i;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__44_fp_add = 1'bx;
	__44_fp_add = 1'b0;
	if(_MandelbrotStep_D38) __44_fp_add = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__44_a = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D38) __44_a = __36_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__44_b = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D38) __44_b = __41_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	four = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D6) four = __47_result;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__47_fp_fromint = 1'bx;
	__47_fp_fromint = 1'b0;
	if(MandelbrotStep) __47_fp_fromint = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__47_a = 32'sdx;
	if(MandelbrotStep) __47_a = 3'd4;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__53_fp_gt = 1'bx;
	__53_fp_gt = 1'b0;
	if(_MandelbrotStep_D49) __53_fp_gt = 1'b1;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__53_a = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D49) __53_a = radius_sq;
end
always_comb begin
	// Combinatorial wires are not defined when not valid. This is just so that the synthesis tool doesn't generate latches
	__53_b = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
	if(_MandelbrotStep_D49) __53_b = _four_D49;
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

// RawFIFO #(WIDTH: 20, DEPTH: 64, MAY_PUSH_LATENCY: 10)
// Provided externally
// module RawFIFO__WIDTH20_DEPTH64_MAY_PUSH_LATENCY10(
// 	input clk,
// 	input wire rst,
// 	output /*mux_wire*/ logic may_push,
// 	input wire push,
// 	input wire[19:0] push_data,
// 	output /*mux_wire*/ logic may_pop,
// 	input wire pop,
// 	output /*mux_wire*/ logic[19:0] pop_data
// );
// transmute_to_bits #(T: type bool #()[20])
module transmute_to_bits__Ttypebool____20(
	input clk,
	input wire[19:0] value,
	output /*mux_wire*/ logic[19:0] bits
);

assign bits = value;
endmodule

// transmute_from_bits #(T: type bool #()[20])
module transmute_from_bits__Ttypebool____20(
	input clk,
	input wire[19:0] bits,
	output /*mux_wire*/ logic[19:0] value
);

assign value = bits;
endmodule

// transmute_to_bits #(T: type int #(FROM: 0, TO: 64))
module transmute_to_bits__Ttypeint__FROM0_TO64(
	input clk,
	input wire[5:0] value,
	output /*mux_wire*/ logic[5:0] bits
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

// transmute_from_bits #(T: type int #(FROM: 0, TO: 64))
module transmute_from_bits__Ttypeint__FROM0_TO64(
	input clk,
	input wire[5:0] bits,
	output /*mux_wire*/ logic[5:0] value
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
	result = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
	_ip_s_axis_a_tdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
	_ip_s_axis_b_tdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
	_ip_s_axis_c_tdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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

// transmute_to_bits #(T: type bool #()[13])
module transmute_to_bits__Ttypebool____13(
	input clk,
	input wire[12:0] value,
	output /*mux_wire*/ logic[12:0] bits
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

// transmute_from_bits #(T: type bool #()[13])
module transmute_from_bits__Ttypebool____13(
	input clk,
	input wire[12:0] bits,
	output /*mux_wire*/ logic[12:0] value
);

assign value = bits;
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
	_cross_data_in = {32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
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
	data_out = {32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx, 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx};
	for(int _v0 = 0; _v0 < 2; _v0 = _v0 + 1) begin
if(_cross_valid_out) data_out[_v0] = _cross_data_out[_v0];
end
end
endmodule

// LatencyOffset #(T: type bool #(), OFFSET: -55)
module LatencyOffset__Ttypebool____OFFSET_55(
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
	result = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
	_ip_s_axis_a_tdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
	_ip_s_axis_b_tdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
	result = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
	_ip_s_axis_a_tdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
	_ip_s_axis_b_tdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
	result = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
	_ip_s_axis_a_tdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
	_ip_s_axis_b_tdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
	_ip_s_axis_a_tdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
	_ip_s_axis_b_tdata = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
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
