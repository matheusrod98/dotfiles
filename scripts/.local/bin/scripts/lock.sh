#! /bin/bash
swaylock \
	--screenshots \
	--clock \
	--indicator \
	--indicator-radius 100 \
	--indicator-thickness 7 \
	--effect-blur 7x5 \
	--effect-vignette 0.5:0.5 \
	--fade-in 0.2

# SCREENSHOT=/tmp/screenshot.png
# rm $SCREENSHOT
# grim $SCREENSHOT
# convert $SCREENSHOT -blur 7x5 $SCREENSHOT
# swaylock -i $SCREENSHOT --indicator-idle-visible
