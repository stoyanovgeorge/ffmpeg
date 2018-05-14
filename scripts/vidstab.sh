#/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/georgmartius/vid.stab.git
cd vid.stab
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
cmake .
PATH="$HOME/ffmpeg/bin:$PATH"
make
sudo make install
sudo ldconfig
