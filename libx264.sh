#!/bin/bash

mkdir $HOME/install
cd $HOME/install
git clone https://github.com/mirror/x264.git
cd $HOME/install/x264
./configure --enable-static --disable-opencl
make
sudo make install
make distclean
