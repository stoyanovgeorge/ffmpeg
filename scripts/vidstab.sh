#/bin/bash

#mkdir $HOME/install
cd $HOME/install/
git clone https://github.com/georgmartius/vid.stab.git
cd $HOME/install/vid.stab/
cmake .
make
sudo make install
sudo ldconfig
