# XDG paths
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Some environment variables.
export PATH=~/.local/bin:$PATH
export EDITOR="nano"
export VISUAL="nvim"
export TERM=xterm-256color
export NPM_CONFIG_PREFIX=$XDG_CONFIG_HOME/npm/npm-global

# Needed for Quartus II.
export QSYS_ROOTDIR="/home/matheus/intelFPGA_lite/20.1/quartus/sopc_builder/bin"

# ZSH config directory.
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# ZSH history config.
export HISTFILE="$XDG_CACHE_HOME/zsh/.zhistory"
export HISTSIZE=1000000
export SAVEHIST=1000000
