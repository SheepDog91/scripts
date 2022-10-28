#! usr/bin/bash

# Create Backup Directory

# Remove any previous backup made today

rm      -rf $(date +"%y-%m-%d")/ &&

# Create new folder with todays date

mkdir   $(date +"%y-%m-%d") &&

# Jump into our newly created folder

cd      $(date +"%y-%m-%d") &&

# Create Backup Directory Tree 

# Create Root Directory

mkdir   dotfiles\
        scripts\
        data\
        &&

# Dotfile Directory

mkdir   dotfiles/etc\
        dotfiles/etc/apt\
        dotfiles/etc/default\
        dotfiles/home\
        dotfiles/home/config\
        dotfiles/home/local\
        &&

# Backup Dotfiles

# /etc/

        # MOTD
cp      /etc/motd dotfiles/etc/ &&

        # Apt Sources
cp      /etc/apt/sources.list dotfiles/etc/apt/ &&

        # Default Console Setup
cp      /etc/default/console-setup dotfiles/etc/default/ &&

# /home/
    
cp      ~/.xinitrc dotfiles/home/xinitrc &&
    
# /home/.config
    
cp -r   ~/.config/nvim/     dotfiles/home/config/ &&
cp -r   ~/.config/i3/       dotfiles/home/config/ &&
cp -r   ~/.config/i3status/ dotfiles/home/config/ &&

# Backup Scripts

cp -r   ~/scripts/* scripts/ &&

# Backup Data

cp -r   ~/documents data/ &&
cp -r   ~/projects data/ &&
cp -r   ~/pictures data/
