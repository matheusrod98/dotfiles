#!/bin/bash

open_file() {
    local file path
        file=$(fd --type f --base-directory=$HOME --full-path $HOME) || return
        path=$((echo "$file") | fzf) || return
    exo-open "$HOME/$path"
}
open_file
