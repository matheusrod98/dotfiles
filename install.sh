#!/bin/bash

rpm-ostree update
rpm-ostree override remove firefox firefox-langpacks toolbox
rpm-ostree install syncthing openssl distrobox alacritty

flatpak install --user \
    cc.arduino.IDE2 \
    com.authy.Authy \
    com.brave.Browser \
    com.discordapp.Discord \
    com.getpostman.Postman \
    com.github.maoschanz.drawing \
    com.github.tchx84.Flatseal \
    com.heroicgameslauncher.hgl \
    com.logseq.Logseq \
    com.mattjakeman.ExtensionManager \
    com.obsproject.Studio \
    com.rafaelmardojai.Blanket \
    com.skype.Client \
    com.stremio.Stremio \
    com.valvesoftware.Steam \
    io.github.celluloid_player.Celluloid \
    me.iepure.devtoolbox \
    org.gimp.GIMP \
    org.gnome.Calculator \
    org.gnome.Loupe \
    org.gnome.Snapshot \
    org.gnome.Solanum \
    org.gnome.TextEditor \
    org.gtk.Gtk3theme.adw-gtk3 \
    org.gtk.Gtk3theme.adw-gtk3-dark \
    org.kde.kdenlive \
    org.onlyoffice.desktopeditors \
    org.telegram.desktop \

distrobox create -n fedora -i registry.fedoraproject.org/fedora-toolbox:38
distrobox enter fedora
mkdir -p $XDG_CACHE_HOME/zsh
touch $XDG_CACHE_HOME/zsh/.zhistory
mkdir -p $XDG_CONFIG_HOME/npm/npm-global/bin
mkdir -p $HOME/.cargo/bin
mkdir -p $XDG_DATA_HOME/zsh/plugins

sudo dnf install cargo cmake neovim zsh wl-clipboard zip unzip curl npm stow git-lfs clang gcc btop neofetch jq python3-pip
sudo cargo install zoxide bat starship ripgrep fd-find lsd zellij trashy tealdeer skim rtx-cli --locked --root /
git clone https://github.com/z-shell/F-Sy-H $XDG_DATA_HOME/plugins/F-Sy-H

cd $HOME/.dotfiles
stow alacritty tmux rtx git zsh starship nvim
