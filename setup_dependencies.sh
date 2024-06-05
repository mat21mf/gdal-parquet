## Derived from osgeo/gdal
sudo apt-get update
sudo apt-get install -y --fix-missing --no-install-recommends \
    ant \
    autoconf \
    automake \
    bash-completion \
    build-essential \
    ca-certificates \
    clang-format \
    clang-tidy \
    cmake \
    curl \
    doxygen \
    git \
    libarchive-dev \
    libarmadillo-dev \
    libblosc-dev \
    libboost-dev \
    libbz2-dev \
    libcairo2-dev \
    libclc-15-dev \
    libcfitsio-dev \
    libcrypto++-dev \
    libcurl4-openssl-dev \
    libdeflate-dev \
    libexpat-dev \
    libfreexl-dev \
    libfyba-dev \
    libgif-dev \
    libheif-dev \
    libhdf4-alt-dev \
    libhdf5-serial-dev \
    libjpeg-dev \
    libkml-dev \
    liblcms2-2 \
    liblerc-dev \
    liblz4-dev \
    liblzma-dev \
    libmysqlclient-dev \
    libnetcdf-dev \
    libogdi-dev \
    libopenexr-dev \
    libopenjp2-7-dev \
    libpcre3-dev \
    libpng-dev \
    libpq-dev \
    libpoppler-dev \
    libpoppler-private-dev \
    libqhull-dev \
    libsqlite3-dev \
    libssl-dev \
    libtiff5-dev \
    libudunits2-dev \
    libwebp-dev \
    libxerces-c-dev \
    libxml2-dev \
    lsb-release \
    make \
    mdbtools-dev \
    pkg-config \
    python3-dev \
    python3-numpy \
    python3-setuptools \
    sqlite3 \
    swig \
    tar \
    unixodbc-dev \
    unzip \
    wget \
    zlib1g-dev \
    zip

## geoparquet support
wget -c https://apache.jfrog.io/artifactory/arrow/"$(lsb_release --id --short | tr '[:upper:]' '[:lower:]')"/apache-arrow-apt-source-latest-"$(lsb_release --codename --short)".deb
sudo gdebi -n ./apache-arrow-apt-source-latest-"$(lsb_release --codename --short)".deb
sudo apt-get update && sudo apt-get install --no-install-recommends -y -V libarrow-dev libparquet-dev libarrow-dataset-dev
