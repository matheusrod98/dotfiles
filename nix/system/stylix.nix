{ pkgs, ... }:
{
  stylix.enable = true;
  stylix.image = ./../wallpapers/mary-ray-6nTIsDdHVcc-unsplash.jpg;
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/default-dark.yaml";
  stylix.fonts = {
    monospace = {
      package = pkgs.jetbrains-mono;
      name = "JetBrains Mono";
    };
    serif = {
      name = "Noto Serif";
      package = pkgs.noto-fonts;
    };
    sansSerif = {
      name = "Noto Sans";
      package = pkgs.noto-fonts;
    };
    sizes = {
      terminal = 13;
      desktop = 8;
      popups = 11;
    };
  };
}
