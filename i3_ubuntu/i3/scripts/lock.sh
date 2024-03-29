#!/usr/bin/env bash
icon="$HOME/Pictures/lock_icon.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg" -f && systemctl suspend
~/.config/i3/scripts/clearLock.sh
