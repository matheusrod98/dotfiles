{ pkgs, ... }:

{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      cmd_duration = {
        disabled = true;
      };
      container = {
        disabled = true;
      };
    };
  };
}
