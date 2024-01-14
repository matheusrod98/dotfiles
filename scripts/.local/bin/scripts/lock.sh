#! /bin/bash
SCREENSHOT=/tmp/screenshot.png
rm $SCREENSHOT
grim $SCREENSHOT
convert $SCREENSHOT -blur 7x5 $SCREENSHOT
swaylock -i $SCREENSHOT --
