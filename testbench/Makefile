SIM ?= icarus
TOPLEVEL_LANG ?= verilog
WAVES=1
VERILOG_SOURCES += $(PWD)/../verilog_output/TapascoTop.sv
VERILOG_SOURCES += $(PWD)/../verilog_output/WholeMandelbrotComputerDummy.sv
VERILOG_SOURCES += $(PWD)/../verilog_output/Axi4LiteSlave.sv
VERILOG_SOURCES += $(PWD)/../verilog_output/Axi4Master.sv
VERILOG_SOURCES += $(PWD)/../verilog_output/Repeat.sv
VERILOG_SOURCES += $(PWD)/../verilog_output/transmute_from_bits.sv
VERILOG_SOURCES += $(PWD)/../verilog_output/transmute_to_bits.sv
VERILOG_SOURCES += $(PWD)/../verilog_output/unsafe_int_cast.sv
TOPLEVEL = TapascoTop
MODULE = test

# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim
