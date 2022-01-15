#!/bin/sh
# Libs for dwm.
sudo pacman -S libxft libxinerama
# Xorg.
sudo pacman -S xorg-server xorg-xinit xorg-xsetroot
sudo pacman -S xcape xclip xsel scrot alacritty
# Fonts.
sudo pacman -S ttf-dejavu ttf-nerd-fonts-symbols-mono
# Multimedia.
sudo pacman -S qutebrowser nnn mpv sxiv xwallpaper imagemagick
# misc tools 
sudo pacman -S ripgrep fzf exa aria2 fd bat zip unzip unrar

sudo pacman -S python-pip
