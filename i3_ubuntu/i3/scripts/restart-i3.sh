#!/bin/bash

# Detect the number of connected monitors
num_monitors=$(xrandr --query | grep -c " connected")

# Set eDP-1 as the primary monitor
xrandr --output eDP-1 --primary

if [[ $num_monitors == 2 ]]; then
  # Enable HDMI-1 and set it to the right of eDP-1
  xrandr --output HDMI-1 --auto --left-of eDP-1
else
  # Disable HDMI-1
  xrandr --output HDMI-1 --off
fi

# Restart i3
i3-msg restart
