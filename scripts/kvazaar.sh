#!/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone https://github.com/ultravideo/kvazaar.git
cd $HOME/install/kvazaar
./autogen.sh
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
./configure --enable-static --prefix="$HOME/ffmpeg/install" --bindir="$HOME/ffmpeg/bin" --enable-pic
make
sudo make install
make distclean
