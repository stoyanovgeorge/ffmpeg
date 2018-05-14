#!/bin/bash

cd $HOME/ffmpeg/install
git clone https://github.com/Haivision/srt.git
cd srt 
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
PATH="$HOME/ffmpeg/bin:$PATH"
make
sudo make install
make distclean
sudo ldconfig
