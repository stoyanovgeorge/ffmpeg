#!/bin/bash

#mkdir $HOME/install
cd $HOME/ffmpeg/install
git clone https://github.com/soundcloud/ogg.git
cd ogg
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
./autogen.sh --enable-static
make
sudo make install
make distclean
