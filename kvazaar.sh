#!/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone https://github.com/ultravideo/kvazaar.git
cd $HOME/install/kvazaar
./autogen.sh
./configure --enable-static
make
sudo make install
make distclean
