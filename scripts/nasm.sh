#!/bin/bash

cd $HOME/ffmpeg/install
git clone https://github.com/cyrillos/nasm.git 
cd nasm
sh autogen.sh
sh configure
make
sudo make install
