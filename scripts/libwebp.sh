#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/webmproject/libwebp.git
cd libwebp
./autogen.sh
./configure --enable-static 
make -j$cpu_cnt 
sudo make install
make distclean 
