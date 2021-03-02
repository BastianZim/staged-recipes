#!/bin/sh

mkdir build
cd build

cmake .. \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_PREFIX_PATH=$PREFIX -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_INSTALL_LIBDIR=lib \
      -DBUILD_TESTING=ON \
      -DBUILD_EXAMPLES=ON

cmake --build . --config Release
cmake --build . --config Release --target install
ctest --output-on-failure -C Release
