#!/bin/bash

mkdir $HOME/install
cd $HOME/install
git clone https://github.com/gypified/libmp3lame.git
cd $HOME/install/libmp3lame
./configure --enable-static --enable-nasm --disable-shared 
make
sudo make install
make distclean
