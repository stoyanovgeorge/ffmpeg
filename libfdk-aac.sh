#!/bin/bash

mkdir $HOME/install
cd $HOME/install/
git clone https://github.com/mstorsjo/fdk-aac.git
cd $HOME/install/fdk-aac
./autogen.sh
./configure --enable-share --enable-static
make
sudo make install
make distclean
