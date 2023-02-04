#!/bin/bash

rpm-ostree override remove firefox firefox-langpack toolbox
rpm-ostree install podman-compose syncthing distrobox

flatpak remote-delete fedora
flatpak remote-delete fedora-testing
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install com.authy.Authy com.brave.Browser com.discordapp.Discord com.getpostman.Postman com.github.ADBeveridge.Raider com.github.liferooter.textpieces com.github.maoschanz.drawing com.github.tchx84.Flatseal com.heroicgameslauncher.hgl com.mattjakeman.ExtensionManager com.obsproject.Studio com.rafaelmardojai.Blanket com.skype.Client com.spotify.Client com.stremio.Stremio com.usebottles.bottles com.valvesoftware.Steam de.haeckerfelix.Fragments io.github.celluloid_player.Celluloid io.github.lainsce.Khronos nl.hjdskes.gcolor3 org.gaphor.Gaphor org.gimp.GIMP org.gnome.Calculator org.gnome.Characters org.gnome.Cheese org.gnome.Evince org.gnome.Extensions org.gnome.Logs org.gnome.NautilusPreviewer org.gnome.Solanum org.gnome.TextEditor org.gnome.clocks org.gnome.eog org.gnome.font-viewer org.kde.kdenlive org.libreoffice.LibreOffice org.mozilla.firefox org.telegram.desktop rest.insomnia.Insomnia us.zoom.Zoom

distrobox create -n arch -i docker.io/library/archlinux:latest
distrobox enter arch
sudo pacman -Syu --noconfirm --needed --base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
cd ..
rm -rf paru
sudo paru -S --noconfirm neovim git-lfs stow clang gcc nodejs npm ripgrep fd kitty zsh trash-cli neofetch htop cmatrix tmux wl-clipboard visual-studio-code-bin fortune-mod cowsay lolcat openssh
git-lfs install

git clone git@github.com:matheusrod98/dotfiles.git ~/.dotfiles
mkdir -p ~/.cache/zsh
touch ~/.cache/zsh/.zhistory
mkdir -p ~/.config/npm/npm-global/bin
mkdir -p ~/.cargo/bin
mkdir -p ~/.local/share/zsh/plugins
cd ~/.local/share/zsh/plugins
git clone https://github.com/z-shell/F-Sy-H
curl -sS https://starship.rs/install.sh | sh
cd ~/.dotfiles
stow *
