#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/cyrillos/nasm.git 
cd nasm
sh autogen.sh
sh configure 
make -j$cpu_cnt
sudo make install
