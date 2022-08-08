# XDG paths
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Some environment variables.
export EDITOR="nvim"
export SYSTEMD_EDITOR="nvim"
export VISUAL="nvim"
export NPM_CONFIG_PREFIX=$XDG_CONFIG_HOME/npm/npm-global
export PATH=~/.local/bin:$NPM_CONFIG_PREFIX/bin:/home/matheus/.cargo/bin:$PATH

# ZSH config directory.
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# ZSH history config.
export HISTFILE="$XDG_CACHE_HOME/zsh/.zhistory"
export HISTSIZE=1000000
export SAVEHIST=1000000
