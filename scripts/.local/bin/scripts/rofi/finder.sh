#!/usr/bin/env bash

if [ "$@" ]; then
    coproc ( xdg-open "$HOME"/"$*" > /dev/null 2>&1 )
else
    fd --full-path \
        --base-directory="$HOME" \
        --exclude "node_modules" \
        --type file
fi
