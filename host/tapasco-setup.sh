export TAPASCO_HOME="/home/lennart/Desktop/tapasco/tapasco"
echo Using TaPaSCo from /home/lennart/Desktop/tapasco/tapasco
export TAPASCO_HOME_TOOLFLOW="/home/lennart/Desktop/tapasco/tapasco/toolflow"
export TAPASCO_HOME_TCL="/home/lennart/Desktop/tapasco/tapasco/toolflow/vivado"
export TAPASCO_HOME_RUNTIME="/home/lennart/Desktop/tapasco/tapasco/runtime"
export TAPASCO_WORK_DIR="/home/lennart/Desktop/Projects/mandelbrotFPGA/host"
export PATH="/home/lennart/Desktop/tapasco/tapasco/toolflow/bin:/home/lennart/Desktop/tapasco/tapasco/runtime/bin:/home/lennart/Desktop/Projects/mandelbrotFPGA/host/build/install/usr/local/bin/:/home/lennart/Desktop/Projects/mandelbrotFPGA/host/build/install/usr/local/share/Tapasco/bin:/home/lennart/Desktop/tapasco/tapasco/toolflow/scala/build/install/tapasco/bin:$PATH"
export MANPATH=$MANPATH:/home/lennart/Desktop/tapasco/tapasco/man
export MYVIVADO=$MYVIVADO:/home/lennart/Desktop/tapasco/tapasco/toolflow/vivado/common
export XILINX_PATH=$XILINX_PATH:/home/lennart/Desktop/tapasco/tapasco/toolflow/vivado/common
export Tapasco_DIR=/home/lennart/Desktop/Projects/mandelbrotFPGA/host/build/install/usr/local/share/Tapasco/cmake/
if echo "${PATH}" | grep --quiet "cmake-3.3.2";
then
    if ! command -v python3 > /dev/null;
    then
        echo "Could not remove old CMake version from Path. Please install python3"
    else
        echo "Removing old CMake version 3.3.2 distributed with Vivado from Path"
        export PATH=`python3 -c "import re; print(re.sub(r'[:][^:]*?cmake[-]3[.]3[.]2.*?[:]', ':', '${PATH}'));"`
    fi
fi
