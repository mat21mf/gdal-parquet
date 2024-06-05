
## tiledb
GCC_ARCH="$(uname -m)"
export TILEDB_VERSION=2.23.0
sudo apt-get update -y &&
    DEBIAN_FRONTEND=noninteractive sudo apt-get install --no-install-recommends -y \
        libspdlog-dev
    if [[ ! -d tiledb ]] ; then mkdir tiledb ; fi
    wget -c -q https://github.com/TileDB-Inc/TileDB/archive/${TILEDB_VERSION}.tar.gz -O - \
      | tar xz -C tiledb --strip-components=1
    cd tiledb &&
      if [[ ! -d build_cmake ]]; then
        mkdir build_cmake && cd build_cmake
      else
        cd build_cmake
      fi
    ../bootstrap --prefix=/usr --disable-werror &&
    # make "-j$(nproc)" &&
    make "-j2" &&
    sudo make install-tiledb DESTDIR="/build_thirdparty" &&
    sudo make install-tiledb &&
    cd ../.. &&
    rm -rf tiledb &&
    for i in /build_thirdparty/usr/lib/"${GCC_ARCH}"-linux-gnu/*; do strip -s "$i" 2>/dev/null || /bin/true; done &&
    for i in /build_thirdparty/usr/bin/*; do strip -s "$i" 2>/dev/null || /bin/true; done
