#!/bin/sh
export GOPATH="$HOME/.local/go"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/.dotnet/tools"
export PATH="$PATH:$HOME/.nimble/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.cabal/bin"
export PATH="$PATH:$HOME/.ghcup/bin"

export NNN_COLORS='1234'
export NNN_PLUG='i:imgview;d:dragdrop'

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFERS='@im=fcitx'

export EDITOR="nvim"
export BROWSER="qutebrowser"
export SHELL="fish"
export TERMINAL="alacritty"
export PAGER="less"
export DMENU="dmenu"

export LESSHISTFILE=-

xset s off
xset dpms 0 1800 0

setxkbmap pl -option caps:super

if [ -e /usr/bin/xwallpaper ] && [ -e "$HOME/.config/wallpaper" ]; then
    xwallpaper --zoom "$HOME/.config/wallpaper"
fi

if [ -e /usr/bin/xcape ]; then 
    xcape -e 'Shift_L=Escape;Super_L=BackSpace'
fi

if [ -e /usr/bin/fcitx ]; then
    fcitx -d &
fi

if [ -e /usr/bin/transmission-daemon ]; then
    transmission-daemon &
fi

if [ -e /usr/bin/mpd ]; then
    killall mpd
    mpd "$HOME/.config/mpd/mpd.conf"
fi

if [ -e /sys/class/power_supply/BAT0/capacity ]; then
    status_bat () {
        printf "%s%% " "$(cat /sys/class/power_supply/BAT0/capacity)"
    }
else
    status_bat () {
    }
fi

while :
do
    xsetroot -name "$(status_bat)$(date +'%D %T')"
    sleep 1
done &

dwm
