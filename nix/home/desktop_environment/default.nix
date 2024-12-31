{ pkgs, ... }:
{

  imports = [
    ./apps
    ./hyprland
    ./syncthing.nix
    ./../fonts.nix
    ./../mimeapps.nix
    ./../stylix.nix
    ./../directories.nix
    ./keyboard_launcher.nix
  ];
}
