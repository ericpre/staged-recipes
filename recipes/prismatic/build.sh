#!/bin/sh



mkdir build && cd build 

cmake -DPRISMATIC_ENABLE_GUI=1 \
      -DPRISMATIC_ENABLE_CLI=1 \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      ../ 

make

make install
