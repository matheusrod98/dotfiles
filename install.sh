#!/bin/bash

sudo transactional-update pkg in \
	podman-compose \
	systemd-zram-service\
	zram-generator \
	systemd-network \
	syncthing \
    kitty

flatpak install \
    cc.arduino.IDE2 \
    com.authy.Authy \
    com.belmoussaoui.Authenticator \
    com.brave.Browser \
    com.discordapp.Discord \
    com.getpostman.Postman \
    com.github.alexkdeveloper.desktop-files-creator \
    com.github.finefindus.eyedropper \
    com.github.maoschanz.drawing \
    com.github.tchx84.Flatseal \
    com.google.Chrome \
    com.heroicgameslauncher.hgl \
    com.jgraph.drawio.desktop \
    com.logseq.Logseq \
    com.mattjakeman.ExtensionManager \
    com.microsoft.Edge \
    com.obsproject.Studio \
    com.rafaelmardojai.Blanket \
    com.skype.Client \
    com.spotify.Client \
    com.stremio.Stremio \
    com.usebottles.bottles \
    com.valvesoftware.Steam \
    io.github.celluloid_player.Celluloid \
    me.iepure.devtoolbox \
    org.gimp.GIMP \
    org.gnome.Calculator \
    org.gnome.Loupe \
    org.gnome.Snapshot \
    org.gnome.Solanum \
    org.gnome.TextEditor \
    org.gnome.Weather \
    org.gnome.clocks \
    org.gnome.meld \
    org.gtk.Gtk3theme.adw-gtk3 \
    org.gtk.Gtk3theme.adw-gtk3-dark \
    org.kde.kdenlive \
    org.libreoffice.LibreOffice \
    org.mozilla.firefox \
    org.onlyoffice.desktopeditors \
    org.telegram.desktop \
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
    universal-android-debloater-bin

git-lfs install

cd ~/.dotfiles
stow *
