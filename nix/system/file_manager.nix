{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
    thunar-volman
  ];
  programs.xfconf.enable = true;
  programs.thunar.enable = true;
}
