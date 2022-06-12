# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Completion system.
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
bindkey -M menuselect '^[[Z' reverse-menu-complete

# History settings.
setopt HIST_IGNORE_DUPS
setopt APPEND_HISTORY
setopt HIST_REDUCE_BLANKS

# My Plugins
source /usr/share/doc/pkgfile/command-not-found.zsh
source $XDG_CONFIG_HOME/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
fpath=($XDG_CONFIG_HOME/zsh/plugins/zsh-completions/src $fpath)

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
__conda_setup="$('/home/matheus/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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

# Set terminal title to $USER@$HOST:$PWD and the cursor to beam.
precmd() { 
    echo -ne "\e]0;${USER}@${HOST}: ${PWD/#$HOME/~}\a";
    echo -ne '\e[5 q'
}
