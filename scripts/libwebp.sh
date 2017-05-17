#!/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone https://github.com/webmproject/libwebp.git
cd $HOME/install/libwebp
./autogen.sh
./configure --enable-static
make 
sudo make install
make distclean 
