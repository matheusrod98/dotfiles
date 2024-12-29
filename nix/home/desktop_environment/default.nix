{ pkgs, ... }:
{
  imports = [
    ./apps
    ./hyprland
    ./syncthing.nix
    ./../fonts.nix
    ./../mimeapps.nix
    ./../stylix.nix
  ];
}
