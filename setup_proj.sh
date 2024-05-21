
# PROJ_VERSION=${PROJ_VERSION:-"latest"}

# # install proj
# # https://download.osgeo.org/proj/
# if [ "$PROJ_VERSION" = "latest" ]; then
#     PROJ_DL_URL=$(url_latest_gh_released_asset "OSGeo/PROJ")
# else
#     PROJ_DL_URL="https://download.osgeo.org/proj/proj-${PROJ_VERSION}.tar.gz"
# fi

# # wget -c "$PROJ_DL_URL" -O proj.tar.gz
# wget -c https://download.osgeo.org/proj/proj-9.4.0.tar.gz -O proj.tar.gz
# tar zxvf proj.tar.gz
# # rm proj.tar.gz
cd proj-*
mkdir build
cd build
cmake ..
# sudo cmake --build . --parallel "$CMAKE_CORES" --target install
sudo cmake --build . --parallel 2 --target install
sudo ldconfig
cd ../../
cd ./build_local
