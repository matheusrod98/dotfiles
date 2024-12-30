{ pkgs, ... }:
{
  stylix.enable = true;
  stylix.cursor.size = 24;
  stylix.iconTheme = {
    enable = true;
    package = pkgs.papirus-icon-theme;
    dark = "Papirus Dark";
    light = "Papirus Light";
  };
  stylix.targets = {
    neovim.enable = false;
  };
}
