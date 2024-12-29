{ pkgs, ... }:
{
  imports = [
    ./apps
    ./fonts.nix
    ./hyprland
    ./syncthing.nix
  ];
}
