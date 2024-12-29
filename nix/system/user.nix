{ pkgs, ... }:

{
  users = {
    users.matheus = {
      isNormalUser = true;
      extraGroups = [
        "wheel"
        "networkmanager"
        "docker"
        "adbusers"
      ];
      shell = pkgs.zsh;
    };
  };
}
