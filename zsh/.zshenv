# XDG paths
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Some environment variables.
export EDITOR="nvim"
export VISUAL="nvim"
export SYSTEMD_EDITOR="nvim"

# Pager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT='-c'
export LESSUTFCHARDEF=E000-F8FF:p,F0000-FFFFD:p,100000-10FFFD:p

# ZSH config directory.
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# ZSH history config.
export HISTFILE="$XDG_CACHE_HOME/zsh/zhistory"
export HISTSIZE=1000000
export SAVEHIST=1000000

# Dev
export NPM_CONFIG_PREFIX=$XDG_CONFIG_HOME/npm/npm-global
export GOPATH=$HOME/.local/bin/go
export PATH=$HOME/.local/bin:$NPM_CONFIG_PREFIX/bin:$HOME/.cargo/bin:$HOME/.local/bin/scripts/fzf/:$PATH
