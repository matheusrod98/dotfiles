{ pkgs, ... }:

{
  home.packages = with pkgs; [
    font-awesome
    nerd-fonts.symbols-only
    noto-fonts-cjk-sans
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
  ];
}
