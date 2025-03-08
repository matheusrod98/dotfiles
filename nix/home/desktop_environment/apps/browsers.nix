{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    google-chrome
    brave
    inputs.zen-browser.packages."${system}".default
  ];
}
