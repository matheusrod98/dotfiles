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
    stremio
    obsidian
    zathura
    imv
    obs-studio
    libreoffice-fresh
  ];
}
