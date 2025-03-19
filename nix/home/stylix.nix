{ pkgs, ... }:
{
  stylix.enable = true;
  stylix.iconTheme = {
    enable = false;
    package = pkgs.papirus-icon-theme;
    dark = "Papirus Dark";
    light = "Papirus Light";
  };
  stylix.targets = {
    neovim.enable = false;
  };
}
