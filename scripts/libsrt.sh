#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/Haivision/srt.git
cd srt 
./configure --enable-static
make
sudo make install
make distclean
sudo ldconfig
