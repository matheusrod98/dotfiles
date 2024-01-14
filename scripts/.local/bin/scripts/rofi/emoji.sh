#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers/type-1"
theme='style-6'

## Run
rofi \
    -modi "⏻:~/.local/bin/scripts/rofi/power.sh,combi,:~/.local/bin/scripts/rofi/finder.sh,clipboard:~/.local/bin/scripts/rofi/cliphist_decode.sh,emoji,calc" \
    -show emoji \
    -theme ${dir}/${theme}.rasi
