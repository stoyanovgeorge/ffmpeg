#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/mirror/x264.git
cd x264
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
./configure --enable-static --prefix="$HOME/ffmpeg/install" --bindir="$HOME/ffmpeg/bin"
make
sudo make install
make distclean
