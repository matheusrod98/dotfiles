{ ... }:

{
  programs.ghostty = {
    enable = true;
    settings = {
      font-size = 14;
      window-decoration = false;
      mouse-hide-while-typing = true;
      confirm-close-surface = false;
      gtk-single-instance = true;
    };
  };
}
