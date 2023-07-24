#!/usr/bin/env bash
dir="$HOME/.config/rofi/layouts/launchers/type-1"
theme='style-5'

## Run
rofi \
    -modi clipboard:~/.local/bin/scripts/cliphist-rofi -show clipboard \
    -theme "${dir}"/${theme}.rasi
