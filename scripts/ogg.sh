#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/soundcloud/ogg.git
cd ogg
./autogen.sh --enable-static
make -j$cpu_cnt
sudo make install
make distclean
