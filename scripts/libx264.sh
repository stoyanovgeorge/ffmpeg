#!/bin/bash

cd $HOME/ffmpeg/downloads
git -C x264 pull 2> /dev/null || git clone --depth 1 https://code.videolan.org/videolan/x264.git
cd x264 
./configure --enable-static --enable-pic
make -j$cpu_cnt
sudo make install
make distclean
