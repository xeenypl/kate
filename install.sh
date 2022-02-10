#!/bin/sh
# Libs for dwm.
sudo pacman --noconfirm -S libxft libxinerama
# Xorg.
sudo pacman --noconfirm -S xorg-server xorg-xinit xorg-xsetroot
sudo pacman --noconfirm -S xcape xclip xsel scrot alacritty
# Fonts.
sudo pacman --noconfirm -S ttf-dejavu ttf-nerd-fonts-symbols-mono
# Multimedia.
sudo pacman --noconfirm -S qutebrowser nnn mpv sxiv xwallpaper imagemagick
# misc tools 
sudo pacman --noconfirm -S ripgrep fzf exa aria2 fd bat zip unzip unrar jq man man-pages

sudo pacman --noconfirm -S dunst libnotify picom

sudo pacman --noconfirm -S alsa-utils pulseaudio pulseaudio-alsa pulsemixer

sudo pacman --noconfirm -S zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-ps

