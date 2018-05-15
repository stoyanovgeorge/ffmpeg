#!/bin/bash

cd $HOME/ffmpeg/downloads
wget https://ffmpeg.org/releases/ffmpeg-4.0.tar.bz2
tar xjvf ffmpeg-4.0.tar.bz2
rm ffmpeg-4.0.tar.bz2
cd ffmpeg-4.0
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
./configure \
        --prefix="$HOME/ffmpeg" \
        --pkg-config-flags="--static" \
        --extra-cflags="-I$HOME/ffmpeg/include" \
        --extra-ldflags="-L$HOME/ffmpeg/lib" \
        --extra-libs="-lpthread -lm" \
        --bindir="$HOME/ffmpeg/bin" \
        --toolchain=hardened \
        --enable-gpl \
        --enable-nonfree \
        --disable-stripping \
        --enable-avisynth \
        --enable-libass \
        --enable-libfontconfig \
        --enable-libfreetype \
        --enable-libfribidi \
        --enable-libgme \
        --enable-libgsm \
        --enable-libmysofa \
        --enable-libopenmpt \
        --enable-librubberband \
        --enable-libshine \
        --enable-libsnappy \
        --enable-libssh \
        --enable-libtwolame \
        --enable-libwavpack \
        --enable-libxml2 \
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
        --enable-libwebp \
        --enable-libxvid \
        --enable-libvidstab \
        --enable-libopenh264 \
        --enable-zlib \
        --enable-openssl
PATH="$HOME/ffmpeg/bin:$PATH" make
sudo make install
make distclean
source ~/.profile
