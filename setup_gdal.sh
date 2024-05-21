
# # install gdal
# # https://download.osgeo.org/gdal/
# if [ "$GDAL_VERSION" = "latest" ]; then
#     GDAL_DL_URL=$(url_latest_gh_released_asset "OSGeo/gdal")
# else
#     GDAL_DL_URL="https://download.osgeo.org/gdal/${GDAL_VERSION}/gdal-${GDAL_VERSION}.tar.gz"
# fi

# # wget -c "$GDAL_DL_URL" -O gdal.tar.gz
# wget -c https://download.osgeo.org/gdal/3.9.0/gdal-3.9.0.tar.gz -O gdal.tar.gz
# tar -xf gdal.tar.gz
# # rm gdal*tar.gz
cd gdal-*
mkdir build
cd build
# cmake .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=/usr   -DBUILD_JAVA_BINDINGS:BOOL=OFF -DBUILD_CSHARP_BINDINGS:BOOL=OFF
cmake -DCMAKE_BUILD_TYPE=Release ..
# sudo cmake --build . --parallel "$CMAKE_CORES" --target install
sudo cmake --build . --parallel 4 --target install
sudo ldconfig
cd ../../
cd ./build_local
