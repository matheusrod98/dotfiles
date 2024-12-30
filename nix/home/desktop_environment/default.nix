{ pkgs, ... }:
{

  imports = [
    ./apps
    ./hyprland
    ./syncthing.nix
    ./../fonts.nix
    ./../mimeapps.nix
    ./../stylix.nix
    ./keyboard_launcher.nix
  ];
}
