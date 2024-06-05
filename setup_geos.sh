
GEOS_VERSION="3.9.5"
wget -c -q https://download.osgeo.org/geos/geos-"${GEOS_VERSION}".tar.bz2 -O geos.tar.bz2
if [[ ! -d geos ]] ; then mkdir geos ; fi
tar xjf geos.tar.bz2 -C geos --strip-components=1
cd geos
mkdir build && cd build
cmake ..
# sudo cmake --build . --parallel "$CMAKE_CORES" --target install
sudo cmake --build . --parallel 2 --target install
sudo ldconfig
cd ../../
