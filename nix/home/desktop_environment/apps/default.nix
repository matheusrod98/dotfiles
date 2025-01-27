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
    skypeforlinux
    stremio
    obsidian
    openboard
    zathura
    imv
    obs-studio
    libreoffice
  ];
}
