#! /bin/bash

# if HDMI output connected:
# - turn internal monitor off
# - setup HDMI monitor
# if HDMI and VGA output are both connected:
# - setup VGA monitor as well left of HDMI
# if only VGA output connected:
# - turn internal monitor off
# - setup VGA monitor
# if all external monitors disconnected:
# - setup internal monitor
if (xrandr | grep "VGA1 connected"); then
	VGA=VGA1
elif (xrandr | grep "VGA2 connected"); then
	VGA=VGA2
else
	VGA=""
fi

if (xrandr | grep "HDMI1 connected"); then
	xrandr --output LVDS1 --off
	if [ -z "$VGA" ]; then
		xrandr --output HDMI1 --mode 1920x1080
	else
		echo turn VGA on
		xrandr --output $VGA --off
		xrandr --output $VGA --mode 1920x1080
		xrandr --output HDMI1 --off
		xrandr --output HDMI1 --mode 1920x1080 --right-of $VGA
  fi
else
	if [ -z "$VGA" ]; then
		xrandr --output LVDS1 --mode 1366x768
	else
		xrandr --output LVDS1 --off
		xrandr --output $VGA --mode 1920x1080
	fi
fi

