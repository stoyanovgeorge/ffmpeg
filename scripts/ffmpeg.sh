#!/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone git://source.ffmpeg.org/ffmpeg
cd $HOME/install/ffmpeg
./configure \
--enable-gpl \
--enable-ladspa \
--enable-libpulse \
--enable-libsoxr \
--enable-libspeex \
--enable-avfilter \
--enable-avresample \
--enable-postproc \
--enable-pthreads \
--enable-libfdk-aac \
--enable-libmp3lame \
--enable-libopus \
--enable-libtheora \
--enable-libvorbis \
--enable-libvpx \
--enable-libx264 \
--enable-libx265 \
--enable-nonfree \
--enable-libkvazaar \
--disable-ffplay \
--enable-libopenjpeg \
--enable-libwebp \
--enable-libxvid \
--enable-libvidstab \
--enable-libopenh264 \
--enable-zlib \
--enable-openssl
make
sudo make install
make distclean
