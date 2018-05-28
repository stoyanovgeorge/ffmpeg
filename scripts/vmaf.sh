#!/bin/bash

# Installing the prerequisite packages
function prerequisites {
        sudo apt update -qq
        sudo apt install -y \
                pkg-config \
                gfortran \
                libhdf5-dev \
                libfreetype6-dev \
                liblapack-dev \
                python \
                python-setuptools \
                python-dev \
                python-pip \
                python-tk \
                git &> /dev/null
        sudo -H pip install --upgrade pip 1> /dev/null
        pip install --user numpy scipy matplotlib notebook pandas sympy nose scikit-learn scikit-image h5py 1> /dev/null
        echo ""export PATH="$PATH:$HOME/.local/bin""" >> $HOME/.bashrc 1> /dev/null
        source "$HOME"/.bashrc 1> /dev/null
}

# Cloning the VMAF repository from Github
function vmaf_compilation {
	cd $HOME/ffmpeg/downloads
        git clone https://github.com/Netflix/vmaf.git 1> /dev/null
        cd vmaf
        ./configure 1> /dev/null
        make -j"$cpu_cnt" 1> /dev/null
        sudo make install 1> /dev/null
}

# Testing the VMAF installation
function vmaf_testing {
        git submodule update --init --recursive 1> /dev/null
        make -j"$cpu_cnt" 1> /dev/null
        echo ""export PYTHONPATH="$(pwd)/python/src:$(pwd)/sureal/python/src:$PYTHONPATH""" >> $HOME/.bashrc
        source "$HOME"/.bashrc
        ./unittest 
}
prerequisites
vmaf_compilation
vmaf_testing

