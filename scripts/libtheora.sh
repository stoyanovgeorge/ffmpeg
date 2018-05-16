#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/Distrotech/libtheora.git
cd libtheora
./configure --enable-static 
make -j$cpu_cnt
sudo make install
make distclean
sudo ldconfig
