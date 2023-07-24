#!/usr/bin/env bash
dir="$HOME/.config/rofi/layouts/launchers/type-1"
theme='style-5'

## Run
rofi \
    -modi emoji -show emoji \
    -theme "${dir}"/${theme}.rasi
