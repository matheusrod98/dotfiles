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

# Command not found
source /usr/share/doc/pkgfile/command-not-found.zsh

# Vi mode.
bindkey -v
bindkey "^?" backward-delete-char

# Enable searching through history
bindkey '^R' history-incremental-pattern-search-backward

# My aliases.
source $XDG_CONFIG_HOME/zsh/zsh_aliases

# Prompt.
eval "$(starship init zsh)"
