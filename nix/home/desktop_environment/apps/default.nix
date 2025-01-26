{ pkgs, ... }:
{
  imports = [
    ./browsers.nix
    ./media_player.nix
    ./system_monitor.nix
    ./rss.nix
  ];

  home.packages = with pkgs; [
    slack
    discord
    todoist-electron
    thunderbird-latest
    skypeforlinux
    stremio
    obsidian
    zathura
    bitwarden-desktop
    libqalculate
    imv
    obs-studio
    libreoffice
  ];
}
