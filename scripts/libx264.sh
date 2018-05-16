#!/bin/bash

cd $HOME/ffmpeg/downloads
git -C x264 pull 2> /dev/null || git clone --depth 1 https://git.videolan.org/git/x264
cd x264 
./configure --enable-static --enable-pic
make -j$cpu_cnt
sudo ake install
make distclean
