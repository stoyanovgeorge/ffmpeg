#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/gypified/libvorbis.git
cd libvorbis
./configure --enable-static PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
PATH="$HOME/ffmpeg/bin:$PATH"
make
sudo make install
make distclean
sudo ldconfig
