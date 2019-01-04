#!/bin/bash

PWD=`pwd`

# Creating of install, bin and package config directories where we will download all the source packages, install them and link the package config
mkdir -p $HOME/ffmpeg/logs $HOME/ffmpeg/downloads

# Defining the CPU cores count to optimize the compilation
cpu_cnt="$(nproc --all)"
export cpu_cnt

# Start executing the scripts

echo "System Update is started..."
# sh $PWD/scripts/update_system.sh 2> $HOME/ffmpeg/logs/sysupdate.log
echo "Update of the system had finished"
echo "Start Compilation of the libs needed for ffmpeg..."
sh $PWD/scripts/nasm.sh 2> $HOME/ffmpeg/logs/nasm.log
# sh $PWD/scripts/kvazaar.sh 2> $HOME/ffmpeg/logs/kvazaar.log
# sh $PWD/scripts/libfdk-aac.sh 2> $HOME/ffmpeg/logs/libfdk-aac.log
sh $PWD/scripts/ogg.sh 2> $HOME/ffmpeg/logs/ogg.log
sh $PWD/scripts/libvorbis.sh 2> $HOME/ffmpeg/logs/libvorbis.log
# sh $PWD/scripts/libopenjpeg.sh 2> $HOME/ffmpeg/logs/libopenjpeg.log
# sh $PWD/scripts/libmp3lame.sh 2> $HOME/ffmpeg/logs/libmp3lame.log
# sh $PWD/scripts/libopus.sh 2> $HOME/ffmpeg/logs/libopus.log
# sh $PWD/scripts/libtheora.sh 2> $HOME/ffmpeg/logs/libtheora.log
# sh $PWD/scripts/libwebp.sh 2> $HOME/ffmpeg/logs/libwebp.log
# sh $PWD/scripts/libvpx.sh 2> $HOME/ffmpeg/logs/libvpx.log
sh $PWD/scripts/libx264.sh 2> $HOME/ffmpeg/logs/libx264.log
sh $PWD/scripts/libx265.sh 2> $HOME/ffmpeg/logs/libx265.log
sh $PWD/scripts/vidstab.sh 2> $HOME/ffmpeg/logs/vidstab.log
sh $PWD/scripts/openh264.sh 2> $HOME/ffmpeg/logs/openh264.log
# sh $PWD/scripts/libaom.sh 2> $HOME/ffmpeg/logs/libaom.log
sh $PWD/scripts/libsrt.sh 2> $HOME/ffmpeg/logs/libsrt.log
sh $PWD/scripts/vmaf.sh 2> $HOME/ffmpeg/logs/vmaf.log
echo "All required libs had been installed"
echo "Start compilation of ffmpeg"
sh $PWD/scripts/ffmpeg.sh 2> $HOME/ffmpeg/logs/ffmpeg.log
echo "FFMPEG compilation has finished"

# Removing of the install directory where the sources of the additional libraries were saved

while true; do
    read -p "Do you wish to remove the install directory [Y/n]? " rmv
    rmv=${rmv,,}                                      # lower all the cases in the rmv variable
    case $rmv in
        [y]* | "" ) rm -rf $HOME/ffmpeg/downloads 
	echo "The install directory was successfully removed"; break;;     # check if the "rmv" var starts with the letter Y or for Enter key
        [n]* ) echo "The install directory won't be removed"; exit;;
        * ) echo "Please try again [Y/n]! ";;
    esac
done

# Reboot of the system

while true; do
    read -p "Do you wish to reboot your machine [Y/n]? " rmv
    rmv=${rmv,,}                                      # lower all the cases in the rmv variable
    case $rmv in
        [y]* | "" ) echo "Your machine will be restarted in 5 seconds..." 
	sleep 5 
	sudo reboot; break;;     # check if the "rmv" var starts with the letter Y or for Enter key
        [n]* ) echo "Please reboot manually your machine later on!"; exit;;
        * ) echo "Please try again [Y/n]! ";;
    esac
done
