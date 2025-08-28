#!/usr/bin/env python
import cocotb
import random
from cocotb.triggers import Timer, RisingEdge, FallingEdge

async def clock(dut, cycles):
    for cycle in range(cycles):
        dut.clk.value = 0
        await Timer(500, units="ps")
        dut.clk.value = 1
        await Timer(500, units="ps")

async def reset(dut):
    dut.nreset.value = False
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    await RisingEdge(dut.clk)
    dut.nreset.value = True

async def stream_read(dut, name):
    valid = dut._id(name+"tvalid", extended=False)
    ready = dut._id(name+"tready", extended=False)
    data = dut._id(name+"tdata", extended=False)
    keep = dut._id(name+"tkeep", extended=False)
    last = dut._id(name+"tlast", extended=False)
    ready.value = False

    ready.value = True
    while True:
        await RisingEdge(dut.clk)
        if valid.value:
            print(f"{int(data.value):#0{130}x} {int(keep.value):#0{18}x} {int(last.value)} {internet_checksum(int(data.value)):#0{6}x}")
    ready.value = False

async def stream_write(dut, name, values):
    valid = dut._id(name+"tvalid", extended=False)
    ready = dut._id(name+"tready", extended=False)
    data = dut._id(name+"tdata", extended=False)
    keep = dut._id(name+"tkeep", extended=False)
    last = dut._id(name+"tlast", extended=False)
    valid.value = False

    counter = 0
    for i in values:
        counter += 1
        data.value = i
        keep.value = -1
        last.value = counter == len(values)
        valid.value = True
        while True:
            await RisingEdge(dut.clk)
            if ready.value:
                break
    valid.value = False

@cocotb.test()
async def test(dut):
    dut.clk = 0
    #dut.nreset.value = 0
    #dut.ctrl_arvalid.value = 0
    #dut.ctrl_araddr.value = 0
    #dut.ctrl_arprot.value = 0
    #dut.ctrl_rready.value = 0
    #dut.ctrl_awvalid.value = 0
    #dut.ctrl_awaddr.value = 0
    #dut.ctrl_awprot.value = 0
    #dut.ctrl_wvalid.value = 0
    #dut.ctrl_wdata.value = 0
    #dut.ctrl_wstrb.value = 0
    #dut.ctrl_bready.value = 0
    #dut.mem_awready.value = 0
    #dut.mem_wready.value = 0
    #dut.mem_bvalid.value = 0
    #dut.mem_bresp.value = 0
    clk = cocotb.start_soon(clock(dut, 4000))
    #await reset(dut)
    await clk
    print("done")
