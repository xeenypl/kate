#!/bin/sh

. $HOME/.profile

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

if [ -e /usr/bin/dunst ]; then
    dunst &
fi

if [ -e /usr/bin/picom ]; then
    picom &
fi

if [ -e /sys/class/power_supply/BAT0/capacity ]; then
    status_bat () {
        printf "%s%% " "$(cat /sys/class/power_supply/BAT0/capacity)"
    }
else
    status_bat () {
        echo ""
    }
fi

while :
do
    xsetroot -name "$(status_bat)$(date +'%D %T')"
    sleep 1
done &

while :
do
    dwm
done
