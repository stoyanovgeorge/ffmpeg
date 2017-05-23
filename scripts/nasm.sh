#!/bin/bash

mkdir $HOME/install
cd $HOME/install
git clone https://github.com/letolabs/nasm.git
cd $HOME/install/nasm
sh autogen.sh
sh configure
make
sudo make install
