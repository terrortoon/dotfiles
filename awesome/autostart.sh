#!/bin/sh

run() {
    if ! pgrep -f "$1"; then
        "$@" &
    fi
}

run "xrandr" --output eDP1 --off --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
run "picom" -b --vsync
run "feh" --bg-scale --randomize  /home/toonvdw/Pictures/wallpapers/ 
