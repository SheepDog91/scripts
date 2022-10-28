#! usr/bin/bash

git clone https://github.com/sheepdog91/dotfiles

# /etc/

        # MOTD
cp      dotfiles/etc/motd /etc/ &&

        # Apt Sources
cp      dotfiles/etc/apt/sources.list /etc/apt/ &&

        # Default Console Setup
cp      dotfiles/etc/default/console-setup /etc/default/ &&

# /home/
    
cp      dotfiles/home/xinitrc ~/.xinitrc &&
    
# /home/.config
    
cp -r   dotfiles/home/config/*       ~/.config/
