#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/webmproject/libvpx.git 
cd libvpx
./configure --enable-static 
make -j$cpu_cnt
sudo make install
make distclean
