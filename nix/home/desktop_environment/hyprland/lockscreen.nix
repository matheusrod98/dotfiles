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
          position = "0, -40";
          halign = "center";
          valign = "center";
        }
        {
          text = "cmd[update:1000] echo $(date +'%H:%M')";
          position = "0, -300";
          halign = "center";
          valign = "top";
        }
      ];
    };
  };
}
