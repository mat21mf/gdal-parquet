# unset CONDA_EXE
# unset CONDA_PYTHON_EXE
# unset CONDA_PREFIX
# unset LD_LIBRARY_PATH
# LD_LIBRARY_PATH=/usr/local/lib:/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH
# unset PATH
# export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH

cd geos*
mkdir build
cd build
cmake ..
sudo cmake --build . --target install
# sudo cmake --build . --parallel "$CMAKE_CORES" --target install
sudo ldconfig
cd ../../
cd ./build_local
