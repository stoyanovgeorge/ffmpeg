#!/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone git://git.opus-codec.org/opus.git
cd $HOME/install/opus
./autogen.sh
./configure --enable-static --enable-shared --disable-shared
make
sudo make install
make distclean
sudo ldconfig
