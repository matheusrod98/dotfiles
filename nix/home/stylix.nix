{ pkgs, ... }:
{
  stylix.enable = true;
  stylix.image = ./../wallpapers/flower.jpg;
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine.yaml";
  stylix.fonts = {
    monospace = {
      package = pkgs.jetbrains-mono;
      name = "JetBrains Mono";
    };
    sizes.terminal = 13;
  };
  stylix.cursor.size = 24;
  stylix.iconTheme = {
    enable = true;
    package = pkgs.papirus-icon-theme;
    dark = "Papirus Dark";
    light = "Papirus Light";
  };
}
