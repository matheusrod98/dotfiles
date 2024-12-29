{ pkgs, ... }:
{
  home.packages = with pkgs; [
    playerctl
  ];
  services.mpris-proxy.enable = true;
}
