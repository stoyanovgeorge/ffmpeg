# Automated FFMPEG Compilation script for Ubuntu

Automated scripts for compilation of the latest FFMPEG and its most popular librarires for Ubuntu based systems. 

```
ffmpeg version N-86098-g3fefaea Copyright (c) 2000-2017 the FFmpeg developers
built with gcc 5.4.0 (Ubuntu 5.4.0-6ubuntu1~16.04.4) 20160609
configuration: --enable-gpl --enable-ladspa --enable-libpulse --enable-libschroedinger --enable-libsoxr --enable-libspeex --enable-avfilter --enable-avresample --enable-postproc --enable-pthreads --enable-libass --enable-libfdk-aac --enable-libfreetype --enable-libmp3lame --enable-libopus --enable-libtheora --enable-libvorbis --enable-libvpx --enable-libx264 --enable-libx265 --enable-nonfree --enable-libkvazaar --disable-ffplay --enable-libopenjpeg --enable-libwebp --enable-libxvid --enable-libvidstab --enable-libopenh264 --enable-zlib --enable-openssl
libavutil      55. 63.100 / 55. 63.100
libavcodec     57. 96.101 / 57. 96.101
libavformat    57. 72.101 / 57. 72.101
libavdevice    57.  7.100 / 57.  7.100
libavfilter     6. 89.101 /  6. 89.101
libavresample   3.  6.  0 /  3.  6.  0
libswscale      4.  7.101 /  4.  7.101
libswresample   2.  8.100 /  2.  8.100
libpostproc    54.  6.100 / 54.  6.100
```


### Compilation

Please run the [file](https://github.com/stoyanovgeorge/ffmpeg/blob/master/compilation.sh "compilation.sh") script and it will take care of installing the latest version of FFMPEG and its most popular libraries from scratch. 

```
sh compilation.sh
```

The following libraries are also installed from source: 
1. Video Codecs:
	* Dirac
	* Kvazaar
	* Libopenjpeg
	* Libtheora
	* Libvorbis
	* Libvpx
	* Libwebp
	* libx264
	* libx265
	* Openh264

2. Video Plugins:
	* Vidstab

3. Audio Codecs:
	* Libfdk-AAC
	* Libmp3lame
	* Libopus

4. Container Formats: 
	* Ogg

If you want to omit the installation of some of these libraries, please comment the line in the [file](https://github.com/stoyanovgeorge/ffmpeg/blob/master/compilation.sh "compilation.sh") script and also remove the parameter in the [file](https://github.com/stoyanovgeorge/ffmpeg/blob/master/scripts/ffmpeg.sh "ffmpeg.sh") script. 

For example if you want to remove Kvazaar, the [file](https://github.com/stoyanovgeorge/ffmpeg/blob/master/compilation.sh "compilation.sh") will look like: 
```
#!/bin/bash

mkdir $HOME/install
cd $HOME/install
echo "System Update is started..."
sh $HOME/scripts/update_system.sh
echo "Update of the system had finished"
echo "Start Compilation of the libs needed for ffmpeg..."
#sh $HOME/scripts/kvazaar.sh
sh $HOME/scripts/libfdk-aac.sh
sh $HOME/scripts/ogg.sh
sh $HOME/scripts/libvorbis.sh
sh $HOME/scripts/libopenjpeg.sh 
sh $HOME/scripts/libmp3lame.sh
sh $HOME/scripts/libopus.sh
sh $HOME/scripts/libtheora.sh
sh $HOME/scripts/libwebp.sh
sh $HOME/scripts/libvpx.sh
sh $HOME/scripts/libx264.sh
sh $HOME/scripts/libx265.sh
sh $HOME/scripts/vidstab.sh
sh $HOME/scripts/openh264.sh
echo "All required libs had been installed"
echo "Start compilation of ffmpeg"
sh $HOME/scripts/ffmpeg.sh
echo "FFMPEG compilation has finished"
echo "The system will reboot in 10 seconds"
#sudo reboot
```

And in the [file](https://github.com/stoyanovgeorge/ffmpeg/blob/master/scripts/ffmpeg.sh "ffmpeg.sh") script you need to remove `--enable-libkvazaar` option as shown below:
```
#!/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone https://github.com/FFmpeg/FFmpeg.git
cd $HOME/install/FFmpeg
./configure \
--enable-gpl --enable-ladspa --enable-libpulse --enable-libschroedinger --enable-libsoxr \
--enable-libspeex --enable-avfilter --enable-avresample --enable-postproc --enable-pthreads \
--enable-libass --enable-libfdk-aac --enable-libfreetype --enable-libmp3lame --enable-libopus \
--enable-libtheora --enable-libvorbis --enable-libvpx --enable-libx264 --enable-libx265 \
--enable-nonfree --disable-ffplay --enable-libopenjpeg --enable-libwebp --enable-libxvid \
--enable-libvidstab --enable-libopenh264 --enable-zlib --enable-openssl
make
sudo make install
make distclean
```
