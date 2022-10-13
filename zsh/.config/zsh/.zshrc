# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Completion system.
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload -i zsh/complist
compinit
bindkey -M menuselect '^[[Z' reverse-menu-complete

# Syntax highlighting.
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

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
    # echo -ne "\e]0;${USER}@${HOST}: ${PWD/#$HOME/~}\a";
    echo -ne '\e[5 q'
}

# Prompt
eval "$(starship init zsh)"
