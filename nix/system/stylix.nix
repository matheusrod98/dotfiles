{ pkgs, ... }:
{
  stylix.enable = true;
  stylix.image = ./../wallpapers/flower.jpg;
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine.yaml";
}
