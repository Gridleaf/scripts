#!/bin/bash
 
if xrandr | grep "HDMI-1-0 connected 2560x1440"; then
	HDMI_ON=true
else
	HDMI_ON=false
fi

if xrandr | grep "DP-1-1 connected 1080x1920"; then
	DP_ON=true
else
	DP_ON=false
fi

if [ "$HDMI_ON" = false ] && [ "$DP_ON" = false ]; then
	xrandr --output eDP-1 --primary --mode 1920x1080 --rate 60.01 --pos 0x-110 --output HDMI-1-0 --off --output DP-1-1 --mode 1920x1080 --rate 74.97 --rotate left --pos 1920x-220
elif [ "$HDMI_ON" = true ] && [ "$DP_ON" = false ]; then
	xrandr --output eDP-1 --primary --mode 1920x1080 --rate 60.01 --pos 0x-110 --output HDMI-1-0 --mode 2560x1440 --rate 143.91 --pos 1920x0 --output DP-1-1 --mode 1920x1080 --rate 74.97 --rotate left --pos 4480x-220
elif [ "$HDMI_ON" = false ] && [ "$DP_ON" = true ]; then
	xrandr --output eDP-1 --primary --mode 1920x1080 --rate 60.01 --output HDMI-1-0 --off --output DP-1-1 --off
elif [ "$HDMI_ON" = true ] && [ "$DP_ON" = true ]; then
xrandr --output eDP-1 --primary --mode 1920x1080 --rate 60.01 --pos 0x-110 --output HDMI-1-0 --mode 2560x1440 --rate 143.91 --pos 1920x0 --output DP-1-1 --off
fi

feh --bg-fill /home/aesop/Pictures/wallpapers/wallpaper.jpg
