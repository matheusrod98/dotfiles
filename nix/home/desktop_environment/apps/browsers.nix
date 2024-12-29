{ pkgs, ... }:

{
  home.packages = with pkgs; [
    google-chrome
    firefox-bin
    brave
  ];
}
