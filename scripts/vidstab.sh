#/bin/bash

#mkdir $HOME/install
cd $HOME/install/
git clone https://github.com/georgmartius/vid.stab.git
cd $HOME/install/vid.stab/
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
cmake .
make
sudo make install
sudo ldconfig
