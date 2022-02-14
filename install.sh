# Configure repos.
## Install RPM Fusion.
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf groupupdate -y core
sudo dnf groupupdate -y multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
sudo dnf groupupdate -y sound-and-video

## Applications repos.
sudo rpm --import -y https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo -y https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import -y https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

sudo dnf config-manager --add-repo -y https://download.docker.com/linux/fedora/docker-ce.repo

## Install Flathub.
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

## Update System.
sudo dnf upgrade -y --refresh
flatpak update -y

# Install other Apps.
flatpak install -y com.belmoussaoui.Authenticator com.belmoussaoui.Obfuscate com.bitwarden.desktop com.discordapp.Discord com.github.liferooter.textpieces com.github.maoschanz.drawing com.github.reds.LogisimEvolution com.mattjakeman.ExtensionManager com.obsproject.Studio com.rafaelmardojai.Blanket com.spotify.Client com.todoist.Todoist de.haeckerfelix.Fragments dev.geopjr.Hashbrown fr.romainvigier.MetadataCleaner io.github.celluloid_player.Celluloid net.meshlab.MeshLab org.audacityteam.Audacity org.blender.Blender org.gimp.GIMP org.gnome.Calculator org.gnome.Characters org.gnome.Cheese org.gnome.Evince org.gnome.Logs org.gnome.Screenshot org.gnome.Solanum org.gnome.Weather org.gnome.clocks org.gnome.eog org.gnome.font-viewer org.gnome.gedit org.kde.kdenlive org.libreoffice.LibreOffice org.telegram.desktop org.wireshark.Wireshark us.zoom.Zoom

sudo dnf install -y code google-chrome-stable steam brave-browser

# Install CLI Software.
## Install Essential Packages.
sudo dnf install -y neovim npm nodejs gcc clang solidity clang-tools-extra tmux kitty zsh starship rg htop jetbrains-mono-fonts-all wl-copy python3-pip stow docker-ce docker-ce-cli containerd.io docker-compose curl sshfs

### Enable some applications.
sudo systemctl enable docker

## Solve EACCESS npm Bug.
mkdir -p $HOME/.config/npm/npm-global/bin
export NPM_CONFIG_PREFIX=$XDG_CONFIG_HOME/npm/npm-global
export PATH=~/.local/bin:$NPM_CONFIG_PREFIX/bin:$PATH

## Configure Neovim.
### Neovim Essential Packages.
python -m pip install pynvim
npm install -g neovim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
### Install Language Servers for Neovim.
pip install cmake-language-server
pip install pyright
npm install -g solidity-language-server
npm i -g bash-language-server
npm install -g dockerfile-language-server-nodejs
npm install -g vim-language-server

## Stow my Dotfiles.
stow git
stow tmux
stow nvim
stow kitty
stow zsh
stow starship

## Install neovim plugins and Tree-Sitter.
nvim --headless +PackerInstall +qa
nvim --headless +TSInstall all +qa

# Remove Unecessary Software.
sudo dnf remove -y gnome-music gnome-calculator gnome-characters cheese evince gnome-logs gnome-screenshot gnome-weather gnome-clocks eog gnome-font-viewer gedit libreoffice-core gnome-terminal

# Configure network.
sudo cp ./etc/resolved.conf /etc/systemd/resolved.conf
sudo systemctl enable systemd-networkd

# Open ports to allow gsconnect communication.
sudo firewall-cmd --zone=public --permanent --add-port=1714-1764/tcp
sudo firewall-cmd --zone=public --permanent --add-port=1714-1764/udp
