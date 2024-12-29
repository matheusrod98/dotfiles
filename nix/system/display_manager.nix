{ pkgs, ... }:

{
  programs.regreet = {
    enable = true;
    settings = {
      commands = {
        reboot = "systemctl reboot";
        poweroff = "systemctl poweroff";
      };
      default_session = {
        command = "Hyprland";
        user = "matheus";
      };
    };
  };

  security.pam.services.greetd.enableGnomeKeyring = true;
}
