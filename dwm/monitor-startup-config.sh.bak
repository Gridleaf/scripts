#!/bin/bash
# add commands to autostart below

if xrandr | grep "HDMI-1-0 connected"; then
	HDMI_CONNECTED=true
else
	HDMI_CONNECTED=false
fi

if xrandr | grep "DP-1-1 connected"; then
	DP_CONNECTED=true
else
	DP_CONNECTED=false
fi

if [ "$HDMI_CONNECTED" = true ] && [ "$DP_CONNECTED" = false ]; then
	xrandr --output eDP-1 --primary --mode 1920x1080 --rate 60.01 --pos 0x-110 --output HDMI-1-0 --mode 2560x1440 --rate 143.91 --pos 1920x0
elif [ "$HDMI_CONNECTED" = false ] && [ "$DP_CONNECTED" = true ]; then
	xrandr --output eDP-1 --primary --mode 1920x1080 --rate 60.01 --pos 0x-110 --output DP-1-1 --mode 1920x1080 --rate 74.97 --rotate left --pos 1920x-220
elif [ "$HDMI_CONNECTED" = true ] && [ "$DP_CONNECTED" = true ]; then
	xrandr --output eDP-1 --primary --mode 1920x1080 --rate 60.01 --pos 0x-110 --output HDMI-1-0 --mode 2560x1440 --rate 143.91 --pos 1920x0 --output DP-1-1 --mode 1920x1080 --rate 74.97 --rotate left --pos 4480x-220
fi
