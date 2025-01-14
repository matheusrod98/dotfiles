{ pkgs, ... }:

{
  boot.loader.systemd-boot.configurationLimit = 20;
  nix = {
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
    };
  };
}
