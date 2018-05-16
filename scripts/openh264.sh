#/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/cisco/openh264.git 
cd openh264
make -j$cpu_cnt 
sudo make install
make clean
sudo ldconfig
