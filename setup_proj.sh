
PROJ_VERSION="9.4.0"
wget -c -q https://download.osgeo.org/proj/proj-"${PROJ_VERSION}".tar.gz -O proj.tar.gz
if [[ ! -d proj ]] ; then mkdir proj ; fi
tar xzf proj.tar.gz -C proj --strip-components=1
cd proj
mkdir build && cd build
cmake ..
# sudo cmake --build . --parallel "$CMAKE_CORES" --target install
sudo cmake --build . --parallel 2 --target install
sudo ldconfig
cd ../../
