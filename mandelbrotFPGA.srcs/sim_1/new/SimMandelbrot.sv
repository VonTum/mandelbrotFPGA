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

logic start;
logic may_start;

logic[31:0] origin_r = 32'h3f333333; // 0.7
logic[31:0] origin_i = 32'h3f666666; // 0.9
logic[31:0] scale = 32'h3dcccccd; // 0.1

logic px_out;
logic[3:0] x_2;
logic[3:0] y_2;
logic[9:0] iter_count;
logic last;

logic[9:0] screen[16][12];

WholeMandelbrotComputer comp(
	.clk(clk),
	.rst(rst),
	.may_start(may_start),
	.start(start),
	.origin_r(origin_r),
	.origin_i(origin_i),
	.scale(scale),
    .px_out(px_out),
    .x_2(x_2),
    .y_2(y_2),
    .iter_count(iter_count),
    .last(last)
);

always @(posedge clk) begin
    if(px_out) begin
        screen[x_2][y_2] = iter_count;
    end
end

initial begin
    #20
    rst <= 1;
    start <= 0;
    #801
    @(posedge clk)
    rst <= 0;
    #100
    wait(may_start)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    @(posedge clk)
    start <= 1;
    @(posedge clk)
    start <= 0;
end

endmodule
