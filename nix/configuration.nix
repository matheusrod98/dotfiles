{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    ./system/appimage.nix
    ./system/bluetooth.nix
    ./system/bootloader.nix
    ./system/company_policy.nix
    ./system/display_manager.nix
    ./system/docker.nix
    ./system/environment_variables.nix
    ./system/experimental_features.nix
    ./system/file_manager.nix
    ./system/firmware.nix
    ./system/fontconfig.nix
    ./system/gc.nix
    ./system/geolocalization.nix
    ./system/graphics.nix
    ./system/hyprland.nix
    ./system/input.nix
    ./system/kernel.nix
    ./system/keyring.nix
    ./system/networking.nix
    ./system/nixpkgs.nix
    ./system/pipewire.nix
    ./system/polkit.nix
    ./system/power.nix
    ./system/printing.nix
    ./system/shell.nix
    ./system/ssh.nix
    ./system/system_packages.nix
    ./system/timezone.nix
    ./system/user.nix
    ./system/zram.nix
  ];

  system.stateVersion = "24.05";
}