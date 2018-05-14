#/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/cisco/openh264.git 
cd openh264
PATH="$HOME/ffmpeg/bin:$PATH"
make 
sudo make install
make clean
sudo ldconfig
