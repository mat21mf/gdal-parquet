
GDAL_VERSION="3.9.0"
wget -c -q https://download.osgeo.org/gdal/"${GDAL_VERSION}"/gdal-"${GDAL_VERSION}".tar.gz -O gdal.tar.gz
if [[ ! -d gdal ]] ; then mkdir gdal ; fi
tar xzf gdal.tar.gz -C gdal --strip-components=1
cd gdal
mkdir build && cd build
# cmake .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=/usr   -DBUILD_JAVA_BINDINGS:BOOL=OFF -DBUILD_CSHARP_BINDINGS:BOOL=OFF
cmake -DCMAKE_BUILD_TYPE=Release ..
# sudo cmake --build . --parallel "$CMAKE_CORES" --target install
sudo cmake --build . --parallel 2 --target install
sudo ldconfig
cd ../../
