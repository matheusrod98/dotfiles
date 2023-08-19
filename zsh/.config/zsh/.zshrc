# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Completion system.
fpath=(
    $XDG_DATA_HOME/zsh/plugins/zsh-completions/src 
    $fpath
)
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload -i zsh/complist
compinit
bindkey -M menuselect '^[[Z' reverse-menu-complete

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
bindkey '^R' history-incremental-pattern-search-backward

# My aliases.
source $XDG_CONFIG_HOME/zsh/zsh_aliases

# Rusty
eval "$(starship init zsh)"
eval "$(/bin/rtx activate zsh)"
eval "$(zoxide init zsh)"

[ -f "$HOME"/.local/bin/.fzf.zsh ] && source "$HOME"/.local/bin/.fzf.zsh
