#/bin/bash

#mkdir $HOME/install
cd $HOME/ffmpeg/install
git clone https://github.com/cisco/openh264.git 
cd openh264
make 
sudo make install
make clean
sudo ldconfig
