{ pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "rose-pine";
      font-size = 14;
      window-decoration = false;
      mouse-hide-while-typing = true;
      confirm-close-surface = false;
    };
  };
}
