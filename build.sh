#!/bin/bash

mkdir -p /bitcoin/build
cd /bitcoin/build
../autogen.sh

#CXXFLAGS="-g -ggdb3"
../configure --without-bdb --without-gui --enable-suppress-external-warnings CXXFLAGS="-O0 -ggdb3" CFLAGS="-O0 -g"
make -j -9
make check -j 9

