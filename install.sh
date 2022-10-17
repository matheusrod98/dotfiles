# TODO
# - ssh key.
# - clone and install dotfiles.
# - powerlevel10k
# - packer.nvim
# - distroboxes
# - zsh-completions and zsh-fast-syntax-highliting
rpm-ostree install distrobox git-lfs gnome-tweaks kitty papirus-icon-theme stow zsh
rpm-ostree override remove firefox gnome-shell-extension-background-logo gnome-shell-extension-launch-new-instance gnome-shell-extension-common gnome-shell-extension-places-menu gnome-shell-extension-apps-menu gnome-classic-session

flatpak remote-delete fedora
flatpak remote-delte fedora-testing
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install com.belmoussaoui.Decoder
com.belmoussaoui.Obfuscate
com.brave.Browser
com.discordapp.Discord
com.github.ADBeveridge.Raider
com.github.liferooter.textpieces
com.github.maoschanz.drawing
com.github.tchx84.Flatseal
com.heroicgameslauncher.hgl
com.mattjakeman.ExtensionManager
com.obsproject.Studio
com.rafaelmardojai.Blanket
com.spotify.Client
com.stremio.Stremio
com.valvesoftware.Steam
dev.geopjr.Collision
fr.romainvigier.MetadataCleaner
io.github.celluloid_player.Celluloid
io.github.mimbrero.WhatsAppDesktop
org.gimp.GIMP
org.gnome.Calculator
org.gnome.Characters
org.gnome.Cheese
org.gnome.Evince
org.gnome.Extensions
org.gnome.Logs
org.gnome.NautilusPreviewer
org.gnome.Solanum
org.gnome.TextEditor
org.gnome.Weather
org.gnome.clocks
org.gnome.eog
org.gnome.font-viewer
org.kde.kdenlive
org.libreoffice.LibreOffice
org.mozilla.firefox
org.telegram.desktop
