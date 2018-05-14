#!/bin/bash

cd $HOME/ffmpeg/install
git clone https://github.com/uclouvain/openjpeg.git
mkdir -p openjpeg/openjpeg_build
cd openjpeg/opengpeg_build
cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX="$HOME/ffmpeg/install" -DENABLE_SHARED=off ..
make
sudo make install
sudo ldconfig
make clean
