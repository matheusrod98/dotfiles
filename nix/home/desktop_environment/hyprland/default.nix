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
    ./gtk.nix
    ./portal.nix
  ];

  home.packages = with pkgs; [
    satty
    brightnessctl
    libadwaita
    wtype
    udiskie
    xdotool
    networkmanagerapplet
    blueman
    wttrbar
    grim
  ];
}
