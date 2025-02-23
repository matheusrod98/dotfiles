{ ... }:

{
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      font-size = 13;
      window-decoration = false;
      mouse-hide-while-typing = true;
      confirm-close-surface = false;
      gtk-single-instance = true;
      # clipboard-copy = false;
    };
  };
}
