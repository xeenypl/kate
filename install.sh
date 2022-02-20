#!/usr/bin/fish

pushd /tmp/
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
popd

# Libs for dwm.
yay --noconfirm -S libxft libxinerama
# Xorg.
yay --noconfirm -S xorg-server xorg-xinit xorg-xsetroot
yay --noconfirm -S xcape xclip xsel scrot alacritty
yay --noconfirm -S dunst libnotify picom
# Fonts.
yay --noconfirm -S ttf-dejavu ttf-nerd-fonts-symbols-mono
# Audio
yay --noconfirm -S alsa-utils pulseaudio pulseaudio-alsa pulsemixer
yay --noconfirm -S mpd ncmpcpp mpc
mkdir -p /home/xeeny/.cache/mpd/playlists
# Misc tools 
yay --noconfirm -S ripgrep fzf exa aria2 fd bat zip unzip unrar jq man man-pages
# Pdf reader
yay --noconfirm -S zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-ps
# Neovim
yay --noconfirm -S neovim-nightly-bin
# Multimedia.
yay --noconfirm -S brave-bin
yay --noconfirm -S qutebrowser nnn mpv sxiv xwallpaper imagemagick
yay --noconfirm -S gimp krita inkscape blender
# Torretnts.
yay --noconfirm -S transmission-cli tremc
sudo cp ./etc/transmission.desktop /usr/share/applications/

pushd dwm
    sudo make install
popd

pushd dmenu
    sudo make install
popd

cp ./config/*         ~/.config/
cp ./config/.xinitrc  ~/.xinitrc
cp ./config/.profile  ~/.profile

# Fish plugins.
curl -sL https://git.io/fisher | source
fisher install jorgebucaran/fisher
fisher install jorgebucaran/hydro
fisher install jorgebucaran/autopair.fish
fisher install oh-my-fish/plugin-foreign-env
