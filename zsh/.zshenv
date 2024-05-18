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
export PATH=$HOME/.local/bin:$NPM_CONFIG_PREFIX/bin:$HOME/.cargo/bin:$HOME/.local/bin/scripts/rofi:$PATH

# ROS
if [[ $HOSTNAME == "nautilus"* ]]; then
    source /opt/ros/noetic/setup.zsh
    source "$HOME"/Devel/Nautilus/Nautilus/catkin_ws/devel/setup.zsh
    source /usr/share/gazebo/setup.sh
elif [[ $HOSTNAME == "harpia"* ]]; then
    source /opt/ros/humble/setup.zsh
    source "$HOME"/Devel/Nautilus/Harpia/catkin_ws/install/setup.zsh

    # Ardupilot
    export PATH=$PATH:$HOME/Devel/Nautilus/Harpia/Micro-XRCE-DDS-Gen/scripts
    export PATH=$HOME/Devel/Nautilus/Harpia/catkin_ws/src/ardupilot/Tools/autotest:$PATH
    source $HOME/Devel/Nautilus/Harpia/catkin_ws/src/ardupilot/Tools/completion/completion.zsh
fi

# FZF
export FZF_DEFAULT_OPTS=" \
--color=bg+:#11111b,spinner:#f9e2af,hl:#f38ba8 \
--color=fg:#6c7086,header:#f38ba8,info:#89b4fa,pointer:#f9e2af \
--color=marker:#f9e2af,fg+:#cdd6f4,prompt:#89b4fa,hl+:#f38ba8"
