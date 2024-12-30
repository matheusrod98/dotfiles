{ pkgs, ... }:
{
  imports = [
    ./browsers.nix
    ./media_player.nix
    ./system_monitor.nix
    ./rss.nix
  ];

  home.packages = with pkgs; [
    discord
    skypeforlinux
    stremio
    obsidian
    qbittorrent
    zathura
    pavucontrol
    bitwarden-desktop
    qalculate-gtk
    libqalculate
    imv
    obs-studio
    libreoffice
  ];
}
