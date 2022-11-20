# TODO
# - ssh key.
# - clone and install dotfiles.
# - powerlevel10k
# - packer.nvim
# - distroboxes
# - zsh-completions and zsh-fast-syntax-highliting

rpm-ostree install distrobox docker docker-compose
rpm-ostree override remove firefox podman toolbox

flatpak remote-delete fedora
flatpak remote-delete fedora-testing
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install com.brave.Browser com.discordapp.Discord com.heroicgameslauncher.hgl com.obsproject.Studio com.spotify.Client com.stremio.Stremio com.valvesoftware.Steam io.github.mimbrero.WhatsAppDesktop org.freedesktop.LinuxAudio.Plugins.TAP org.freedesktop.LinuxAudio.Plugins.swh org.freedesktop.Platform org.freedesktop.Platform org.freedesktop.Platform.Compat.i386 org.freedesktop.Platform.GL.default org.freedesktop.Platform.GL.default org.freedesktop.Platform.GL32.default org.freedesktop.Platform.ffmpeg-full org.freedesktop.Platform.openh264 org.freedesktop.Platform.openh264 org.gimp.GIMP org.gnome.Platform org.gtk.Gtk3theme.Breeze org.kde.Platform org.kde.Platform org.kde.haruna org.kde.kdenlive org.libreoffice.LibreOffice org.mozilla.firefox org.telegram.desktop org.telegram.desktop.webview

toolbox create
toolbox enter
sudo dnf copr enable atim/lazygit -y
sudo dnf upgrade -y --refresh
sudo dnf install neovim git-lfs stow clang gcc nodejs npm ripgrep finder-fd lazygit code docker docker-compose wl-clipboard
git-lfs install

git clone git@github.com:matheusrod98/dotfiles.git ~/.dotfiles
mkdir -p ~/.cache/zsh
touch ~/.cache/zsh/.zhistory
mkdir -p ~/.config/npm/npm-global/bin
mkdir -p ~/.cargo/bin
mkdir -p ~/.local/share/zsh/plugins
cd ~/.local/share/zsh/

stow *
