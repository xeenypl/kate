# Isntallation additional softwere.
## dash in palce of bash.
```sh
sudo pacman -S dash
sudo unlink /bin/sh
sudo ln -s /bin/dash /bin/sh
```

## Fish.
```sh
sudo pacman -S fish
chsh -s /usr/bin/fish
# in Fish
curl -sL https://git.io/fisher | source
fisher install jorgebucaran/fisher
fisher install jorgebucaran/hydro
fisher install jorgebucaran/autopair.fish
```

## Yay.
```sh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

## Picom.
```sh
sudo pacman -S picom
```

## Brave (with yay).
```sh
yay -S brave-bin
```

## Music palyer demon.
```sh
sudo pacman -S mpd ncmpcpp mpc
md /home/xeeny/.cache/mpd/playlists
```

## Zathura (pdf reader/ebook).
```sh
sudo pacman -S zathura zathura-cb zathura-djvu zathura-pdf-mupdf zathura-ps
```

## Pulseaudio.
```sh
sudo pacman -S alsa-utils pulseaudio pulseaudio-alsa pulsemixer
```

## Neovim nightly (with yay).
```sh
yay -S neovim-nightly-bin
```

## Rust.
```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update
rustup component add rls rust-analysis rust-src rustfmt
```

## Haskell.
```sh
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

## C/C++.
```sh
sudo pacman -S clang
```

## JS/TS.
```sh
sudo pacman -S nodejs npm
sudo npm install -g typescript typescript-language-server
```

## Python.
```sh
sudo pacman --noconfirm -S python python-pip
pip install --upgrade --user autopep8
pip install --upgrade --user python-lsp-server
```

# Ruby.
```sh
sudo pacman -S ruby
gem install sorbet
gem install rufo
```

## Graphics.
```sh
sudo pacman -S gimp krita inkscape blender
```

## Japanes Kaybord.
```sh
sudo pacman -S adobe-source-han-sans-jp-fonts adobe-source-han-serif-jp-fonts
sudo pacman -S fcitx-im fcitx-configtool fcitx-mozc
sudo pacman -S translate-shell
```

## Transmition (with yay).
```sh
yay -S transmission-cli tremc
sudo cp ./etc/transmission.desktop /usr/share/applications/
```

## Wine.
```sh
sudo pacman -S wine lib32-alsa-plugins lib32-libpulse lib32-openal
```
