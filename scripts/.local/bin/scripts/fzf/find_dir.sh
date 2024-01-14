find_dir() {
    local dir=$(fd --type d --base-directory $HOME | fzf --prompt="cd> ") &&
    cd "$HOME/$dir"
}

find_dir
