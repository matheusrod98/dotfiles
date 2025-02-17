{ pkgs, ... }:
{
  stylix.enable = true;
  stylix.image = ./../wallpapers/mary-ray-6nTIsDdHVcc-unsplash.jpg;
  # stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/default-dark.yaml";
  stylix.base16Scheme = {
    base00 = "#161616";
    base01 = "#292828";
    base02 = "#3c3836";
    base03 = "#665c54";
    base04 = "#bdae93";
    base05 = "#d5c4a1";
    base06 = "#ebdbb2";
    base07 = "#fbf1c7";
    base08 = "#fb4934";
    base09 = "#fe8019";
    base0A = "#fabd2f";
    base0B = "#b8bb26";
    base0C = "#8ec07c";
    base0D = "#83a598";
    base0E = "#d3869b";
    base0F = "#d65d0e";
  };
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
