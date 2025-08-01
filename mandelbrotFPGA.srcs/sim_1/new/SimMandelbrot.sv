`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 07:36:50 AM
// Design Name: 
// Module Name: SimMandelbrot
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SimMandelbrot();

logic clk = 1;
logic rst;

always #5 clk = ~clk;

logic start;
logic[31:0] r;
logic[31:0] i;
logic request_new_point;

initial begin
    #20
    rst <= 1;
    start <= 0;
    #801
    @(posedge clk)
    rst <= 0;
    #100
    wait(request_new_point)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    start <= 1;
    r[31:0] <= 32'h3f333333; // 0.7
    i[31:0] <= 32'h3f666666; // 0.9
    @(posedge clk)
    start <= 0;
    r[31:0] <= 'x;
    i[31:0] <= 'x;
    wait(request_new_point)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    start <= 1;
    r[31:0] <= 32'hbf333333; // -0.7
    i[31:0] <= 32'hbf666666; // -0.9
    @(posedge clk)
    start <= 0;
    r[31:0] <= 'x;
    i[31:0] <= 'x;
    wait(request_new_point)
    #100
    $finish();
end



logic done;
logic[9:0] iteration_count;

MandelbrotSlowIter2 mandel(
	.clk(clk),
	.rst(rst),
	.request_new_point(request_new_point),
	.start(start),
	.r(r),
	.i(i),
	.done(done),
	.iteration_count(iteration_count)
);

endmodule

module SimWholeMandelbrot();

logic clk = 1;
logic rst;

always #5 clk = ~clk;

logic may_start;

logic px_out;
logic[5:0] x_2;
logic[5:0] y_2;
logic[6:0] iter_count;
logic last;

logic[6:0] screen[64][64];
logic[6:0] screenSideways[64][64];

logic set_reg;
logic[2:0] id;
logic[31:0] value;

WholeMandelbrotComputer comp(
	.clk(clk),
	.rst(rst),
	.may_start(may_start),
	.set_reg(set_reg),
	.id(id),
	.value(value),
    .px_out(px_out),
    .x_2(x_2),
    .y_2(y_2),
    .iter_count(iter_count),
    .last(last)
);

always @(posedge clk) begin
    if(px_out) begin
        screen[x_2][y_2] = iter_count;
        screenSideways[y_2][x_2] = iter_count;
    end
end

`define START_REG 0
`define ORIGIN_R_REG 2
`define ORIGIN_I_REG 3
`define SCALE_REG 4

initial begin
    #20
    rst <= 1;
    set_reg <= 0;
    #801
    @(posedge clk)
    rst <= 0;
    #100
    wait(may_start)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    set_reg <= 1;
    id <= `ORIGIN_R_REG;
    value <= 32'h0; // 0.0
    @(posedge clk)
    set_reg <= 1;
    id <= `ORIGIN_I_REG;
    value <= 32'h0; // 0.0
    @(posedge clk)
    set_reg <= 1;
    id <= `SCALE_REG;
    value <= 32'h3d800000; // 0.0625
    @(posedge clk)
    set_reg <= 1;
    id <= `START_REG;
    value <= 'x; // 0.0625
    @(posedge clk)
    set_reg <= 0;
end

endmodule




module SimWholeMandelbrotWithFIFO();

logic clk = 1;
logic rst = 0;

always #5 clk = ~clk;

logic may_start;

logic[31:0] addr;
logic[6:0] iter_count;
logic done;

logic[6:0] screen[64 * 64];

logic set_reg;
logic[2:0] id;
logic[31:0] value;

logic may_read_px;
logic[6:0] iter_count;
logic[31:0] addr;
logic done;

logic try_read;
wire read_px = try_read && may_read_px;

always begin
    #100
    @(posedge clk)
    try_read <= 1;
    #100
    @(posedge clk)
    try_read <= 0;
    #1000;
end

WholeMandelbrotComputer comp(
	.clk(clk),
	.rst(rst),
	.may_start(may_start),
	.set_reg(set_reg),
	.id(id),
	.value(value),
    .may_read_px(may_read_px),
    .read_px(read_px),
    .addr(addr),
    .iter_count(iter_count),
    .done(done)
);

always @(posedge clk) begin
    if(read_px) begin
        screen[addr] <= iter_count;
    end
end

`define START_REG 0
`define ORIGIN_R_REG 2
`define ORIGIN_I_REG 3
`define SCALE_REG 4

initial begin
    #20
    rst <= 1;
    set_reg <= 0;
    #801
    @(posedge clk)
    rst <= 0;
    #100
    wait(may_start)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    set_reg <= 1;
    id <= `ORIGIN_R_REG;
    value <= 32'h0; // 0.0
    @(posedge clk)
    set_reg <= 1;
    id <= `ORIGIN_I_REG;
    value <= 32'h0; // 0.0
    @(posedge clk)
    set_reg <= 1;
    id <= `SCALE_REG;
    value <= 32'h3d800000; // 0.0625
    @(posedge clk)
    set_reg <= 1;
    id <= `START_REG;
    value <= 'x; // 0.0625
    @(posedge clk)
    set_reg <= 0;
end

endmodule

