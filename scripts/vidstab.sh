#/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/georgmartius/vid.stab.git
cd vid.stab
cmake .
make -j$cpu_cnt
sudo make install
sudo ldconfig
