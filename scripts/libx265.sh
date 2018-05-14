#!/bin/bash

#mkdir $HOME/install
cd $HOME/ffmpeg/install
git clone https://github.com/videolan/x265.git
cd x265/build/linux
./make-Makefiles.bash
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
make
sudo make install 
make clean
