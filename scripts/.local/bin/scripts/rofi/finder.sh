#!/usr/bin/env bash

if [ "$@" ]; then
    coproc ( xdg-open "$HOME"/"$*" > /dev/null 2>&1 )
else
    fd --full-path \
        --base-directory="$HOME" \
        --exclude "node_modules" \
        --exclude "CMakeFiles" \
        --exclude "build" \
        --exclude "target" \
        --exclude "dist" \
        --exclude "out" \
        --exclude "*.pyc" \
        --type file
fi
