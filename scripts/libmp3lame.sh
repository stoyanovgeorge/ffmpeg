#!/bin/bash

cd $HOME/ffmpeg/install
git clone https://github.com/gypified/libmp3lame.git
cd libmp3lame
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
./configure --enable-static --prefix="$HOME/ffmpeg/install" --bindir="$HOME/ffmpeg/bin" --enable-pic --disable-shared --enable-nasm
make
sudo make install
make distclean
sudo ldconfig
