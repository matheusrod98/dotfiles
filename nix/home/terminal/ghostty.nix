{ ... }:

{
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true;
    clearDefaultKeybinds = true;
    settings = {
      font-size = 13;
      window-decoration = false;
      mouse-hide-while-typing = true;
      confirm-close-surface = false;
      gtk-single-instance = true;
      # clipboard-copy = false;
      keybind = [
        "ctrl+shift+c=copy_to_clipboard"
        "ctrl+shift+v=paste_from_clipboard"
      ];
    };
  };
}
