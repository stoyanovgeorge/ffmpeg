#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/gypified/libvorbis.git
cd libvorbis
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
make
sudo make install
make distclean
sudo ldconfig
