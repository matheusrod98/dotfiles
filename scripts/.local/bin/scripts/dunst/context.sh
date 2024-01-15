#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers/type-1"
theme='style-6'

## Run
rofi \
    -dmenu -p dunst \
    -theme ${dir}/${theme}.rasi
