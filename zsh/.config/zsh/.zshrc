# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Blinking l-beam cursor.
precmd() { echo -ne '\e[5 q' ;}

# My Plugins.
source $XDG_CONFIG_HOME/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source $XDG_CONFIG_HOME/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

# Completion system.
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
bindkey -M menuselect '^[[Z' reverse-menu-complete

# More completions.
fpath=($XDG_CONFIG_HOME/zsh/plugins/zsh-completions/zsh-completions.plugin.zsh $fpath)

# History settings.
setopt HIST_IGNORE_DUPS
setopt APPEND_HISTORY
setopt HIST_REDUCE_BLANKS

# Vi mode.
bindkey -v

# Enable searching through history
bindkey '^R' history-incremental-pattern-search-backward

# My aliases.
source $XDG_CONFIG_HOME/zsh/zsh_aliases

# CTRL + SPACE to use autosuggestion.
bindkey '^ ' autosuggest-accept

# Nautilus
source $XDG_CONFIG_HOME/zsh/nautilus_sources

# Prompt.
eval "$(starship init zsh)"
