# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Blinking l-beam cursor.
precmd() { echo -ne '\e[5 q' ;}

# My Plugins
source $XDG_CONFIG_HOME/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

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
bindkey "^?" backward-delete-char

# Enable searching through history
bindkey '^R' history-incremental-pattern-search-backward

# My aliases.
source $XDG_CONFIG_HOME/zsh/zsh_aliases

# Prompt.
eval "$(starship init zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/matheus/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/matheus/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/matheus/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/matheus/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
