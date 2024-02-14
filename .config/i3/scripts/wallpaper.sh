#!/bin/bash

# wall=$(find ~/Pictures/wallpaper -type f -name "*.jpg" -o -name "*.png" | shuf -n 1)
wall=$(find ~/Pictures/wallpaper/nier_dark.png)
wal -c
wal -i $wall
feh --bg-fil $wall
