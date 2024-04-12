# If not running interactively, don"t do anything
[[ $- != *i* ]] && return

# Completion system.
fpath=(
    $XDG_DATA_HOME/zsh/plugins/zsh-completions/src 
    $fpath
)
autoload -Uz compinit
zstyle ":completion:*" menu select
zmodload -i zsh/complist
compinit
bindkey -M menuselect "^[[Z" reverse-menu-complete

# Plugins.
source "$HOME"/.local/share/zsh/plugins/F-Sy-H/fast-syntax-highlighting.plugin.zsh

# History settings.
setopt HIST_IGNORE_DUPS
setopt APPEND_HISTORY
setopt HIST_REDUCE_BLANKS

# Vi mode.
bindkey -v
bindkey "^?" backward-delete-char

# Enable searching through history
bindkey "^R" history-incremental-pattern-search-backward

# My aliases.
source "$XDG_CONFIG_HOME"/zsh/zsh_aliases

# FZF
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

run_find_dir () {
    local dir=$(fd -H -L --type d --base-directory $HOME | fzf || return) &&
    cd "$HOME/$dir"
    zle reset-prompt
}
zle -N run_find_dir
bindkey '^p' run_find_dir

run_find_files() {
    local file=$(fd --type f --base-directory=$HOME --full-path $HOME | fzf --preview 'fzf-preview.sh {}' || return) &&
    exo-open "$HOME/$file"
    zle reset-prompt
}
zle -N run_find_files
bindkey '^o' run_find_files

[[ $HOSTNAME =~ harpia* || $HOSTNAME =~ nautilus* ]] ||
eval "$(/bin/mise activate zsh)"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
