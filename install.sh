#!/bin/sh
# Libs for dwm.
sudo pacman --noconfirm -S libxft libxinerama
# Xorg.
sudo pacman --noconfirm -S xorg-server xorg-xinit xorg-xsetroot
sudo pacman --noconfirm -S xcape xclip xsel scrot alacritty
# Fonts.
sudo pacman --noconfirm -S ttf-dejavu ttf-nerd-fonts-symbols-mono jq
# Multimedia.
sudo pacman --noconfirm -S qutebrowser nnn mpv sxiv xwallpaper imagemagick
# misc tools 
sudo pacman --noconfirm -S ripgrep fzf exa aria2 fd bat zip unzip unrar

sudo pacman --noconfirm -S dunst libnotify

sudo pacman --noconfirm -S python-pip
