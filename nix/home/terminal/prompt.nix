{ pkgs, ... }:

{
  programs.starship = {
    enable = true;
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
