{ pkgs, ... }:

{
  programs.walker = {
    enable = false;
    runAsService = true;
  };
}
