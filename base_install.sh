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

apt update && apt upgrade &&

# SUDO

apt install     sudo && adduser sheepdog sudo &&

# Install and set my prefered shell

apt install fish && chsh -s /usr/bin/fish root && chsh -s /usr/bin/fish sheepdog

# TextEditor

apt install neovim &&

# Fun Nerd Shit

apt install     docker\
                git\
                ssh\
&&

# Audio files

apt install alsa-utils\
            pulseaudio\
            pulseaudio-utils\
&&

# Image Viewer

apt install feh\
&&

# Compositor

apt install picom\
&&

# Terminal Emulator
apt install kitty\
&&

# Window Manager

apt install i3\
&&

# X.Org Minimum Install

apt install xserver-xorg-core\
            xserver-xorg-video-amdgpu\
            xserver-xorg-input-evdev\
            x11-xserver-utils\
            x11-xkb-utils\
            x11-utils\
            xinit\
&&

apt install cups &&
apt install bluez &&

# GUI Applications
apt install libsecret-1-0 gconf2 gconf-service libgtk2.0-0 xdg-utils
wget    https://github.com/minbrowser/min/releases/download/v1.26.0/min-1.26.0-amd64.deb
dpkg -i min-1.26.0-amd64.deb
rm      min-1.26.0-amd64.deb\
&&
reboot
