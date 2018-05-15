#!/bin/bash

cd $HOME/ffmpeg/downloads
git -C x264 pull 2> /dev/null || git clone --depth 1 https://git.videolan.org/git/x264
cd x264 
PATH="$HOME/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig" 
./configure --prefix="$HOME/ffmpeg" --bindir="$HOME/ffmpeg/bin" --enable-static --enable-pic && PATH="$HOME/ffmpeg/bin:$PATH" 
make 
make install
make distclean
