{ ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      mouse = {
        hide_when_typing = true;
      };
      font = {
        size = 13;
      };
      cursor = {
        style = {
          shape = "Beam";
          blinking = "On";
        };
      };
    };
  };
}
