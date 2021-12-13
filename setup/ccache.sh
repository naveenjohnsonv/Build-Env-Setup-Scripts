#!/usr/bin/env bash

cd /tmp || exit 1
git clone git://github.com/ccache/ccache.git
cd ccache || exit 1
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DZSTD_FROM_INTERNET=ON ..
make -j"$(nproc)"
sudo make install
cd ..
rm -rf "${PWD}"
cd - || exit 1
