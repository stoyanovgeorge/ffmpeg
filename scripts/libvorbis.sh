#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/gypified/libvorbis.git
cd libvorbis
./configure --enable-static 
make -j$cpu_cnt
sudo make install
make distclean
sudo ldconfig
