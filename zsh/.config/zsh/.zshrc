# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Dev
. /opt/asdf-vm/asdf.sh

# Completion system.
fpath=(
    $XDG_DATA_HOME/zsh/plugins/zsh-completions/src 
    $ASDF_DIR/completions
    $fpath
)
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload -i zsh/complist
compinit
bindkey -M menuselect '^[[Z' reverse-menu-complete

# Plugins.
source $XDG_DATA_HOME/zsh/plugins/F-Sy-H/F-Sy-H.plugin.zsh

# History settings.
setopt HIST_IGNORE_DUPS
setopt APPEND_HISTORY
setopt HIST_REDUCE_BLANKS

# Vi mode.
bindkey -v
bindkey "^?" backward-delete-char

# Enable searching through history
bindkey '^R' history-incremental-pattern-search-backward

# My aliases.
source $XDG_CONFIG_HOME/zsh/zsh_aliases

# Set terminal title to $USER@$HOST:$PWD and the cursor to beam.
precmd() { 
    echo -ne '\e[5 q'
    echo -ne "\e]0;${USER}@${HOST}: ${PWD/#$HOME/~}\a";
}

# Prompt
eval "$(starship init zsh)"
eval "$(mcfly init zsh)"
eval "$(zoxide init zsh)"
