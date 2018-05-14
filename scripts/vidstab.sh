#/bin/bash

cd $HOME/ffmpeg/install/
git clone https://github.com/georgmartius/vid.stab.git
cd vid.stab
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
cmake .
make
sudo make install
sudo ldconfig
