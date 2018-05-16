#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/uclouvain/openjpeg.git
mkdir -p openjpeg/openjpeg_build
cd openjpeg/opengpeg_build
cmake -G "Unix Makefiles" -DENABLE_SHARED=off ..
make -j$cpu_cnt
sudo make install
sudo ldconfig
make clean
