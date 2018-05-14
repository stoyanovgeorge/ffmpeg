#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/mozilla/aom.git
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
mkdir -p aom/aom_build
cd aom/aom_build
cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX="$HOME/ffmpeg_build" -DENABLE_SHARED=off -DENABLE_NASM=on ../aom
PATH="$HOME/ffmpeg/bin:$PATH"
make
sudo make install
make distclean
sudo ldconfig
