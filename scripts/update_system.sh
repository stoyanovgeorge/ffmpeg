#!/bin/bash

echo "Start the system update..."
sudo apt update &> /dev/null
sudo apt upgrade -y &> /dev/null
sudo apt dist-upgrade -y &> /dev/null
sudo apt install \
autoconf \
automake \
build-essential \
fonts-dejavu-core \
fontconfig-config \
i965-va-driver \
libtool \
pkg-config \
texinfo \
yasm \
libass-dev \
mesa-vdpau-drivers \
checkinstall \
zlib1g-dev \
libxvidcore-dev \
libfontconfig1 \
cmake \
libsdl2-dev \
libopenjpeg-dev \
ladspa-sdk \
libsoxr-dev \
libschroedinger-dev \
libspeex-dev \
python-dev \
python-pip \
python-tk \
libssl-dev -y &> /dev/null
sudo apt clean -y &> /dev/null
sudo apt autoremove -y &> /dev/null
echo "End of the system update"
