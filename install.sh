#!/bin/bash

# Setup paru
cd Downloads
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru

# Install packages
paru -S \
adobe-source-code-pro-fonts \
adobe-source-han-sans-otc-fonts \
adobe-source-han-serif-otc-fonts \
adobe-source-sans-fonts \
android-tools \
bat \
brightnessctl \
btop \
clang \
cliphist \
curl \
distrobox \
docker \
docker-compose \
dunst \
fd \
ffmpeg \
ffmpegthumbnailer \
firewalld \
flatpak \
flatpak-builder \
fontconfig \
gammastep \
gcc \
geoclue \
git \
gnome-keyring \
gnu-free-fonts \
gnupg \
go \
gopls \
greetd \
greetd-tuigreet \
grim \
groff \
gvfs \
hypridle \
hyprland \
hyprlang \
hyprlock \
hyprpaper \
hyprpicker \
imagemagick \
inter-font \
jq \
kitty \
lm_sensors \
lsd \
make \
man-db \
man-pages \
marksman \
mise-bin \
mpv \
neofetch \
neovim \
net-tools \
network-manager-applet \
nm-connection-editor \
nmap \
noto-fonts \
noto-fonts-cjk \
noto-fonts-emoji \
noto-fonts-extra \
openssh \
otf-crimson \
otf-font-awesome \
otf-latin-modern \
otf-latinmodern-math \
papirus-icon-theme \
pinentry \
polkit \
polkit-gnome \
power-profiles-daemon \
poweralertd \
pulsemixer \
qt5ct \
qt6ct \
reflector \
restic \
ripgrep \
rofi \
rofi-calc \
rofi-emoji \
satty-bin \
sed \
slurp \
starship \
stow \
stylua \
syncthing \
terminus-font \
texlive-basic \
thunar \
timg \
trash-cli \
ttc-iosevka \
ttf-anonymouspro-nerd \
ttf-bitstream-vera \
ttf-croscore \
ttf-dejavu \
ttf-droid \
ttf-fira-sans \
ttf-gentium-plus \
ttf-hannom \
ttf-junicode \
ttf-khmer \
ttf-nerd-fonts-symbols-common \
ttf-nerd-fonts-symbols-mono \
ttf-opensans \
ttf-tibetan-machine \
udiskie \
unicode-emoji \
unrar \
unzip \
upower \
visual-studio-code-bin \
waybar \
wl-clipboard \
wttrbar \
xdg-desktop-portal \
xdg-desktop-portal-gtk \
xdg-desktop-portal-hyprland \
xdg-utils \
zathura \
zoxide \
zram-generator \
zsh

flatpak install -y \
    com.brave.Browser \
    com.discordapp.Discord \
    com.getpostman.Postman \
    com.obsproject.Studio \
    com.skype.Client \
    com.spotify.Client \
    md.obsidian.Obsidian \
    org.gimp.GIMP \
    org.kde.kdenlive \
    org.kde.krita \
    org.libreoffice.LibreOffice \
    org.mozilla.firefox

distrobox create -n fedora -i registry.fedoraproject.org/fedora-toolbox:38
distrobox enter fedora
mkdir -p $XDG_CACHE_HOME/zsh
touch $XDG_CACHE_HOME/zsh/.zhistory
mkdir -p $XDG_CONFIG_HOME/npm/npm-global/bin
mkdir -p $HOME/.cargo/bin
mkdir -p $XDG_DATA_HOME/zsh/plugins

sudo dnf install cargo cmake neovim zsh wl-clipboard zip unzip curl npm stow git-lfs clang gcc btop neofetch jq python3-pip wl-clipboard
sudo cargo install zoxide bat starship ripgrep fd-find lsd zellij trashy tealdeer skim rtx-cli --locked --root /
git clone https://github.com/z-shell/F-Sy-H $XDG_DATA_HOME/plugins/F-Sy-H

cd $HOME/.dotfiles
stow alacritty tmux rtx git zsh starship nvim

sudo systemctl enable rfkill-unblock@all

# Development environment
## LSPs
npm i -g @microsoft/compose-language-service \
         @tailwindcss/language-server \
         dockerfile-language-server-nodejs \
         pyright \
         typescript-language-server \
         yaml-language-server

paru -S lua-language-server \
        gopls \
        clang

## Linters and formatters
paru -S stylua
