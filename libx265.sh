#!/bin/bash

mkdir $HOME/install
cd $HOME/install
git clone https://github.com/videolan/x265.git
cd $HOME/install/x265/build/linux
./make-Makefiles.bash
make
sudo make install 
make clean
