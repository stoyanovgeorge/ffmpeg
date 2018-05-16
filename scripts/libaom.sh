#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/mozilla/aom.git
mkdir -p aom/aom_build
cd aom/aom_build
cmake -G "Unix Makefiles" -DENABLE_SHARED=off -DENABLE_NASM=on ../
make -j$cpu_cnt
sudo make install
make distclean
sudo ldconfig
