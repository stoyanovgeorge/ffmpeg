#!/bin/bash

#mkdir $HOME/install
cd $HOME/ffmpeg/install
git clone https://github.com/webmproject/libvpx.git 
cd libvpx
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
./configure --enable-static --prefix="$HOME/ffmpeg/install" --bindir="$HOME/ffmpeg/bin"
make
sudo make install
make distclean
