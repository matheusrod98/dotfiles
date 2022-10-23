# TODO
# - ssh key.
# - clone and install dotfiles.
# - powerlevel10k
# - packer.nvim
# - distroboxes
# - zsh-completions and zsh-fast-syntax-highliting
rpm-ostree install distrobox docker docker-compose gnome-tweaks kitty papirus-icon-theme zsh
rpm-ostree override remove firefox gnome-shell-extension-background-logo gnome-shell-extension-launch-new-instance gnome-shell-extension-common gnome-shell-extension-places-menu gnome-shell-extension-apps-menu gnome-classic-session

flatpak remote-delete fedora
flatpak remote-delete fedora-testing
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install com.belmoussaoui.Decoder com.belmoussaoui.Obfuscate com.brave.Browser com.discordapp.Discord com.github.ADBeveridge.Raider com.github.liferooter.textpieces com.github.maoschanz.drawing com.github.tchx84.Flatseal com.heroicgameslauncher.hgl com.mattjakeman.ExtensionManager com.obsproject.Studio com.rafaelmardojai.Blanket com.spotify.Client com.stremio.Stremio com.valvesoftware.Steam dev.geopjr.Collision fr.romainvigier.MetadataCleaner io.github.celluloid_player.Celluloid io.github.mimbrero.WhatsAppDesktop org.gimp.GIMP org.gnome.Calculator org.gnome.Characters org.gnome.Cheese org.gnome.Evince org.gnome.Extensions org.gnome.Logs org.gnome.NautilusPreviewer org.gnome.Solanum org.gnome.TextEditor org.gnome.Weather org.gnome.clocks org.gnome.eog org.gnome.font-viewer org.kde.kdenlive org.libreoffice.LibreOffice org.mozilla.firefox org.telegram.desktop

toolbox create
toolbox enter
sudo dnf install neovim git-lfs stow clang gcc nodejs npm ripgrep fd
sudo dnf upgrade -y --refresh
git-lfs install

sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit

git clone git@github.com:matheusrod98/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
mkdir -p ~/.cache/zsh
touch -p ~/.cache/zsh/.zhistory
mkdir -p ~/.config/npm/npm-global/bin
mkdir -p ~/.cargo/bin
mkdir -p ~/.local/share/zsh/plugins
cd ~/.local/share/zsh/

stow *
