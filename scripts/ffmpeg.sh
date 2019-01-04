#!/bin/bash

cd $HOME/ffmpeg/downloads
wget https://ffmpeg.org/releases/ffmpeg-4.1.tar.bz2
tar xjvf ffmpeg-4.1.tar.bz2
rm ffmpeg-4.1.tar.bz2
cd ffmpeg-4.1
./configure \
        --pkg-config-flags="--static" \
        --extra-libs="-lpthread -lm" \
        --toolchain=hardened \
        --enable-gpl \
        --enable-nonfree \
	--enable-version3 \
        --disable-stripping \
        --enable-avisynth \
        --enable-libass \
        --enable-libfontconfig \
        --enable-libfreetype \
       	--enable-libfribidi \
        --enable-libgme \
        --enable-libgsm \
        --enable-librubberband \
        --enable-libshine \
        --enable-libsnappy \
        --enable-libssh \
        --enable-libtwolame \
        --enable-libwavpack \
        --enable-libzvbi \
        --enable-openal \
        --enable-sdl2 \
        --enable-libdrm \
        --enable-frei0r \
        --enable-ladspa \
        --enable-libpulse \
        --enable-libsoxr \
        --enable-libspeex \
        --enable-avfilter \
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
        --disable-ffplay \
        --enable-libopenjpeg \
	--enable-libsrt \
        --enable-libwebp \
        --enable-libxvid \
        --enable-libvidstab \
        --enable-libopenh264 \
        --enable-zlib \
        --enable-openssl
make -j$cpu_cnt
sudo make install
sudo make distclean
source ~/.profile
