{ pkgs, ... }:
{
  programs.walker = {
    enable = true;
    runAsService = true;
  };
}
