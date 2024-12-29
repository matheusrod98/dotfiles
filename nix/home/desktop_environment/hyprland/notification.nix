{ pkgs, ... }:

{
  home.packages = with pkgs; [
    libnotify
  ];

  services.dunst = {
    enable = true;
    settings = {
      global = {
        width = 300;
        height = 500;
        origin = "top-right";
        offset = "4x4";
        notification_limit = 0;
        frame_width = 2;
        font = "Noto Sans 11";
        separator_color = "frame";
        corner_radius = 6;
        show_indicators = "yes";
        dmenu = "walker -d";
        browser = "xdg-open";
      };
    };
  };
}
