{ pkgs, ... }:

{
  home.packages = with pkgs; [
    font-awesome
    nerd-fonts.symbols-only
  ];
}
