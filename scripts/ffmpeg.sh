#!/bin/bash


# Download link for the latest ffmpeg version.
url="http://ffmpeg.org/releases/ffmpeg-4.2.tar.bz2"
# Finding out the name of the directory
dirname=$(basename "$url" .tar.bz2)

# Download of the latest ffmpeg version
cd "$HOME/ffmpeg/downloads" || exit
wget "$url"
# Extraction of the latest ffmpeg package
tar xjvf ffmpeg-*.tar.bz2
# Removal of the tar.bz2 package
rm ffmpeg-*.tar.bz2
cd "$dirname" || exit

# FFMPEG Compilation
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
	--enable-libvmaf \
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
