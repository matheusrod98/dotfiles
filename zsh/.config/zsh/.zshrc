# If not running interactively, don"t do anything
[[ $- != *i* ]] && return

# Plugins.
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=(
    $HOME/gits/zsh-completions/src $fpath
    $XDG_CONFIG_HOME/docker $fpath
)

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

# Vi mode.
bindkey -v
bindkey "^?" backward-delete-char

# Enable searching through history
bindkey "^R" history-incremental-pattern-search-backward

# My aliases.
source "$XDG_CONFIG_HOME"/zsh/zsh_aliases

# FZF
source $HOME/.local/bin/scripts/fzf/key-bindings.sh

# eval "$(/bin/mise activate zsh)"
eval "$(starship init zsh)"
