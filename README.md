# Automated FFMPEG Compilation script for Ubuntu

Automated scripts for compilation of the latest FFMPEG and its most popular librarires for Ubuntu based systems. The script is tested and working on Ubuntu 16.04 LTS Xenial Xerus.

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


### Usage Examples

Please run the [compilation.sh](https://github.com/stoyanovgeorge/ffmpeg/blob/master/compilation.sh "compilation.sh") script and it will take care of installing the latest version of FFMPEG and its most popular libraries from scratch. 

```
sh compilation.sh
```
If you want to omit the installation of some of these libraries, please comment the line in the [compilation.sh](https://github.com/stoyanovgeorge/ffmpeg/blob/master/compilation.sh "compilation.sh") script and also remove the parameter in the [ffmpeg.sh](https://github.com/stoyanovgeorge/ffmpeg/blob/master/scripts/ffmpeg.sh "ffmpeg.sh") script. 

For example if you want to remove Kvazaar, the [compilation.sh](https://github.com/stoyanovgeorge/ffmpeg/blob/master/compilation.sh "compilation.sh") will look like: 
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
sudo reboot
```

And in the [ffmpeg.sh](https://github.com/stoyanovgeorge/ffmpeg/blob/master/scripts/ffmpeg.sh "ffmpeg.sh") script you need to remove `--enable-libkvazaar` option as shown below:
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

### External Links

* [FFMPEG Generic Compilation Guide](https://trac.ffmpeg.org/wiki/CompilationGuide/Generic "FFMPEG Generic Compilation Guide")<br \>
* [FFMPEG Ubuntu Compilation Guide](https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu "FFMPEG Ubuntu Compilation Guide")<br \>
* [Comparison of Video Codecs and Containers](http://download.das-werkstatt.com/pb/mthk/info/video/comparison_video_codecs_containers.html "Video Codecs Comparison")<br \>
* [List of YUV Formats](http://www.fourcc.org/yuv.php "List of YUV Formats")<br \>
* [Comparison of Container Formats](http://www.digitizationguidelines.gov/guidelines/video_reformatting_compare.html "Comparison of Container Formats")<br \>
* [X264 Encoding Guide](https://trac.ffmpeg.org/wiki/Encode/H.264 "X264 Encoding Guide")
* [FFV1 Video Encoding](https://trac.ffmpeg.org/wiki/Encode/FFV1 "FFV1 Video Encoding")<br \>
* [FFMPEG Ubuntu Compilation Guide](https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu "FFMPEG Ubuntu Compilation Guide")<br \>
* [Kvazaar - Open Source HEVC Encoding Library GitHub Project](https://github.com/ultravideo/kvazaar "Kvazaar GitHub")<br \>
* [Kvazaar Official Webpage](http://ultravideo.cs.tut.fi/#encoder "Kvazaar Official Webpage")<br \>
* [X265 Commands](http://x265.readthedocs.io/en/default/cli.html "X265 Encoding Guide")<br \>
* [FFMPEG Presets Github](https://github.com/joeyblake/FFmpeg-Presets "FFMPEG Precompiled Presets")<br \>
* [FFPROBE examples](http://www.bugcodemaster.com/article/use-ffprobe-obtain-information-video-files "FFPROBE examples")<br \>
* [FFProbe Tips](https://trac.ffmpeg.org/wiki/FFprobeTips "FFProbe Tips")<br \>
* [VP9 Compression Guide](https://sites.google.com/a/webmproject.org/wiki/ffmpeg/vp9-encoding-guide "VP9 Compression Guide")<br \>
* [VP9 vs. H.264 vs. H.265 Comparison](https://blogs.gnome.org/rbultje/2015/09/28/vp9-encodingdecoding-performance-vs-hevch-264/ "VP9 vs. H.264 vs. H.265")<br \>
* [VP9 Encoder Parameters](https://www.webmproject.org/docs/encoder-parameters/ "VP9 Encoder Parameters")<br \>
* [Concatenate in FFMPEG](https://trac.ffmpeg.org/wiki/Concatenate "Concatenate in FFMPEG")<br \>
