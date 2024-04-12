#!/bin/bash

open_dir() {
    local path=$(fd --type d --base-directory=$HOME --hidden | fzf) || return
    cd "$HOME/$path"
}
open_dir
