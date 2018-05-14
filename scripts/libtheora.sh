#!/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone https://github.com/Distrotech/libtheora.git
cd $HOME/install/libtheora
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
./configure --enable-static --prefix="$HOME/ffmpeg/install" --bindir="$HOME/ffmpeg/bin"
make
sudo make install
make distclean
sudo ldconfig
