{ pkgs, ... }:
{
  imports = [
    ./blue_light_filter.nix
    ./hyprland.nix
    ./idle.nix
    ./lockscreen.nix
    ./mpris.nix
    ./notification.nix
    ./statusbar.nix
    ./wallpaper.nix
    ./udiskie.nix
  ];

  home.packages = with pkgs; [
    satty
    brightnessctl
    libadwaita
    wtype
    gtk4
    udiskie
    xdotool
    networkmanagerapplet
    blueman
    wttrbar
    grim
    walker
  ];
}
