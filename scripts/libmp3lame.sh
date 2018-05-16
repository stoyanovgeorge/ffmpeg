#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/gypified/libmp3lame.git
cd libmp3lame
./configure --enable-static --enable-pic --disable-shared --enable-nasm
make -j$cpu_cnt
sudo make install
make distclean
sudo ldconfig
