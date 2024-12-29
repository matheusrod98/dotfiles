{ pkgs, ... }:

{
  users.defaultUserShell = pkgs.zsh;
  programs.zsh.enable = true;
  environment.pathsToLink = [ "/share/zsh" ];
  environment.shells = with pkgs; [ zsh ];
}
