#! usr/bin/bash

#BASH MINIMAL INSTALL SCRIPT
#Made By Nicholas Woodall
#https://github.com/SheepDog91
#Modify to your liking

# Restore my software repositories

wget https://raw.githubusercontent.com/sheepdog91/dotfiles/main/etc/apt/sources.list 
cp sources.list /etc/apt/sources.list
rm sources.list

# Update repository sources and check for updates

apt update &&
apt upgrade &&

# Install and set my prefered shell

apt install fish &&
chsh -s /usr/bin/fish root
chsh -s /usr/bin/fish sheepdog

# Install my prefered text editor

apt install neovim &&

# My Desktop Enviroment

    # Base

    apt install xserver-xorg-core\
                xserver-xorg-video-amdgpu\
                xserver-xorg-input-evdev\
                x11-xserver-utils\
                x11-xkb-utils\
                x11-utils\
                xinit\
                i3\
                feh\
                compton\
                rxvt-unicode\
                alsa-utils\
                pulseaudio\
                pulseaudio-utils\
                cups\
                bluez\
    &&

    # GUI Applications

    wget https://github.com/minbrowser/min/releases/download/v1.26.0/min-1.26.0-amd64.deb min.deb
    dpkg -i min.deb
    rm min.deb
    &&
    
    # Terminal Applications

    apt install neofetch\
                htop\
    &&
# Fun Nerd Shit

apt install     docker\
                git\
                ssh\
                sudo\
&&
adduser sheepdog sudo
reboot
