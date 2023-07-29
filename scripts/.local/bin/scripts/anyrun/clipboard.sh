#!/usr/bin/env bash
cliphist list | 
    anyrun --plugins libstdin.so \
           --hide-icons true \
           --show-results-immediately true \
           --max-entries 8 \
           --hide-plugin-info true |
    cliphist decode | 
    wl-copy
