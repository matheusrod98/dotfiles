{ pkgs, config, ... }:
let
  homeDir = config.home.homeDirectory;
in

{
  xdg.enable = true;
  xdg.userDirs = {
    enable = true;
    createDirectories = true;
    download = "${homeDir}/Downloads";
    publicShare = "${homeDir}/Public";
  };
}
