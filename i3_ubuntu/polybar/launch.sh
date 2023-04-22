#!/usr/bin/env bash

THEME="default"
CONFIG_DIR=~/.config/polybar/themes/$THEME/config.ini

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main -c $CONFIG_DIR &
  done
else
  polybar --reload main -c $CONFIG_DIR &
fi
