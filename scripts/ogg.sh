#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/soundcloud/ogg.git
cd ogg
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
./autogen.sh --enable-static
PATH="$HOME/ffmpeg/bin:$PATH"
make
sudo make install
make distclean
