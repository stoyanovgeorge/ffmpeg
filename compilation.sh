#!/bin/bash

PWD=`pwd`

# Creating of install directory where we will download all the source packages
mkdir -p $HOME/ffmpeg/bin $HOME/ffmpeg/install $HOME/ffmpeg/lib/pkgconfig

# Start executing the scripts

echo "System Update is started..."
sh $PWD/scripts/update_system.sh
echo "Update of the system had finished"
echo "Start Compilation of the libs needed for ffmpeg..."
sh $PWD/scripts/nasm.sh
sh $PWD/scripts/kvazaar.sh
sh $PWD/scripts/libfdk-aac.sh
sh $PWD/scripts/ogg.sh
sh $PWD/scripts/libvorbis.sh
sh $PWD/scripts/libopenjpeg.sh 
sh $PWD/scripts/libmp3lame.sh
sh $PWD/scripts/libopus.sh
sh $PWD/scripts/libtheora.sh
sh $PWD/scripts/libwebp.sh
sh $PWD/scripts/libvpx.sh
sh $PWD/scripts/libx264.sh
sh $PWD/scripts/libx265.sh
sh $PWD/scripts/vidstab.sh
sh $PWD/scripts/openh264.sh
echo "All required libs had been installed"
echo "Start compilation of ffmpeg"
sh $PWD/scripts/ffmpeg.sh
echo "FFMPEG compilation has finished"

# Removing of the install directory where the sources of the additional libraries were saved

while true; do
    read -p "Do you wish to remove the install directory [Y/n]? " rmv
    rmv=${rmv,,}                                      # lower all the cases in the rmv variable
    case $rmv in
        [y]* | "" ) rm -rf $HOME/install 
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
