#!/bin/sh
. $HOME/.profile

xset s off
xset dpms 0 1800 0

# Auto start.
setxkbmap pl -option caps:super
fcitx -d &
xcape -e 'Shift_L=Escape;Super_L=BackSpace'
xwallpaper --zoom "$HOME/.config/wallpaper"
transmission-daemon
picom &
dunst &
killall mpd
mpd "$HOME/.config/mpd/mpd.conf"

# Status bar.
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

# Run Dwm.
exec dwm
