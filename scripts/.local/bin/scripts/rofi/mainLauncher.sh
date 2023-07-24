#!/usr/bin/env bash
dir="$HOME/.config/rofi/layouts/launchers/type-1"
theme='style-5'

## Run
rofi \
    -show combi \
    -theme "${dir}"/${theme}.rasi
