{ ... }:

{
  programs.hyprlock = {
    enable = true;
    settings = {
      background = {
        blur_passes = 3;
      };
      input-field = {
        position = "0, -120";
        halign = "center";
        valign = "center";
        fade_on_empty = "false";
        size = "250, 60";
      };
      label = [
        {
          text = "Hi there, $USER";
          font_size = 25;
          position = "0, -40";
          halign = "center";
          valign = "center";
        }
        {
          text = "cmd[update:1000] echo $(date +'%H:%M')";
          font_size = 120;
          position = "0, -300";
          halign = "center";
          valign = "top";
        }
      ];
    };
  };
}
