# If not running interactively, don"t do anything
[[ $- != *i* ]] && return

# Plugins.
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=($HOME/gits/zsh-completions/src $fpath)

# Completion system.
autoload -Uz compinit
zstyle ":completion:*" menu select
zmodload -i zsh/complist
compinit
bindkey -M menuselect "^[[Z" reverse-menu-complete

# History settings.
setopt HIST_IGNORE_DUPS
setopt APPEND_HISTORY
setopt HIST_REDUCE_BLANKS

# VI mode.
bindkey -v
bindkey "^?" backward-delete-char

# Enable searching through history
bindkey "^R" history-incremental-pattern-search-backward

# My aliases.
source "$XDG_CONFIG_HOME"/zsh/zsh_aliases

# FZF
source /usr/share/fzf/shell/key-bindings.zsh

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
# eval "$(/bin/mise activate zsh)"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
