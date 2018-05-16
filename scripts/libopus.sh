#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone git://git.opus-codec.org/opus.git
cd opus
./autogen.sh
make -j$cpu_cnt
sudo make install
make distclean
sudo ldconfig
