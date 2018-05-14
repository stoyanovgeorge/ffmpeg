#!/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/cyrillos/nasm.git 
cd nasm
sh autogen.sh
PATH="$HOME/ffmpeg/bin:$PATH"
sh configure --prefix="$HOME/ffmpeg/" --bindir="$HOME/ffmpeg/bin"
make
sudo make install
