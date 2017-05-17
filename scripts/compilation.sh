#!/bin/bash

mkdir $HOME/install
cd $HOME/install
echo "System Update is started..."
sh $HOME/scripts/update_system.sh
echo "Update of the system had finished"
echo "Start Compilation of the libs needed for ffmpeg..."
sh $HOME/scripts/kvazaar.sh
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
