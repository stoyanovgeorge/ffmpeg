#!/bin/bash

mkdir $HOME/install
cd $HOME/install
git clone https://github.com/soundcloud/ogg.git
cd $HOME/install/ogg
./autogen.sh --enable-static
make
sudo make install
make distclean
