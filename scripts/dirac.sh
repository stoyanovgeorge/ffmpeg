#/bin/bash

cd $HOME/ffmpeg/downloads
git clone https://github.com/DIRACGrid/DIRAC.git
cd DIRAC
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
./configure --enable-static --prefix="$HOME/ffmpeg/install" --bindir="$HOME/ffmpeg/bin" --enable-pic
make
sudo make install
make distclean
sudo ldconfig
