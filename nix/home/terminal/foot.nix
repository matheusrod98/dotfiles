{ pkgs, ... }:

{
  programs.foot = {
    enable = true;
    settings = {
      mouse = {
        hide-when-typing = "yes";
      };
      cursor = {
        style = "beam";
        blink = "yes";
      };
    };
  };
}
