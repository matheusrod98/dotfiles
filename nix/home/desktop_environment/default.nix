{ pkgs, ... }:
{
  imports = [
    ./apps
    ./hyprland
    ./syncthing.nix
    ./../mimeapps.nix
    ./../stylix.nix
  ];
}
