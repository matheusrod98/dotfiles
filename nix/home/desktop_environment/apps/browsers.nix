{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    google-chrome
    inputs.zen-browser.packages."${system}".default
  ];
}
