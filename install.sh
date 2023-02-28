#!/bin/bash

sudo transactional-update pkg rm \
	gnome-shell-extension-desktop-icons \
	gnome-shell-classic \
	gnome-shell-extension-desktop-icons

sudo transactional-update pkg in \
	podman-compose \
	systemd-zram-service\
	zram-generator \
	systemd-network \
	syncthing

flatpak install \
    com.brave.Browser \
    com.discordapp.Discord \
    com.getpostman.Postman \
    com.github.ADBeveridge.Raider \
    com.github.liferooter.textpieces \
    com.github.maoschanz.drawing \
    com.github.tchx84.Flatseal \
    com.google.ChromeDev \
    com.heroicgameslauncher.hgl \
    com.hunterwittenborn.Celeste \
    com.mattjakeman.ExtensionManager \
    com.obsproject.Studio \
    com.rafaelmardojai.Blanket \
    com.raggesilver.BlackBox \
    com.skype.Client \
    com.stremio.Stremio \
    com.todoist.Todoist \
    com.usebottles.bottles \
    com.valvesoftware.Steam \
    io.github.celluloid_player.Celluloid \
    md.obsidian.Obsidian \
    org.gaphor.Gaphor \
    org.gimp.GIMP \
    org.gnome.Calculator \
    org.gnome.Solanum \
    org.gnome.TextEditor \
    org.gnome.Weather \
    org.gnome.clocks \
    org.gnome.eog \
    org.kde.kdenlive \
    org.libreoffice.LibreOffice \
    org.mozilla.firefox \
    us.zoom.Zoom

distrobox create -n arch -i docker.io/library/archlinux:latest
distrobox enter arch

mkdir -p ~/.cache/zsh
touch ~/.cache/zsh/.zhistory
mkdir -p ~/.config/npm/npm-global/bin
mkdir -p ~/.cargo/bin
mkdir -p ~/.local/share/zsh/plugins
cd ~/.local/share/zsh/plugins
cd ~/.dotfiles
stow zsh
zsh
cd

git clone https://github.com/z-shell/F-Sy-H
sudo pacman -Syu --noconfirm --needed base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
cd ..
rm -rf paru
paru -S --noconfirm \
    neovim git-lfs stow clang gcc nodejs lazygit \
    npm ripgrep fzf fd zoxide bat trash-cli \
    neofetch btop tmux wl-clipboard visual-studio-code-bin \
    fortune-mod mosh openssh starship jq tldr howdoi \
    imagemagick zsh lsd zip unzip mcfly asdf-vm aws-cli-v2 \
    newsboat lynx

git-lfs install

cd ~/.dotfiles
stow *
