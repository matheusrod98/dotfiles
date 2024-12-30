{ pkgs, ... }:

{
  home.packages = with pkgs; [
    papirus-icon-theme
    papirus-folders
  ];

  gtk.iconTheme = {
    name = "Papirus";
    package = pkgs.papirus-icon-theme;
  };
}
