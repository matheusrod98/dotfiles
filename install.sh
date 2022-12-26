rpm-ostree install distrobox docker docker-compose bismuth kdeconnectd
rpm-ostree override remove firefox podman toolbox

flatpak remote-delete fedora
flatpak remote-delete fedora-testing
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install com.brave.Browser com.discordapp.Discord com.getpostman.Postman com.obsproject.Studio com.spotify.Client com.stremio.Stremio io.github.mimbrero.WhatsAppDesktop org.gimp.GIMP org.kde.haruna org.kde.kamoso org.kde.kclock org.kde.kdenlive org.kde.ktorrent org.libreoffice.LibreOffice org.mozilla.firefox org.telegram.desktop rest.insomnia.Insomnia

distrobox create -n Fedora -i registry.fedoraproject.org/fedora-toolbox:37 
distrobox enter Fedora
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf copr enable atim/lazygit -y
sudo dnf upgrade -y --refresh
sudo dnf install neovim git-lfs stow clang gcc nodejs npm ripgrep fd-find lazygit code docker docker-compose wl-clipboard tmux alacritty zsh
git-lfs install

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone git@github.com:matheusrod98/dotfiles.git ~/.dotfiles
mkdir -p ~/.cache/zsh
touch ~/.cache/zsh/.zhistory
mkdir -p ~/.config/npm/npm-global/bin
mkdir -p ~/.cargo/bin
mkdir -p ~/.local/share/zsh/plugins
cd ~/.local/share/zsh/plugins
git clone https://github.com/z-shell/F-Sy-H
cd ..
git clone git clone --depth=1 https://github.com/romkatv/powerlevel10k.git
cd ~/.dotfiles
stow *
