# XDG paths
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Some environment variables.
export EDITOR="nvim"
export SYSTEMD_EDITOR="nvim"
export VISUAL="nvim"

# ZSH config directory.
export ZDOTDIR=$XDG_CONFIG_HOME/zsh

# ZSH history config.
export HISTFILE="$XDG_CACHE_HOME/zsh/.zhistory"
export HISTSIZE=1000000
export SAVEHIST=1000000

# Dev
export NPM_CONFIG_PREFIX=$XDG_CONFIG_HOME/npm/npm-global
export ASDF_DIR=$XDG_DATA_HOME/applications/cli/asdf
export GOPATH=$HOME/.local/bin/go
export PATH=$HOME/.local/bin:$NPM_CONFIG_PREFIX/bin:/home/matheus/.cargo/bin:$PATH

# ROS
if [[ $HOSTNAME == *"Nautilus"* ]]; then
    source /opt/ros/noetic/setup.zsh
elif [[ $HOSTNAME == *"Harpia"* ]]; then
    source /opt/ros/foxy/setup.zsh
fi
