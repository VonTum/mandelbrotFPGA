/home/lennart/Desktop/sus-compiler/target/release/sus_compiler\
    mandelbrot.sus float.sus /home/lennart/Desktop/sus-compiler/platform/xilinx/xpm.sus\
    --debug print-abstract-pre-typecheck\
    --debug print-abstract\
    --debug print-concrete\
    --debug-whitelist SlowIterator2\
    --debug-whitelist SlowIteratorState\
    --debug-whitelist ActionCrossDomain\
    --standalone WholeMandelbrotComputer\
    --standalone-file mandelbrotFPGA.srcs/sources_1/new/sus_codegen.sv
