#!/bin/sh

sync () {
    if [ "$1" -nt "$2" ]; then
        echo copy "$1" to "$2"
        cp -f "$1" "$2"
    else
        echo copy "$2" to "$1"
        cp -f "$2" "$1"
    fi
}

sync $HOME/.config/alacritty/alacritty.yml  config/alacritty/alacritty.yml 
sync $HOME/.config/dunst/dunstrc            config/dunst/dunstrc 
sync $HOME/.config/fish/config.fish         config/fish/config.fish 
sync $HOME/.config/mpd/mpd.conf             config/mpd/mpd.conf 
sync $HOME/.config/mpv/mpv.conf             config/mpv/mpv.conf 
sync $HOME/.config/ncmpcpp/config           config/ncmpcpp/config 
sync $HOME/.config/ncmpcpp/bindings         config/ncmpcpp/bindings 
sync $HOME/.config/picom/picom.conf         config/picom/picom.conf 
sync $HOME/.config/qutebrowser/config.py    config/qutebrowser/config.py 
sync $HOME/.config/qutebrowser/style.css    config/qutebrowser/style.css 
sync $HOME/.config/qutebrowser/style.less   config/qutebrowser/style.less 
sync $HOME/.config/sxiv/exec/key-handler    config/sxiv/exec/key-handler
sync $HOME/.xinitrc                         config/.xinitrc 
