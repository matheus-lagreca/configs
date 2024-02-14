#!/bin/bash

# Check if the monitor configuration mode is specified as an argument
if [[ "$1" == "singleExternal" ]]; then
	# Only enable HDMI-1 and disable eDP-1
	xrandr --output HDMI-1 --primary --auto
	xrandr --output eDP-1 --off
elif [[ "$1" == "singleNote" ]]; then
	# only enable eDP-1 and siable external
	xrandr --output eDP-1 --primary --auto
	xrandr --output HDMI-1 --off
else
	# Detect the number of connected monitors
	num_monitors=$(xrandr --query | grep -c " connected")

	# Set eDP-1 as the primary monitor and enable it
	xrandr --output eDP-1 --primary --auto

	if [[ $num_monitors == 2 ]]; then
		# Enable HDMI-1 and set it to the right of eDP-1
		xrandr --output HDMI-1 --auto --right-of eDP-1
	else
		# Disable HDMI-1
		xrandr --output HDMI-1 --off
	fi
fi

# Restart i3
i3-msg restart
