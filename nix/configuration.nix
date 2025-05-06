{
  pkgs,
  config,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    ./system/appimage.nix
    ./system/bluetooth.nix
    ./system/bootloader.nix
    # ./system/company_policy.nix
    ./system/display_manager.nix
    ./system/docker.nix
    ./system/environment_variables.nix
    ./system/experimental_features.nix
    ./system/firmware.nix
    ./system/fontconfig.nix
    ./system/gc.nix
    ./system/geolocalization.nix
    ./system/graphics.nix
    ./system/hyprland.nix
    ./system/input.nix
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
    ./system/stylix.nix
    ./system/gnupg.nix
    ./system/kernel.nix
  ];

  environment.systemPackages = [
    pkgs.gcc
    pkgs.clang
  ];

  sops = {
    defaultSopsFile = ./secrets.yaml;
    defaultSopsFormat = "yaml";
    age.keyFile = "/home/matheus/.config/sops/age/keys.txt";
  };

  sops.secrets = {
    CLAUDE_API_KEY = {
      owner = config.users.users.matheus.name;
    };
    GROQ_API_KEY = {
      owner = config.users.users.matheus.name;
    };
  };

  system.stateVersion = "24.05";
}
