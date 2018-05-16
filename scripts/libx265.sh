#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/videolan/x265.git
cd x265/build/linux
./make-Makefiles.bash
make -j$cpu_cnt
sudo make install 
make clean
